package com.qlu.controller;

import com.qlu.entity.Loginrole;
import com.qlu.service.LoginroleService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Loginrole)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@RestController
@RequestMapping("loginrole")
public class LoginroleController {
    /**
     * 服务对象
     */
    @Resource
    private LoginroleService loginroleService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Loginrole selectOne(Integer id) {
        return this.loginroleService.queryById(id);
    }

}