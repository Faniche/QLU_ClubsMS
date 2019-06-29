package com.qlu.service.impl;

import com.qlu.dao.*;
import com.qlu.entity.*;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (Apply)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("applyService")
public class ApplyServiceImpl implements ApplyService {
    @Resource
    private ApplyDao applyDao;

    @Resource
    private ApplytypeDao applytypeDao;

    @Resource
    private LoginDao loginDao;

    @Resource
    private ClubsDao clubsDao;

    @Resource
    private ActivityDao activityDao;

    @Resource
    private MemberDao memberDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Apply queryById(Integer id) {
        return this.applyDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Apply> queryAllByLimit(int offset, int limit) {
        return this.applyDao.queryAllByLimit(offset, limit);
    }

    public List<ApplyModel> queryAllByLoginId(Integer id, Role role){
        List<ApplyModel> applyModels = new ArrayList<>();
        List<Apply> applyList = new ArrayList<>();
        // 1. 超级管理员：创建社团，解散社团，活动申请
        if (role.getId() == 1) {
            // 查出创建社团(1)，解散社团(2)，活动(5)的申请
            applyList = this.applyDao.queryByAdmin();
        }
        // 2. 社长：解散(2)，活动(5)，创建社团(1)，入团申请(3)，退团申请(4)
        // 所有与管理的社团  有关的 所有申请
        if (role.getId() == 2) {
            Clubs clubs = new Clubs();
            clubs.setLeaderId(id);
            // 找到管理的社团
            List<Clubs> clubsList = clubsDao.queryAll(clubs);
            for (Clubs clubs1 : clubsList){
                // 遍历所有社团，找到每一个社团的所有申请
                List<Apply> temp = this.applyDao.queryByClubLeader(clubs1.getId());
                // 将所有管理的社团的所有申请加到applyList中。
                for (Apply apply : temp) {
                    applyList.add(apply);
                }
            }
        }
        // 3. 学生：创建社团(1)，入团申请(3)，退团申请(4)      发起者是学生本人，
        if (role.getId() == 2 || role.getId() == 3) {
            List<Apply> temp = this.applyDao.queryByStudent(id);
            for (Apply apply : temp) {
                applyList.add(apply);
            }
        }
        applyModels = this.chengeToModel(applyList);
        return applyModels;
    }

    private List<ApplyModel> chengeToModel(List<Apply> applyList) {
        List<ApplyModel> applyModels = new ArrayList<>();
        for (Apply apply : applyList) {
            ApplyModel applyModel = new ApplyModel();
            applyModel.setApply(apply);
            applyModel.setProposer(loginDao.queryById(apply.getProposerid()).getName());
            applyModel.setApplyType(applytypeDao.queryById(apply.getType()).getType());
            switch (apply.getStatus()) {
                case 0:
                    applyModel.setStatusStr("待审核");
                    break;
                case 1:
                    applyModel.setStatusStr("已通过");
                    break;
                case 2:
                    applyModel.setStatusStr("被拒绝");
                    break;
            }
            applyModel.setClubs(clubsDao.queryById(apply.getClubid()));
            // 创建社团的申请，申请内容为社团描述
            if (apply.getType() == 1){
                applyModel.setContent(clubsDao.queryById(apply.getClubid()).getDescript());
            }
            // 活动申请，申请内容为活动主题
            if (apply.getType() == 5) {
                applyModel.setContent(activityDao.queryById(apply.getActivityId()).getTopic());
                applyModel.setActivity(activityDao.queryById(apply.getActivityId()));
            }
            applyModels.add(applyModel);
        }
        return applyModels;
    }

    /**
     * 新增数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    @Override
    public Apply insert(Apply apply) {
        this.applyDao.insert(apply);
        return apply;
    }

    /**
     * 修改数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    @Override
    public Apply update(Apply apply) {
        this.applyDao.update(apply);
        return this.queryById(apply.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.applyDao.deleteById(id) > 0;
    }
}