package com.qlu.controller;

import com.qlu.entity.Login;
import com.qlu.entity.Loginrole;
import com.qlu.entity.Studentid;
import com.qlu.service.LoginService;
import com.qlu.service.LoginroleService;
import com.qlu.service.RoleService;
import com.qlu.service.StudentidService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Project: QLU_ClubsMS
 * @File: RegisterController(register控制层)
 * @Author:张树杰
 * @Date: 2019/6/28 / 10:43
 */
@Controller
@RequestMapping("register")
public class RegisterController {
    @Resource
    private LoginService loginService;
    @Resource
    private StudentidService studentidService;
    @Resource
    private RoleService roleService;
    @Resource
    private LoginroleService loginroleService;

    /**
     * 跳转到注册页面
     *
     * @return
     */
    @GetMapping("register")
    public String toRegister() {
        ModelAndView modelAndView = new ModelAndView();
        return "register/register";
    }
    //跳转到忘记密码页面
    @GetMapping("forgetpsw")
    public String toForgetpsw() {
        ModelAndView modelAndView = new ModelAndView();
        return "register/forgetpsw";
    }

    /**
     * 注册
     */
    @PostMapping("Loginregister")
    public ModelAndView loginregister(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //获取表单提交的值
        String s1 = request.getParameter("username");
        String s2 = request.getParameter("name");
        String s3 = request.getParameter("email");
        String s4 = request.getParameter("password");
        String s5 = request.getParameter("id");
        Login login = new Login();
        //新建一个login对象，将获取的值放入对象中
        login.setUsername(s1);
        login.setName(s2);
        login.setEmail(s3);
        login.setPassword(s4);
        //插入到数据库中
        loginService.insert(login);
        //新建一个学号对象stu
        Studentid stu = new Studentid();
        //将学号放入对象中
        stu.setId(s5);
        //将login表中的id放入对象中
        stu.setLoginid(login.getId());
        //更新学号
        studentidService.update(stu);
        //将用户的权限设置为学生
        Loginrole loginrole = new Loginrole();
        loginrole.setUserid(login.getId());
        loginrole.setRoleid(3);
        //插入中间表loginrole
        loginroleService.insert(loginrole);
        modelAndView.setViewName("login/login");
        return modelAndView;
    }

    /**
     * 检查用户名
     */
    @PostMapping("usernamecheck")
    @ResponseBody
    public Object checkusername(@RequestParam(value = "username") String username, HttpSession session, HttpServletResponse resp) {
        Map map = new HashMap();
        String flag = null;
        Login login = new Login();
        login.setUsername(username);
        //查询用户名
        List<Login> list = loginService.queryAll(login);
        //判断用户名是否存在
        if (list.isEmpty()) {
            map.put("valid", true);
            flag = "true";
        } else {
            map.put("valid", false);
            flag = "false";
        }
        return flag;
    }

    /**
     * 检查学号
     */
    @PostMapping("idcheck")
    @ResponseBody
    public Object checkid(@RequestParam(value = "id") String id, HttpSession session, HttpServletResponse resp) {
        Map map = new HashMap();
        String flag = null;
        Studentid stuid = new Studentid();
        stuid.setId(id);
        //查询学号
        List<Studentid> list = studentidService.queryAll(stuid);
        //判断学号时候存在
        if (!list.isEmpty()) {
            map.put("valid", true);
            flag = "true";
        } else {
            map.put("valid", false);
            flag = "false";
        }
        return flag;
    }

    /**
     * 更新密码
     * @param request
     * @param session
     * @param map
     * @return
     */
    @PostMapping("updatepassword")
    public ModelAndView Updatepassword(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //获取表单提交的邮箱和密码
        String s1 = request.getParameter("email");
        String s2 = request.getParameter("password");
        Login login = new Login();
        login.setEmail(s1);
        //根据邮箱查询信息
        List<Login> list = loginService.queryAll(login);
        login = list.get(0);
        //更新密码
        login.setPassword(s2);
        loginService.update(login);
        modelAndView.setViewName("login/login");

        return modelAndView;
    }
}