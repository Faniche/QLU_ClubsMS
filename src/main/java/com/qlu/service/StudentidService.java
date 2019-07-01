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