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
    public String toIndex(HttpSession session) {

        // 用于测试
//        Login login = new Login();
//        Role role = new Role();

//        login.setId(13);
//        login.setName("秦始皇");
//        login.setPassword("123456");
//        login.setUsername("秦始皇");
//        role.setId(1);

//        login.setId(10);
//        login.setName("周文王");
//        login.setPassword("123456");
//        login.setUsername("周文王");
//        role.setId(2);

//        login.setId(18);
//        login.setName("汪淼");
//        login.setPassword("123456");
//        login.setUsername("汪淼");
//        role.setId(3);

//        session.setAttribute("userinfo", login);
//        session.setAttribute("role", role);

        return "redirect:/index.jsp";
    }
}
