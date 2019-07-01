package com.qlu.dao;

import com.qlu.entity.Studentid;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Studentid)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-27 18:15:27
 */
public interface StudentidDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Studentid queryById(String id);
    Studentid queryByIdq(Integer id);


    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Studentid> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param studentid 实例对象
     * @return 对象列表
     */
    List<Studentid> queryAll(Studentid studentid);

    /**
     * 新增数据
     *
     * @param studentid 实例对象
     * @return 影响行数
     */
    int insert(Studentid studentid);

    /**
     * 修改数据
     *
     * @param studentid 实例对象
     * @return 影响行数
     */
    int update(Studentid studentid);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String id);

}