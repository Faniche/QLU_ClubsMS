package com.qlu.service.impl;

import com.qlu.dao.ClubsDao;
import com.qlu.dao.LoginroleDao;
import com.qlu.entity.Clubs;
import com.qlu.entity.File;
import com.qlu.dao.FileDao;
import com.qlu.entity.Loginrole;
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
    private LoginroleDao loginroleDao;
    @Resource
    private ClubsDao clubsDao;

    @Override
    public File queryById(Integer id) {
        return this.fileDao.queryById(id);
    }

    @Override
    public List<File> queryAllByLimit(int offset, int limit) {
        return this.fileDao.queryAllByLimit(offset, limit);
    }

    @Override
    public List<File> queryAll(File file){
        List<File> files = fileDao.queryAll(file);
        return files;
    }

    @Override
    public File insert(File file) {
        this.fileDao.insert(file);
        return file;
    }

    @Override
    public File update(File file) {
        this.fileDao.update(file);
        return this.queryById(file.getId());
    }

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
            Loginrole loginrole = new Loginrole();
            loginrole.setUserid(file.getAuthorid());
            List<Loginrole> list = loginroleDao.queryAll(loginrole);
            loginrole = list.get(0);
            if (loginrole.getRoleid() == 1) {
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

    public List<File> findAll() {
        return this.fileDao.findAll();
    }
}