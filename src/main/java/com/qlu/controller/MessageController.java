package com.qlu.controller;

import com.qlu.entity.*;
import com.qlu.model.ApplyModel;
import com.qlu.model.MemberModel;
import com.qlu.model.MessageModel;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import com.qlu.service.MemberService;
import com.qlu.service.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Resource
    private ClubsService clubsService;

    @Resource
    private MemberService memberService;

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
        // 查出所有管理的社团以及成员
        if(role.getId() == 2) {
            Clubs clubs = new Clubs();
            clubs.setLeaderId(login.getId());
            List<Clubs> managedClubs = clubsService.queryAll(clubs);
            modelAndView.addObject("managedClubs", managedClubs);
            // 一个人可能同时是多个社团的负责人
            Map<String, List<MemberModel>> clubAndMemberList = new HashMap<>();
            for (Clubs club : managedClubs){
                Member member = new Member();
                member.setClubid(club.getId());
                List<MemberModel> memberModels = memberService.queryAllModel(member);
                clubAndMemberList.put(club.getName(), memberModels);
            }
            modelAndView.addObject("clubAndMemberList", clubAndMemberList);
        }
        return modelAndView;
    }

    /**
     * message对象包含了要插入的所有信息，不需要再查询
     * @param message
     * @return
     */
    @PostMapping("release")
    public String release(Message message, Map<String, Object> map){
        System.out.println(message.getContent());
        System.out.println(message.getClubid());
        boolean result = true;
//                messageService.insert(message);
        ModelAndView modelAndView = new ModelAndView("message/message");
        if (result) {
            modelAndView.addObject("msg", "发布成功");
        } else {
            modelAndView.addObject("msg", "发布失败");
        }
        return "message/show";
    }
}