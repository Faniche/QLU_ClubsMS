package com.qlu.service.impl;

import com.qlu.entity.Login;
import com.qlu.dao.LoginDao;
import com.qlu.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Login)表服务实 现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Resource
    private LoginDao loginDao;

    @Override
    public Login queryById(Integer id) {
        return this.loginDao.queryById(id);
    }

    @Override
    public Login queryLoginByUsernameAndPassword(Login login){
        return loginDao.queryLoginByUsernameAndPassword(login);
    }

    @Override
    public Login queryLoginByEmailAndPassword(Login login){
        return loginDao.queryLoginByEmailAndPassword(login);
    }

    @Override
    public Login queryAllInfo(String id){
        return loginDao.queryAllInfo(id);
    }

    @Override
    public List<Login> queryAllByLimit(int offset, int limit) {
        return this.loginDao.queryAllByLimit(offset, limit);
    }

    @Override
    public List<Login> queryAll(Login login) {
        return loginDao.queryAll(login);
    }

    @Override
    public Login insert(Login login) {
        this.loginDao.insert(login);
        return login;
    }

    @Override
    public Login update(Login login) {
        this.loginDao.update(login);
        return this.queryById(login.getId());
    }

    @Override
    public boolean deleteById(Integer id) {
        return this.loginDao.deleteById(id) > 0;
    }
}