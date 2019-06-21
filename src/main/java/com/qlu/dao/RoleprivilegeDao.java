package com.qlu.dao;

import com.qlu.entity.Roleprivilege;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Roleprivilege)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface RoleprivilegeDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Roleprivilege queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Roleprivilege> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param roleprivilege 实例对象
     * @return 对象列表
     */
    List<Roleprivilege> queryAll(Roleprivilege roleprivilege);

    /**
     * 新增数据
     *
     * @param roleprivilege 实例对象
     * @return 影响行数
     */
    int insert(Roleprivilege roleprivilege);

    /**
     * 修改数据
     *
     * @param roleprivilege 实例对象
     * @return 影响行数
     */
    int update(Roleprivilege roleprivilege);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}