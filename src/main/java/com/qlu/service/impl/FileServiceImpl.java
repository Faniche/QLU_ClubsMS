package com.qlu.service.impl;

import com.qlu.entity.File;
import com.qlu.dao.FileDao;
import com.qlu.service.FileService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (File)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("fileService")
public class FileServiceImpl implements FileService {
    @Resource
    private FileDao fileDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public File queryById(Integer id) {
        return this.fileDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<File> queryAllByLimit(int offset, int limit) {
        return this.fileDao.queryAllByLimit(offset, limit);
    }

    @Override
    public List<File> queryAll(File file){
        List<File> files = fileDao.queryAll(file);
        return files;
    }

    /**
     * 新增数据
     *
     * @param file 实例对象
     * @return 实例对象
     */
    @Override
    public File insert(File file) {
        this.fileDao.insert(file);
        return file;
    }

    /**
     * 修改数据
     *
     * @param file 实例对象
     * @return 实例对象
     */
    @Override
    public File update(File file) {
        this.fileDao.update(file);
        return this.queryById(file.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.fileDao.deleteById(id) > 0;
    }


    /*用于显示首页用到的调用的方法*/
    /**
     * 通过实体作为筛选条件查询
     * @return 对象列表
     */
    public List<File> findAll(){return this.fileDao.findAll();}
}