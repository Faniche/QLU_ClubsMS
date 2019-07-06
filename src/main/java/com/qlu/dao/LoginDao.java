package com.qlu.dao;

import com.qlu.entity.Login;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Login)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface LoginDao {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Login queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     *
     */
    List<Login> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 查找账号密码
     *
     * @param login 实例对象
     * @return 实例对象
     */
    Login queryLoginByUsernameAndPassword(Login login);

    /**
     * 查找邮箱密码
     *
     * @param login 实例对象
     * @return 实例对象
     */
    Login queryLoginByEmailAndPassword(Login login);

    /**
     * 通过学号查询所有信息
     *
     * @param id 学号
     * @return 实例对象
     */
    Login queryAllmessages(String id);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param login 实例对象
     * @return 对象列表
     */
    List<Login> queryAll(Login login);

    /**
     * 新增数据
     *
     * @param login 实例对象
     * @return 影响行数
     */
    int insert(Login login);

    /**
     * 修改数据
     *
     * @param login 实例对象
     * @return 影响行数
     */
    int update(Login login);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}