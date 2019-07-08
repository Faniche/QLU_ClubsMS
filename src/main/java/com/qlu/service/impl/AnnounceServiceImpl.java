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

    @Override
    public Announce queryById(Integer id) {
        return this.announceDao.queryById(id);
    }

    @Override
    public List<Announce> queryAllByLimit(int offset, int limit) {
        return this.announceDao.queryAllByLimit(offset, limit);
    }

    @Override
    public Announce insert(Announce announce) {
        this.announceDao.insert(announce);
        return announce;
    }

    @Override
    public Announce update(Announce announce) {
        this.announceDao.update(announce);
        return this.queryById(announce.getId());
    }

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
            model.setAuthor(this.loginDao.queryById(announce.getAuthorid()).getName());
            announceModelList.add(model);
        }
        return announceModelList;
    }
}