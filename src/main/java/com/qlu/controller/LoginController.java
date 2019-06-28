package com.qlu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.Map;
import com.qlu.entity.Login;
import com.qlu.entity.Role;
import com.qlu.service.LoginService;
import com.qlu.service.RoleService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;




/**
 * (Login)表控制层
 *
 * @author Chare
 * @since 2019-06-21 15:58:24
 */
@Controller
@RequestMapping("login")
public class LoginController {
    /**
     * 服务对象
     */
    @Resource
    private LoginService loginService;

    @Resource
    private RoleService roleService;
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
     * 登录验证
     * 张树杰
     * @param
     * @return
     */
    @PostMapping("logincheck")
    public ModelAndView login(Login login, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        Login loginInfo = loginService.queryLoginByUsernameAndPassword(login);
        if (loginInfo != null) {
            session.setAttribute("userinfo", loginInfo);
            Role role = roleService.queryByLoginId(loginInfo.getId());
            session.setAttribute("role", role);

            if (role.getName().equals("SuperAdmin")) {
                modelAndView.setViewName("admin/index");
            } else {
                modelAndView.setViewName("redirect:/index.jsp");
            }
        } else {
            modelAndView.setViewName("login/login");
            map.put("msg", "账号密码错误！");
        }
        return modelAndView;
    }
}




