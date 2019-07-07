package com.qlu.service.impl;

import com.qlu.dao.*;
import com.qlu.entity.*;
import com.qlu.model.FileModel;
import com.qlu.service.FileService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
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

    @Resource
    private ClubsDao clubsDao;

    @Resource
    private LoginroleDao loginroleDao;

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

    @Override
    public List<FileModel> findAllFiles(){
        List<FileModel> models = new ArrayList<>();
        List<File> files = this.fileDao.findAllFiles();
        for (File file : files) {
            FileModel fileModel = new FileModel();
            fileModel.setFile(file);
            Loginrole role = loginroleDao.queryById(file.getAuthorid());
            if (role.getRoleid() == 1) {
                fileModel.setAuthor("社团管理委员会");
            } else {
                Clubs clubs = new Clubs();
                clubs.setLeaderId(file.getAuthorid());
                clubs = clubsDao.queryAll(clubs).get(0);
                fileModel.setAuthor(clubs.getName());
            }
            models.add(fileModel);
        }
        return models;
    }

    @Override
    public List<File> findAllIcons() {
        return this.fileDao.findAllIcons();
    }
}

