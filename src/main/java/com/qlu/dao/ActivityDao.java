package com.qlu.dao;

import com.qlu.entity.Activity;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

/**
 * (Activity)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:51
 */
public interface ActivityDao {



    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Activity> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param activity 实例对象
     * @return 对象列表
     */
    List<Activity> queryAll(Activity activity);

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 影响行数
     */
    int insert(Activity activity);

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 影响行数
     */
    int update(Activity activity);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    /*用于页面显示调用的两个方法*/
    /**
     * 查询所有活动数据

     * @return 对象列表
     */
    List<Activity> findAll();

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Activity queryById(Integer id);

    /**
     *查询最近三天的活动
     */
    List<Activity> findTimeRange(Map<String, Timestamp> map);

    /**
     * 查询最新的一条活动
     */
    Activity findOne();


}