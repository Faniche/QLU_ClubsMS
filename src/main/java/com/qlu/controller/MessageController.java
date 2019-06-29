package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.entity.Login;
import com.qlu.entity.Message;
import com.qlu.entity.Role;
import com.qlu.model.ApplyModel;
import com.qlu.model.MessageModel;
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
        ModelAndView modelAndView = new ModelAndView("message/show");
        Login login = (Login) session.getAttribute("userinfo");
        Role role = (Role)session.getAttribute("role");

        // 查询出所有的申请
        List<ApplyModel> applyList = applyService.queryAllByLoginId(login.getId(), role);
        modelAndView.addObject("applyList", applyList);

        // 查出所有消息，只有学生和管理员有消息
        if(role.getId() == 2 || role.getId() == 3) {
            List<MessageModel> messageList = messageService.queryByLoginId(login.getId());
            modelAndView.addObject("messageList", messageList);
        }
        return modelAndView;
    }

    /**
     * message对象包含了要插入的所有信息，不需要再查询
     * @param message
     * @return
     */
    @PostMapping("release")
    public ModelAndView release(Message message){
        boolean result = messageService.insert(message);
        ModelAndView modelAndView = new ModelAndView("message/message");
        if (result) {
            modelAndView.addObject("msg", "发布成功");
        } else {
            modelAndView.addObject("msg", "发布失败");
        }
        return modelAndView;
    }
}