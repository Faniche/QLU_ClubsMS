package com.qlu.controller;

import com.qlu.util.ImageUtil;
import com.qlu.entity.Studentid;
import com.qlu.service.StudentidService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

import com.qlu.entity.Login;
import com.qlu.entity.Role;
import com.qlu.service.LoginService;
import com.qlu.service.RoleService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

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
    private StudentidService studentidService;

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

    /**
     * 调用验证码
     *
     * @return
     */
    @ResponseBody
    @GetMapping("checkCaptchaCode")
    public void validateCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //生成验证码
        Object[] objs = ImageUtil.createImage();
        //将验证码存入Session
        request.getSession(true).setAttribute("validateCode", objs[0]);
        //将图片输出给浏览器
        BufferedImage image = (BufferedImage) objs[1];
        // 禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");
        OutputStream os = response.getOutputStream();
        ImageIO.write(image, "jpeg", os);
        os.flush();
    }

    /**
     * 检验验证码
     * @return
     */
    @PostMapping("checkVerifyCode")
    @ResponseBody
    public Object checkVerifyCode(@RequestParam(value = "verifyCode") String verifyCode, HttpSession session, HttpServletResponse resp) {
        Map map = new HashMap();
        String flag = null;
        if (verifyCode != null) {
            //获取图片中的验证码
            String validateCode = (String) session.getAttribute("validateCode");
            //输入的与图片中的进行比较
            if (validateCode != null && validateCode.toUpperCase().equals(verifyCode.toUpperCase())) {
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
     * 跳转页面
     *
     * @return
     */
    @GetMapping("login")
    public String toLogin() {
        ModelAndView modelAndView = new ModelAndView();
        return "login/login";
    }

    @GetMapping("email")
    public String toLoginEmail() {
        ModelAndView modelAndView = new ModelAndView();
        return "login/loginEmail";
    }

    @GetMapping("stuid")
    public String toLoginStuid() {
        ModelAndView modelAndView = new ModelAndView();
        return "login/loginStu";
    }
    //注销
    @GetMapping("exit")
    public String exit(HttpSession session) {
        session.removeAttribute("userinfo");
        session.removeAttribute("stuidInfo");
        session.removeAttribute("role");
        return "redirect:/index.jsp";
    }

    /**
     * 用户登录验证
     * 张树杰
     * @param
     * @return
     */
    @PostMapping("logincheck")
    public ModelAndView login(Login login, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //查询账号密码返回一个对象
        Login loginInfo = loginService.queryLoginByUsernameAndPassword(login);
        //对象是否为空，验证账号密码是否正确
        if (loginInfo != null) {
            //将登陆信息放入Session中
            session.setAttribute("userinfo", loginInfo);
            //根据用户id查询角色权限
            Role role = roleService.queryByLoginId(loginInfo.getId());
            //查询角色的学号
            Studentid stuidInfo = studentidService.queryByIdq(loginInfo.getId());
            //将角色权限放入Session中
            session.setAttribute("role", role);
            //将学号放入Session中
            session.setAttribute("stuidInfo", stuidInfo);
            modelAndView.setViewName("redirect:/index.jsp");

        } else {
            modelAndView.setViewName("login/login");
            map.put("msg", "账号密码错误！");
        }
        return modelAndView;
    }

    /**
     * 邮箱登录验证
     * 张树杰
     * @param
     * @return
     */
    @PostMapping("loginEmailcheck")
    public ModelAndView login1(Login login, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        //查询邮箱和密码返回一个对象
        Login loginInfo = loginService.queryLoginByEmailAndPassword(login);
        //判断对象是否为空。
        if (loginInfo != null) {
            //将登陆信息放入Session中
            session.setAttribute("userinfo", loginInfo);
            //查询学号
            Studentid stuidInfo = studentidService.queryByIdq(loginInfo.getId());
            //根据邮箱查询角色权限
            Role role = roleService.queryByLoginIdq(loginInfo.getEmail());
            //将角色权限放入Session中
            session.setAttribute("role", role);
            //将学号放入Session中
            session.setAttribute("stuidInfo", stuidInfo);
            modelAndView.setViewName("redirect:/index.jsp");

        } else {
            modelAndView.setViewName("login/loginEmail");
            map.put("msg", "邮箱或密码错误！");
        }
        return modelAndView;
    }

    /**
     * 学号登录验证
     * 张树杰
     * @param
     * @return
     */
    @PostMapping("loginStucheck")
    public ModelAndView login2(HttpSession session, Map<String, Object> map, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        //查询学号返回一个对象
        Studentid stuidInfo = studentidService.queryById(request.getParameter("id"));
       //获取密码
        String s1 = request.getParameter("password");
        //判断学号是存在
        if (stuidInfo != null) {
            //若学号存在查询登录表的所有信息。
            Login loginInfo = loginService.queryAllInfo(request.getParameter("id"));
            //获取登录表的密码
            String s2 = loginInfo.getPassword();
            //验证密码是否相同
            if (s1.equals(s2)) {
                //将登陆表信息放入Session中
                session.setAttribute("userinfo", loginInfo);
                //将学号放入Session中
                session.setAttribute("stuidInfo", stuidInfo.getId());
                //查询角色权限
                Role role = roleService.queryByLoginId(loginInfo.getId());
                //将角色的权限放入Session中
                session.setAttribute("role", role);
                modelAndView.setViewName("redirect:/index.jsp");
            } else {
                modelAndView.setViewName("login/loginStu");
                map.put("msg", "学号或密码错误！");
            }
        } else {
            modelAndView.setViewName("login/loginStu");
            map.put("msg", "学号或密码错误！");
        }
        return modelAndView;
    }
}






