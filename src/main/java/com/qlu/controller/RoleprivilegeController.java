package com.qlu.controller;

import com.qlu.entity.Roleprivilege;
import com.qlu.service.RoleprivilegeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Roleprivilege)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@Controller
@RequestMapping("roleprivilege")
public class RoleprivilegeController {
    /**
     * 服务对象
     */
    @Resource
    private RoleprivilegeService roleprivilegeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Roleprivilege selectOne(Integer id) {
        return this.roleprivilegeService.queryById(id);
    }

}