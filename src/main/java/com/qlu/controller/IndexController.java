package com.qlu.controller;

import com.qlu.entity.Login;
import com.qlu.entity.Role;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class IndexController {

    @GetMapping("index")
    public String toIndex(HttpSession session){

        // 用于测试
//        Login login = new Login();
//        login.setId(2);
//        login.setName("云天明");
//        login.setPassword("123456");
//        login.setUsername("test");
//        session.setAttribute("userinfo", login);
//        Role role = new Role();
//        role.setId(2);
//        session.setAttribute("role", role);

        return "redirect:/index.jsp";
    }
}
