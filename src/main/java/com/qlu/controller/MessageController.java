package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.entity.Login;
import com.qlu.entity.Message;
import com.qlu.entity.Role;
import com.qlu.service.ApplyService;
import com.qlu.service.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * (Message)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@Controller
@RequestMapping("message")
public class MessageController {
    /**
     * 服务对象
     */
    @Resource
    private MessageService messageService;

    @Resource
    private ApplyService applyService;

    /**
     * 转到消息页面
     * @return
     */
    @GetMapping("show")
    public ModelAndView message(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
//        Login login = (Login) session.getAttribute("userinfo");
//        Role role = (Role)session.getAttribute("role");
//        // 查询出所有的消息
//        List<Message> messageList = messageService.queryByLoginId(login.getId());
//        List<Apply> applyList = applyService.queryAllByLoginId(login.getId());
//        modelAndView.addObject("messageList",messageList);
//
//        modelAndView.setViewName("message/show");
//
        return modelAndView;
    }

    @PostMapping("release")
    public ModelAndView release(Message message){
        messageService.insert(message);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "发布成功");
        modelAndView.setViewName("message/message.jsp");
        return modelAndView;
    }

}