package com.qlu.controller;

import com.google.gson.Gson;
import com.qlu.entity.Activity;
import com.qlu.entity.Apply;
import com.qlu.service.ActivityService;
import com.qlu.service.ApplyService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.java2d.pipe.AAShapePipe;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * (Activity)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
@RequestMapping("activity")
public class ActivityController {
    /**
     * 服务对象
     */
    @Resource
    private ActivityService activityService;

    @Resource
    private ApplyService applyService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @RequestMapping("selectOne")
    public Activity selectOne(Integer id) {
        return this.activityService.queryById(id);
    }


    /**
     * 同意活动申请
     * @param activityId
     * @param applyId
     * @return
     */
    @ResponseBody
    @PostMapping("agree")
    public boolean agree(@RequestParam("activityId")Integer activityId, @RequestParam("applyId")Integer applyId) {
        Activity activity = activityService.queryById(activityId);
        activity.setStatus(1);
        activityService.update(activity);
        Apply apply = applyService.queryById(applyId);
        apply.setStatus(1);
        applyService.update(apply);
        return true;
    }

    /**
     * 拒绝活动申请
     * @param activityId
     * @param applyId
     * @return
     */
    @RequestMapping("deny")
    @ResponseBody
    public boolean deny(@RequestParam("activityId")Integer activityId, @RequestParam("applyId")Integer applyId)  {
        Activity activity = activityService.queryById(activityId);
        activity.setStatus(2);
        activityService.update(activity);
        Apply apply = applyService.queryById(applyId);
        apply.setStatus(2);
        applyService.update(apply);
        return true;
    }
}