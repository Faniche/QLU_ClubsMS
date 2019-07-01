package com.qlu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Project: QLU_ClubsMS
 * @File: RegisterController(register控制层)
 * @Author:张树杰
 * @Date: 2019/6/28 / 10:43
 */
@Controller
@RequestMapping("register")
public class RegisterController {
    @GetMapping("register")
    public String toRegister() {
        ModelAndView modelAndView = new ModelAndView();
        return "register/register";
    }
}
