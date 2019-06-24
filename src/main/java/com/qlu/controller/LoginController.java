package com.qlu.controller;

import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Login)表控制层
 *
 * @author Chare
 * @since 2019-06-21 15:58:24
 */
@Controller
@RequestMapping("/")
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
        return this.loginService.queryById(id);
    }

    @GetMapping("login")
    public String toLogin() {
        ModelAndView modelAndView = new ModelAndView();
        return "login/login";
    }


    /**
     * 根据输入的姓名查找到符合的学生
     * 郭雅楠
     * @param name
     * @return
     */
    @PostMapping("login/findByName")
    public ModelAndView findByName(String name){
        ModelAndView modelAndView = new ModelAndView();
        Login login = new Login();
        login.setName(name);
        List<Login> userList = loginService.queryAll(login);
        if (!userList.isEmpty()){
            modelAndView.addObject("userList", userList);
            return modelAndView;
        }
        modelAndView.addObject("msg","该学生不存在，请核对名字后再查找");
        return modelAndView;
    }
}