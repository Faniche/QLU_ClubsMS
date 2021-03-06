package com.qlu.service;

import com.qlu.entity.Message;
import com.qlu.model.MessageModel;

import java.util.List;

/**
 * (Message)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface MessageService {

    /**
     * 根据用户ID查询所有消息
     * @param id 主键
     * @return 实例对象
     */
    List<MessageModel> queryByLoginId(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Message> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param message 实例对象
     * @return 实例对象
     */
    boolean insert(Message message);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}