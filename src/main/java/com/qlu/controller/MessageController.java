package com.qlu.controller;

import com.qlu.entity.Message;
import com.qlu.service.MessageService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Message)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@RestController
@RequestMapping("message")
public class MessageController {
    /**
     * 服务对象
     */
    @Resource
    private MessageService messageService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Message selectOne(Integer id) {
        return this.messageService.queryById(id);
    }

}