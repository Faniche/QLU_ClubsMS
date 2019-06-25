package com.qlu.service;

import com.qlu.entity.Login;
import java.util.List;

/**
 * (Login)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface LoginService {




    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Login queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param 查询起始位置
     * @param 查询条数
     * @return 对象列表
     */
    Login queryLoginByUsernameAndPassword(Login login);
    List<Login> queryAllByLimit(int offset, int limit);

    /**
     * 根据条件查找信息
     * @param login
     * @return
     */
    List<Login> queryAll(Login login);

    /**
     * 新增数据
     *
     * @param login 实例对象
     * @return 实例对象
     */
    Login insert(Login login);

    /**
     * 修改数据
     *
     * @param login 实例对象
     * @return 实例对象
     */
    Login update(Login login);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}