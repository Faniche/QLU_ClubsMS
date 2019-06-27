package com.qlu.service.impl;

import com.qlu.dao.ApplyDao;
import com.qlu.dao.ApplytypeDao;
import com.qlu.dao.LoginDao;
import com.qlu.entity.Apply;
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

    public List<ApplyModel> queryAllByLoginId(Integer id){
        List<Apply> applyList = this.applyDao.queryAllByLoginId(id);
        List<ApplyModel> applyModels = new ArrayList<>();
        for (Apply apply : applyList){
            ApplyModel applyModel = new ApplyModel();
            applyModel.setId(apply.getId());
            applyModel.setType(apply.getType());
            applyModel.setProposerid(apply.getProposerid());
            if (apply.getClubid() != null) {
                applyModel.setClubid(apply.getClubid());
            }
            applyModel.setDate(apply.getDate());
            applyModel.setStatus(apply.getStatus());
            applyModel.setProposer(loginDao.queryById(apply.getProposerid()).getName());
            applyModel.setApplyType(applytypeDao.queryById(apply.getId()).getType());
            switch (apply.getStatus()){
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