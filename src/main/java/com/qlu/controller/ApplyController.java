package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
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


}