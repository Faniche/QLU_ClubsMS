package com.qlu.dao;

import com.qlu.entity.File;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (File)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface FileDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    File queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<File> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param file 实例对象
     * @return 对象列表
     */
    List<File> queryAll(File file);

    /**
     * 新增数据
     *
     * @param file 实例对象
     * @return 影响行数
     */
    int insert(File file);

    /**
     * 修改数据
     *
     * @param file 实例对象
     * @return 影响行数
     */
    int update(File file);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);


    /**
     * 返回出图片文件外的其他文件
     * @return
     */
    List<File> findAllFiles();

    /**
     * 查询所有社团LOGO图片文件
     */
    List<File> findAllIcons();


    /*用于显示首页用到的调用的方法*/
    /**
     * 通过实体作为筛选条件查询
     * @return 对象列表
     */
    List<File> findAll();
}