package com.qlu.dao;

import com.qlu.entity.Message;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Message)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface MessageDao {

    /**
     * 根据用户ID查询所有消息
     * @param id 主键
     * @return 实例对象
     */
    List<Message> queryByLoginId(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Message> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param message 实例对象
     * @return 对象列表
     */
    List<Message> queryAll(Message message);

    /**
     * 新增数据
     *
     * @param message 实例对象
     * @return 影响行数
     */
    int insert(Message message);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}