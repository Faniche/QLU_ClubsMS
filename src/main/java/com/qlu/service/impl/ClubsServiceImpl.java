package com.qlu.service.impl;

import com.qlu.dao.LoginDao;
import com.qlu.entity.Clubs;
import com.qlu.dao.ClubsDao;
import com.qlu.model.ClubsModel;
import com.qlu.service.ClubsService;
import com.qlu.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (Clubs)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("clubsService")
public class ClubsServiceImpl implements ClubsService {
    @Resource
    private ClubsDao clubsDao;

    @Resource
    private LoginDao loginDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Clubs queryById(Integer id) {
        return this.clubsDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Clubs> queryAllByLimit(int offset, int limit) {
        return this.clubsDao.queryAllByLimit(offset, limit);
    }

    @Override
    public List<Clubs> queryAll(Clubs clubs) {
        return this.clubsDao.queryAll(clubs);
    }

    /**
     * 新增数据
     *
     * @param clubs 实例对象
     * @return 实例对象
     */
    @Override
    public Clubs insert(Clubs clubs) {
        this.clubsDao.insert(clubs);
        return clubs;
    }

    /**
     * 修改数据
     *
     * @param clubs 实例对象
     * @return 实例对象
     */
    @Override
    public Clubs update(Clubs clubs) {
        this.clubsDao.update(clubs);
        return this.queryById(clubs.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.clubsDao.deleteById(id) > 0;
    }


    /**
     * 查询所有数据

     * @return 对象列表
     */
    @Override
    public List<ClubsModel> findModel() {
        List<Clubs> clubs = this.clubsDao.findAll();
        List<ClubsModel> models = new ArrayList<>();
        for (Clubs clubs1 : clubs){
            ClubsModel clubsModel = new ClubsModel();
            clubsModel.setClubs(clubs1);
            clubsModel.setLeader(this.loginDao.queryById(clubs1.getLeaderId()).getName());
            if (clubs1.getStatus() == 1) {
                clubsModel.setStatus("存在");
            } else {
                clubsModel.setStatus("已解散或正在申请中");
            }
            models.add(clubsModel);
        }
        return models;
    }

    /**
     * 查询优秀社团八个
     * @return
     */
   @Override
    public  List<Clubs> queryAllClubs(){
        return this.clubsDao.queryAllClubs();
    }

    @Override
    public List<Clubs> findAll() {
        return this.clubsDao.findAll();
    }

}