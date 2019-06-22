package com.qlu.controller;

import com.qlu.entity.Activity;
import com.qlu.service.ActivityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

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

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Activity selectOne(Integer id) {
        return this.activityService.queryById(id);
    }

}