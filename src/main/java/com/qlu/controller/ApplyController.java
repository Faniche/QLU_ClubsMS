package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.entity.Clubs;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import com.qlu.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * (Apply)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
@RequestMapping("apply")
public class ApplyController {
    /**
     * 服务对象
     */
    @Resource
    private ApplyService applyService;

    @Resource
    private ClubsService clubsService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Apply selectOne(Integer id) {
        return this.applyService.queryById(id);
    }
    @PostMapping("insertapply")
    public String insertApply(HttpServletResponse response, HttpServletRequest request, ApplyModel applyModel, HttpSession session){
         //获取页面传过来的值插入数据库
          String type = request.getParameter("type");
          String  date =request.getParameter("date");
          String id =request.getParameter("clubid");
          String proposerid=request.getParameter("proposerid");
          String clubid=(String) session.getAttribute("id");
          String status= request.getParameter("status");
          System.out.println(proposerid);
          System.out.println(clubid);

        //申请提交
        Apply apply= new Apply();
        apply.setType(new Integer(type));
//        apply.setActivityId(new Integer(null));
        apply.setProposerid(new Integer(proposerid));
        apply.setClubid(new Integer(id));
        System.out.println("提交申请");
//        apply.setStatus();
        return "redirect:index.jsp";
    }
    @PostMapping("newclubapply")
    public String insertNewclub(HttpServletResponse response, HttpServletRequest request, HttpSession session){
        String type=request.getParameter("type");//申请类型
        String proposerId=request.getParameter("proposerId");//申请者ID
        String leaderId=request.getParameter("leaderid");//社长ID和申请者ID一样
        String status=request.getParameter("status");//申请状态
        String date=request.getParameter("");//日期的获取
        String name=request.getParameter("name");//社团名字
        System.out.println(name);
        String descript=request.getParameter("descript");//社团介绍
        System.out.println(proposerId);
        System.out.println(new Integer(type));
        System.out.println("新建社团");

         Clubs clubs=new Clubs();
         clubs.setLeaderId(new Integer(leaderId));
         clubs.setName(name);
         clubs.setDescript(descript);
         clubs.setStatus(new Integer(status));
         clubs.setEstablisheddate(DateUtil.getTimeStamp());
         clubs=clubsService.insert(clubs);

        Apply apply= new Apply();
        apply.setProposerid(new Integer(proposerId));
        apply.setType(new Integer(type));
        apply.setStatus(new Integer(status));
        apply.setType(new Integer(type));
        apply.setClubid(clubs.getId());
        apply.setDate(DateUtil.getTimeStamp());
        apply =applyService.insert(apply);
        System.out.println("创建申请提交");
       //apply表和cluds表同是插入一条数据
        return "club/newclub";
    }



}