package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
    public String insertApply(HttpServletResponse response, HttpServletRequest reques,ApplyModel applyModel ){

        System.out.println("插入数据");
        return "";
    }


}