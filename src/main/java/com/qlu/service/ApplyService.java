package com.qlu.service;

import com.qlu.entity.Apply;
import java.util.List;

/**
 * (Apply)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface ApplyService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Apply queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Apply> queryAllByLimit(int offset, int limit);

    /**
     * 通过登录的ID查找所有的消息
     * @param id
     * @return
     */
    List<Apply> queryAllByLoginId(Integer id);

    /**
     * 新增数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    Apply insert(Apply apply);

    /**
     * 修改数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    Apply update(Apply apply);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}