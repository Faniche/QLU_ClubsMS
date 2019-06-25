package com.qlu;

import com.qlu.entity.Message;
import com.qlu.service.MessageService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @Project: QLU_ClubsMS
 * @File: MessageTest
 * @Author: 郭雅楠
 * @Date: 2019/6/25 / 15:10
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})

public class MessageTest {
    @Autowired
    private MessageService messageService;

    @Test
    public void queryByLoginId(){
        List<Message> messageList = messageService.queryByLoginId(2);
        for (Message message : messageList){
            System.out.println(message.getContent());
        }
    }

    @Test
    public void release(){
        Message message = new Message();
        message.setContent("测试发布消息,添加时间,将时间的设置添加到构造函数中");
        message.setClubid(2);
//        Timestamp timestamp = new Timestamp(new Date().getTime());
//        message.setReleasedate(timestamp);
        messageService.insert(message);
    }
}
