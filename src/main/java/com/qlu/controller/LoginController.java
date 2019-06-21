package com.qlu.controller;

import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Login)表控制层
 *
 * @author Chare
 * @since 2019-06-21 15:58:24
 */
@RestController
@RequestMapping("login")
public class LoginController {
    /**
     * 服务对象
     */
    @Resource
    private LoginService loginService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Login selectOne(Integer id) {
        return this.loginService.queryById(1);
    }

}