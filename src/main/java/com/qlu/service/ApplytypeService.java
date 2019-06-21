package com.qlu.service;

import com.qlu.entity.Applytype;
import java.util.List;

/**
 * (Applytype)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface ApplytypeService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Applytype queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Applytype> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param applytype 实例对象
     * @return 实例对象
     */
    Applytype insert(Applytype applytype);

    /**
     * 修改数据
     *
     * @param applytype 实例对象
     * @return 实例对象
     */
    Applytype update(Applytype applytype);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}