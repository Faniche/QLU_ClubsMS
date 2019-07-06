package com.qlu.service;

import com.qlu.entity.Studentid;
import java.util.List;

/**
 * (Studentid)表服务接口
 *
 * @author Chare
 * @since 2019-06-27 18:15:27
 */
public interface StudentidService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Studentid queryById(String id);

    /**
     * 通过登录表中的id查询
     *
     * @param id login中的id
     * @return
     */
    Studentid queryByIdq(Integer id);
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Studentid> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param studentid 实例对象
     * @return 实例对象
     */

    Studentid insert(Studentid studentid);
    /**
     * 通过实体作为筛选条件查询
     *
     * @param studentid 实例对象
     * @return 对象列表
     */
    List<Studentid> queryAll(Studentid studentid);

    /**
     * 修改数据
     *
     * @param studentid 实例对象
     * @return 实例对象
     */
    Studentid update(Studentid studentid);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}