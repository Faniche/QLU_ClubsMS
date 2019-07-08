package com.qlu.service.impl;

import com.qlu.entity.Activity;
import com.qlu.dao.ActivityDao;
import com.qlu.service.ActivityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Activity)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:04
 */
@Service("activityService")
public class ActivityServiceImpl implements ActivityService {
    @Resource
    private ActivityDao activityDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Activity queryById(Integer id) {
        return this.activityDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Activity> queryAllByLimit(int offset, int limit) {
        return this.activityDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    @Override
    public Activity insert(Activity activity) {
        this.activityDao.insert(activity);
        return activity;
    }

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    @Override
    public Activity update(Activity activity) {
        this.activityDao.update(activity);
        return this.queryById(activity.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.activityDao.deleteById(id) > 0;
    }



    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<Activity> findAll() {
        return this.activityDao.findAll();
    }
}