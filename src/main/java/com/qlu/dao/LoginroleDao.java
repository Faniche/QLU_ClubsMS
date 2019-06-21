package com.qlu.dao;

import com.qlu.entity.Loginrole;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Loginrole)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface LoginroleDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Loginrole queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Loginrole> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param loginrole 实例对象
     * @return 对象列表
     */
    List<Loginrole> queryAll(Loginrole loginrole);

    /**
     * 新增数据
     *
     * @param loginrole 实例对象
     * @return 影响行数
     */
    int insert(Loginrole loginrole);

    /**
     * 修改数据
     *
     * @param loginrole 实例对象
     * @return 影响行数
     */
    int update(Loginrole loginrole);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}