package com.qlu.service.impl;

import com.qlu.dao.LoginDao;
import com.qlu.entity.Announce;
import com.qlu.dao.AnnounceDao;
import com.qlu.model.AnnounceModel;
import com.qlu.service.AnnounceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (Announce)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("announceService")
public class AnnounceServiceImpl implements AnnounceService {
    @Resource
    private AnnounceDao announceDao;

    @Resource
    private LoginDao loginDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Announce queryById(Integer id) {
        return this.announceDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Announce> queryAllByLimit(int offset, int limit) {
        return this.announceDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param announce 实例对象
     * @return 实例对象
     */
    @Override
    public Announce insert(Announce announce) {
        this.announceDao.insert(announce);
        return announce;
    }

    /**
     * 修改数据
     *
     * @param announce 实例对象
     * @return 实例对象
     */
    @Override
    public Announce update(Announce announce) {
        this.announceDao.update(announce);
        return this.queryById(announce.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.announceDao.deleteById(id) > 0;
    }

    @Override
    public List<AnnounceModel> findAll() {
        List<Announce> announceList = this.announceDao.findAll();
        List<AnnounceModel> announceModelList = new ArrayList<>();
        for (Announce announce : announceList){
            AnnounceModel model = new AnnounceModel();
            model.setAnnounce(announce);
            model.setAuthor(this.loginDao.queryById(announce.getId()).getName());
            announceModelList.add(model);
        }
        return announceModelList;
    }
}