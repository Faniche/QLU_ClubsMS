package com.qlu.service.impl;

import com.qlu.entity.Message;
import com.qlu.dao.MessageDao;
import com.qlu.model.MessageModel;
import com.qlu.service.ClubsService;
import com.qlu.service.MessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (Message)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("messageService")
public class MessageServiceImpl implements MessageService {
    @Resource
    private MessageDao messageDao;

    @Resource
    private ClubsService clubsService;

    /**
     * 根据用户ID查询所有消息
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public List<MessageModel> queryByLoginId(Integer id) {
        List<Message> messageList = this.messageDao.queryByLoginId(id);
        List<MessageModel> messageModelList = new ArrayList<>();
        for (Message message : messageList){
            MessageModel messageModel = new MessageModel();
            messageModel.setMessage(message);
            messageModel.setClub(clubsService.queryById(message.getClubid()).getName());
            messageModelList.add(messageModel);
        }
        return messageModelList;
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Message> queryAllByLimit(int offset, int limit) {
        return this.messageDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param message 实例对象
     * @return 实例对象
     */
    @Override
    public boolean insert(Message message) {
        return this.messageDao.insert(message) > 0;
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.messageDao.deleteById(id) > 0;
    }
}