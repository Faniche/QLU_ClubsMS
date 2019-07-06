package com.qlu.controller;

import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import com.qlu.util.EmailUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Project: QLU_ClubsMS
 * @File: EmailController
 * @Author:张树杰
 * @Date: 2019/7/5 / 9:11
 */
@Controller
@RequestMapping("email")
public class EmailController {
    @Resource
    private LoginService loginService;

    /**
     * 发送验证码
     *
     * @param email
     * @param request
     * @param response
     */

    @PostMapping("emailcode")
    //发送验证码，并使用session存储设置值
    public void vcode(@RequestParam(value = "email") String email, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //生成随机密码
        String authCode = new EmailUtil().achieveCode();
        try {
            String s1 = new EmailUtil().sendAuthCodeEmail(email, authCode);
            String flag = null;
            Map map = new HashMap();
            HttpSession session = request.getSession();
            //将生成的随机密码放入Session中
            session.setAttribute("authCode", authCode);
            if (s1.equals("发送成功")) {
                map.put("valid", true);
                flag = "true";
            } else {
                map.put("valid", false);
                flag = "false";
            }


            response.getWriter().write("{\"exist\":" + true + "}");
        } catch (Exception e) {
            response.getWriter().write("{\"exist\":" + false + "}");
            e.printStackTrace();
        }
    }

    /**
     * 验证验证码
     */
    @PostMapping("checkCode")
    @ResponseBody
    public Object checkCode(@RequestParam(value = "code") String code, HttpSession session, HttpServletResponse resp) {
        Map map = new HashMap();
        String flag = null;
        if (code != null) {
            //获取验证码
            String validateCode = (String) session.getAttribute("authCode");
            //输入验证码与邮箱的验证码比较
            if (validateCode != null && validateCode.toUpperCase().equals(code.toUpperCase())) {
                map.put("valid", true);
                flag = "true";
            } else {
                map.put("valid", false);
                flag = "false";
            }
        } else {
            map.put("valid", false);
            flag = "false";
        }
        return flag;
    }

    /**
     * 检查邮箱
     */
    @PostMapping("emailcheck")
    @ResponseBody
    public Object checkemail(@RequestParam(value = "email") String email, HttpSession session, HttpServletResponse resp) {
        Map map = new HashMap();
        String flag = null;
        Login login = new Login();
        login.setEmail(email);
        //查询邮箱
        List<Login> list = loginService.queryAll(login);

        if (list.isEmpty()) {
            map.put("valid", true);
            flag = "true";
        } else {
            map.put("valid", false);
            flag = "false";
        }
        return flag;
    }
}

