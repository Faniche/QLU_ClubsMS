package com.qlu.controller;
import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @Project: QLU_ClubsMS
 * @File: PersonalController
 * @Author:张树杰
 * @Date: 2019/7/2 / 9:53
 */
@Controller
@RequestMapping("personal")


public class PersonalController {
    /**
     * 服务对象
     */
    @Resource
    private LoginService loginService;

    /**
     * 跳转到个人中心页面
     * @return
     */
    @GetMapping("personal")
    public String toPersonal() {
        ModelAndView modelAndView = new ModelAndView();
        return "personal/personal";
    }

    /**
     * 跳转到更新用户名
     * @return
     */
    @GetMapping("updateusername")
    public String toUpadteUsername() {
        ModelAndView modelAndView = new ModelAndView();
        return "personal/updateusername";
    }

    /**
     * 跳转到更新邮箱
     * @return
     */
    @GetMapping("updateEmail")
    public String toUpadteEmail() {
        ModelAndView modelAndView = new ModelAndView();
        return "personal/updateEmail";
    }

    /**
     * 跳转到更新密码
     * @return
     */
    @GetMapping("updatepassword")
    public String toUpdatePassword() {
        ModelAndView modelAndView = new ModelAndView();
        return "personal/updatepassword";
    }

    /**
     * 修改用户名
     * @param request
     * @param session
     * @param map
     * @return
     */
    @PostMapping("username")
    public ModelAndView updateusername(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //获取用户名
        String s1 = request.getParameter("username");
        //获取存入session的userinfo
        Login userinfo = (Login) session.getAttribute("userinfo");
        Login login = new Login();
        login.setUsername(s1);
        int length = s1.length();
        //判断用户名的长度
        if (length < 5) {
            modelAndView.setViewName("personal/updateusername");
            map.put("msg", "用户名过短！");
        } else {
            //查询用户名是否存在
            List<Login> list = loginService.queryAll(login);
            if (list.isEmpty()) {
                //更新userinfo和数据库中的用户名
                userinfo.setUsername(s1);
                loginService.update(userinfo);
                modelAndView.setViewName("personal/personal");
            } else {
                modelAndView.setViewName("personal/updateusername");
                map.put("msg", "用户已存在！");
            }

        }
        return modelAndView;
    }

    @PostMapping("password")
    public ModelAndView updatePassword(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //获取密码
        String s1 = request.getParameter("password");
        //获取Session的userinfo
        Login userinfo = (Login) session.getAttribute("userinfo");
        int length = s1.length();
        //判断密码的长度
        if (length < 6) {
            modelAndView.setViewName("personal/updatepassword");
            map.put("msg", "密码少于6位！");
        } else {
            //更新userinfo和数据库中的密码
            userinfo.setPassword(s1);
            loginService.update(userinfo);
            modelAndView.setViewName("personal/personal");
        }


        return modelAndView;
    }

    @PostMapping("email")
    public ModelAndView updateEmail(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //获取输入的验证码
        String s2 = request.getParameter("code");
        //获取邮箱中的验证码
        String s3 = (String) session.getAttribute("authCode");
        //判断验证码是否相同
        if (s2.equals(s3)) {
            //获取表单中的邮箱
            String s1 = request.getParameter("email");
            //获取Session中的userinfo
            Login userinfo = (Login) session.getAttribute("userinfo");
            //更新userinfo和数据库中的邮箱
            userinfo.setEmail(s1);
            loginService.update(userinfo);
            modelAndView.setViewName("personal/personal");
        } else {
            map.put("msg", "验证码错误");
            modelAndView.setViewName("personal/updateEmail");
        }

        return modelAndView;
    }


}
