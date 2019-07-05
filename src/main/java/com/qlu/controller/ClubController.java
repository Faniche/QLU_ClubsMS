package com.qlu.controller;

import com.qlu.dao.ApplyDao;
import com.qlu.entity.Apply;
import com.qlu.entity.Clubs;
import com.qlu.entity.Login;
import com.qlu.entity.Member;
import com.qlu.model.ApplyModel;
import com.qlu.model.MemberModel;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import com.qlu.service.MemberService;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Poject:QLU_ClubsMS}
 * @File:ClubController}
 * @Author:宰青俊
 * @Dtae:2019/6/28/18:18
 */
@Controller
@RequestMapping("handleClub")
public class ClubController {
    @Resource
    private ClubsService clubsService;
    @Resource
    private MemberService memberService;

    /**
     * 社团介绍
     *
     * @param map
     * @param session
     * @return
     */
    @GetMapping("showclub")
    public String showClubList(Map<String, Object> map, HttpSession session) {
        map.put("clubslist", clubsService.queryAllClubs());
        return "club/club";
    }

    /**
     * 跳转到我的社团
     * @param map
     * @param session
     * @return
     */
    @GetMapping("tomyclub")
    public String toMyClub(Map<String, Object> map, HttpSession session) {
        Login login = (Login) session.getAttribute("userinfo");
        Member member = new Member();
        member.setMemberid(login.getId());
        List<Member> list = memberService.queryAll(member);
        List<Clubs> clubsList = new ArrayList<>();
        for (Member member1 : list) {
            Clubs clubs = clubsService.queryById(member1.getId());
            clubsList.add(clubs);
        }
        map.put("joinedClubs", clubsList);
        System.out.println("跳转到我的社团界面");
        return "myclub/myclub";
    }

    /**
     * 跳转到加入社团界面
     * @param session
     * @param request
     * @param map
     * @return
     */
    @PostMapping("tojoinclub")
    public String toJoin(HttpSession session, HttpServletRequest request, Map<String, Object> map) {
        String clubid = request.getParameter("clubid");
        System.out.println(clubid);
        String clubname = request.getParameter("clubname");
        session.setAttribute("clubid", clubid);//部门id
        map.put("clubid", clubid);
        map.put("clubname", clubname);
        session.setAttribute("clubname", clubname);
        ModelAndView modelAndView = new ModelAndView();
        Login userinfo = (Login) session.getAttribute("userinfo");//登录用户的ID
//        stuidInfo= userinfo.getId();
//        System.out.println(stuidInfo);
        return "club/joinclub";
    }

//    /**
//     * @param applyModel
//     * @param request
//     * @param session
//     * @return
//     */
//    @PostMapping("joinClub")
//    public String joinClub(ApplyModel applyModel, HttpServletRequest request, HttpSession session) {
//        Integer clubid = (Integer) session.getAttribute("id");//获取部门ID
//
//        //这里获取数据，存入数据
//        return "club/club";//路径要改
//    }

    /**
     * 退出
     *
     * @param map
     * @return
     */
    @GetMapping("giveupjoin")
    public String giveUpJoin(Map<String, Object> map) {
        map.put("clubslist", clubsService.queryAllClubs());
//        System.out.println("放弃加入社团申请");
        return "redirect:club/club.jsp";
    }

    //退出社团
    @GetMapping("toqiutclub")
    public String toQuit() {
        System.out.println("转到退出社团界面");
        return "myclub/quitclub";
    }

    @PostMapping("quitclub")
    public String quitclub() {
        System.out.println("提交退团申请");
        return "myclub/?";//路径要改
    }

    @GetMapping("giveupquit")
    public String giveUpQuit() {
        System.out.println("放弃申请退出");
        return "myclub/myclub";
    }

    //解散社团
    @GetMapping("tobreakclub")
    public String toBreakClub() {
        System.out.println("转到申请解散社团界面");
        return "myclub/breakclub";
    }

    @PostMapping("breakclub")
    public String breakClub() {
        System.out.println("提交解散社团申请");
        return "myclub/breakclub";//提交路径要改
    }

    @GetMapping("givebreak")
    public String giveUpBreak() {
        System.out.println("放弃申请解散社团");
        return "myclub/myclub";
    }

    //创建社团
    @PostMapping("tonewclub")
    public String toNewClub(HttpServletResponse response, HttpSession session, HttpServletRequest request) {
        System.out.println("转到申请创建社团界面");
        return "club/newclub";
    }

    //    @PostMapping("newclub")
//    public String newClub(){
//        System.out.println("提交创建社团申请");
//        return "club/newclub";//提交路径要改
//    }
    @GetMapping("givenew")
    public String giveNew() {
        System.out.println("放弃申请创建社团");
        return "club/club";
    }

    @PostMapping("id")
    @ResponseBody
    public String Getid(@RequestParam("") Integer id) {

        return "";

    }
}
