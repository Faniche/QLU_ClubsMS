package com.qlu.service;

import com.qlu.entity.Clubs;
import com.qlu.model.ClubsModel;

import java.util.List;

/**
 * (Clubs)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface ClubsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Clubs queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Clubs> queryAllByLimit(int offset, int limit);

    List<Clubs> queryAll(Clubs clubs);

    /**
     * 新增数据
     *
     * @param clubs 实例对象
     * @return 实例对象
     */
    Clubs insert(Clubs clubs);

    /**
     * 修改数据
     *
     * @param clubs 实例对象
     * @return 实例对象
     */
    Clubs update(Clubs clubs);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);
    /*查询全部社团*/
    List<Clubs> queryAllClubs();

    /**
     * 查询优秀社团
     */
    List<Clubs> findAll();

    List<ClubsModel> findModel();
}