package com.qlu.service;

import com.qlu.entity.Announce;
import java.util.List;

/**
 * (Announce)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface AnnounceService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Announce queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Announce> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param announce 实例对象
     * @return 实例对象
     */
    Announce insert(Announce announce);

    /**
     * 修改数据
     *
     * @param announce 实例对象
     * @return 实例对象
     */
    Announce update(Announce announce);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}