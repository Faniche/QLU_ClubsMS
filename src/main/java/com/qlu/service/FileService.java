package com.qlu.service;

import com.qlu.entity.File;
import com.qlu.model.FileModel;

import java.util.List;

/**
 * (File)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface FileService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    File queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<File> queryAllByLimit(int offset, int limit);

    /**
     *
     * @param file
     * @return
     */
    List<File> queryAll(File file);

    /**
     * 新增数据
     *
     * @param file 实例对象
     * @return 实例对象
     */
    File insert(File file);

    /**
     * 修改数据
     *
     * @param file 实例对象
     * @return 实例对象
     */
    File update(File file);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    /**
     * 查找所有文本文件
     */
    List<FileModel> findAllFiles();

    /**
     * 查找所有的社团LOGO
     */
    List<File> findAllIcons();


    /*用于显示首页用到的调用的方法*/
    /**
     * 通过实体作为筛选条件查询
     * @return 对象列表
     */
    List<File> findAll();
}