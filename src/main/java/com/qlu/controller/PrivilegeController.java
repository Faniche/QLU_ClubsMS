package com.qlu.controller;

import com.qlu.entity.Privilege;
import com.qlu.service.PrivilegeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Privilege)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@Controller
@RequestMapping("privilege")
public class PrivilegeController {
    /**
     * 服务对象
     */
    @Resource
    private PrivilegeService privilegeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Privilege selectOne(Integer id) {
        return this.privilegeService.queryById(id);
    }

}