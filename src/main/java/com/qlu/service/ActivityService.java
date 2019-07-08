package com.qlu.service;

import com.qlu.entity.Activity;

import java.sql.Timestamp;
import java.util.List;

/**
 * (Activity)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface ActivityService {



    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Activity> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    Activity insert(Activity activity);

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    Activity update(Activity activity);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Activity queryById(Integer id);
    /**
     * 通过实体作为筛选条件查询
     * @return 对象列表
     */
    List<Activity> findAll();


    /*用于显示首页用到的调用的方法*/
    /**
     * 查询最近三天的活动
     */
    List<Activity> findTimeRange(Timestamp supTime, Timestamp infTime);
    /**
     * 查询最新的一条活动
     */
    Activity findOne();

}