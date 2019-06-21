package com.qlu.service.impl;

import com.qlu.entity.Loginrole;
import com.qlu.dao.LoginroleDao;
import com.qlu.service.LoginroleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Loginrole)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("loginroleService")
public class LoginroleServiceImpl implements LoginroleService {
    @Resource
    private LoginroleDao loginroleDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Loginrole queryById(Integer id) {
        return this.loginroleDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Loginrole> queryAllByLimit(int offset, int limit) {
        return this.loginroleDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param loginrole 实例对象
     * @return 实例对象
     */
    @Override
    public Loginrole insert(Loginrole loginrole) {
        this.loginroleDao.insert(loginrole);
        return loginrole;
    }

    /**
     * 修改数据
     *
     * @param loginrole 实例对象
     * @return 实例对象
     */
    @Override
    public Loginrole update(Loginrole loginrole) {
        this.loginroleDao.update(loginrole);
        return this.queryById(loginrole.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.loginroleDao.deleteById(id) > 0;
    }
}