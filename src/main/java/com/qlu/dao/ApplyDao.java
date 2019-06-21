package com.qlu.dao;

import com.qlu.entity.Apply;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Apply)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface ApplyDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Apply queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Apply> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param apply 实例对象
     * @return 对象列表
     */
    List<Apply> queryAll(Apply apply);

    /**
     * 新增数据
     *
     * @param apply 实例对象
     * @return 影响行数
     */
    int insert(Apply apply);

    /**
     * 修改数据
     *
     * @param apply 实例对象
     * @return 影响行数
     */
    int update(Apply apply);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}