package com.qlu.controller;

import com.qlu.dao.ApplyDao;
import com.qlu.model.ApplyModel;
import com.qlu.service.ClubsService;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
        System.out.println("跳转到社团介绍界面");
        return "club/club";
    }
    @GetMapping("tomyclub")
    public String toMyClub(){
        System.out.println("跳转到我的社团介绍界面");
        return "myclub/myclub";
    }
//加入社团
    @GetMapping("tojoinclub")
    public String toJoin(){
        System.out.println("转到申请加入社团界面");
        return "club/joinclub";
    }
    @PostMapping("joinclub")
    public String joinClub(ApplyModel applyModel, HttpServletRequest request){
        String joinclubname=request.getParameter("joinclubname");
        String joinclubmeassage=request.getParameter("joinclubmessage");

//        request.setAttribute("clubId",1);
//        request.setAttribute("proposerId",20160311);
//        request.setAttribute("type",3);
//        request.setAttribute("date",applyModel.getApply().getDate());
//        request.setAttribute("status",0);
//        System.out.println("date");
//        System.out.println("status");
        System.out.println("joinclubname");
        System.out.println("提交入团申请");
        //这里获取数据，存入数据
        return "club/club";//路径要改
    }
    @GetMapping("giveupjoin")
    public String giveUpJoin(){
        System.out.println("放弃加入社团申请");
        return "club/club";
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
    @GetMapping("tonewclub")
    public String toNewClub(){
        System.out.println("转到申请创建社团界面");
        return "club/newclub";
    }
    @PostMapping("newclub")
    public String newClub(){
        System.out.println("提交创建社团申请");
        return "club/newclub";//提交路径要改
    }
    @GetMapping("givenew")
    public String giveNew(){
        System.out.println("放弃申请创建社团");
        return "club/club";
    }

}
