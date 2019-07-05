package com.qlu.controller;

import com.qlu.dao.ApplyDao;
import com.qlu.entity.Apply;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    @GetMapping("showclub")
    public String showClubList(Map<String,Object> map, HttpServletResponse response, HttpServletRequest request, HttpSession session){
        map.put("clubslist",clubsService.queryAllClubs());
//        System.out.println("跳转到社团介绍界面并展示查寻出来的社团信息");
        return "club/club";
    }
    @GetMapping("tomyclub")
    public String toMyClub(Map<String,Object> map, HttpServletResponse response, HttpServletRequest request, HttpSession session){
      //  map.put("myclubname".clubsService.queryMyClub());

        System.out.println("跳转到我的社团界面");
        return "myclub/myclub";
    }
//加入社团
    @PostMapping ("tojoinclub")
    public String toJoin(HttpSession session,HttpServletRequest request,HttpServletResponse response){
        String clubid=request.getParameter("clubid");
        String clubname=request.getParameter("clubname");
        session.setAttribute("id",clubid);//部门id
        session.setAttribute("name",clubname);
//        System.out.println(clubid);
//        System.out.println(clubname);
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("转到申请加入社团界面");
        Object stuidInfo=session.getAttribute("stuidInfo");//登录用户的ID
        System.out.println(stuidInfo);
        return "club/joinclub";
    }
    @PostMapping("joinclub")
    public String joinClub(ApplyModel applyModel, HttpServletRequest request,HttpSession session){
        Integer clubid= (Integer) session.getAttribute("id");//获取部门ID
        String clubname= (String) session.getAttribute("name");
        Object type=request.getParameter("type");
        Object status= request.getParameter("status");
        Object date=request.getParameter("date");
//        Member member = new Member();
//        member.setMemberid(memberId);
//        member.setClubid(clubId);
//        ModelAndView modelAndView = new ModelAndView();
//        memberService.insert(member);
//        modelAndView.setViewName("club/insert");
//        modelAndView.addObject("msg", "添加成功");
//        return modelAndView;
//        Apply apply = new Apply();
//        apply.setType();
//        apply.setStatus();
//        apply.getActivityId();
//        apply.getClubid();
//        apply.getDate();
//        System.out.println("joinclubname");
        System.out.println("提交入团申请");
        //这里获取数据，存入数据
        return "club/club";//路径要改
    }
    @GetMapping("giveupjoin")
    public String giveUpJoin(Map<String,Object> map){
        map.put("clubslist",clubsService.queryAllClubs());
//        System.out.println("放弃加入社团申请");
        return "redirect:club/club.jsp";
    }

    //退出社团
    @GetMapping("toqiutclub")
    public String toQuit(){
        System.out.println("转到退出社团界面");
        return "myclub/quitclub";
    }
    @PostMapping("quitclub")
    public String quitclub(){
        System.out.println("提交退团申请");
        return "myclub/?";//路径要改
    }
    @GetMapping("giveupquit")
    public String giveUpQuit(){
        System.out.println("放弃申请退出");
        return "myclub/myclub";
    }

    //解散社团
    @GetMapping("tobreakclub")
    public String toBreakClub(){
        System.out.println("转到申请解散社团界面");
        return "myclub/breakclub";
    }
    @PostMapping("breakclub")
    public String breakClub(){
        System.out.println("提交解散社团申请");
        return "myclub/breakclub";//提交路径要改
    }
    @GetMapping("givebreak")
    public String giveUpBreak(){
        System.out.println("放弃申请解散社团");
        return "myclub/myclub";
    }

    //创建社团
    @PostMapping("tonewclub")
    public String toNewClub(HttpServletResponse response,HttpSession session,HttpServletRequest request){
        Object stuidInfo=session.getAttribute("stuidInfo");
        System.out.println(stuidInfo);
        System.out.println("转到申请创建社团界面");
        return "club/newclub";
    }
//    @PostMapping("newclub")
//    public String newClub(){
//        System.out.println("提交创建社团申请");
//        return "club/newclub";//提交路径要改
//    }
    @GetMapping("givenew")
    public String giveNew(){
        System.out.println("放弃申请创建社团");
        return "club/club";
    }
@PostMapping("id")
    @ResponseBody
    public String Getid(@RequestParam("")Integer id){

        return "";

}
}
