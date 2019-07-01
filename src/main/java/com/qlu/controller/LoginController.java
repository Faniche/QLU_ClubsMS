package com.qlu.controller;
import com.qlu.util.ImageUtil;
import com.qlu.entity.Studentid;
import com.qlu.service.StudentidService;
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
     * 验证码
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/checkCaptchaCode.do", method = RequestMethod.GET)
    public void validateCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //第一个参数是生成的验证码，第二个参数是生成的图片
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
    /**
     * @RequestMapping(value="/checkVerifyCode.action",method= RequestMethod.POST)
     * @ResponseBody public Object checkVerifyCode(@RequestParam(value = "verifyCode") String verifyCode,HttpServletRequest req, HttpServletResponse resp){
     * Map map=new HashMap();
     * String flag = null;
     * if(verifyCode!=null){
     * HttpSession session = req.getSession();
     * //获取图片中的验证码
     * String validateCode= (String) session.getAttribute("captcha");
     * //输入的与图片中的进行比较
     * if(validateCode!=null&&validateCode.equals(verifyCode.toUpperCase())){
     * map.put("valid", true);
     * flag = "true";
     * }else{
     * map.put("valid", false);
     * flag = "false";
     * }
     * }else{
     * map.put("valid", false);
     * flag = "false";
     * }
     * return flag;
     * }
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

    /**
     * 用户登录验证
     * 张树杰
     *
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
            Studentid stuidInfo = studentidService.queryByIdq(loginInfo.getId());
            session.setAttribute("role", role);
            session.setAttribute("stuidInfo",stuidInfo);

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

    /**
     * 邮箱登录验证
     * 张树杰
     *
     * @param
     * @return
     */
    @PostMapping("loginEmailcheck")
    public ModelAndView login1(Login login, HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        Login loginInfo = loginService.queryLoginByEmailAndPassword(login);

        if (loginInfo != null) {
            session.setAttribute("userinfo", loginInfo);
            Studentid stuidInfo = studentidService.queryByIdq(loginInfo.getId());
            Role role = roleService.queryByLoginIdq(loginInfo.getEmail());
            session.setAttribute("role", role);
            session.setAttribute("stuidInfo",stuidInfo);
            if (role.getName().equals("SuperAdmin")) {
                modelAndView.setViewName("admin/index");
            } else {
                modelAndView.setViewName("redirect:/index.jsp");
            }
        } else {
            modelAndView.setViewName("login/loginEmail");
            map.put("msg", "邮箱或密码错误！");
        }
        return modelAndView;
    }

    /**
     * 学号登录验证
     * 张树杰
     *
     * @param
     * @return
     */
    @PostMapping("loginStucheck")
    public ModelAndView login2(HttpSession session, Map<String, Object> map, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        Studentid stuidInfo = studentidService.queryById(request.getParameter("id"));
        String s1 = request.getParameter("password");
        if (stuidInfo != null) {
            Login loginInfo = loginService.queryAllmessages(request.getParameter("id"));
            String s2 = loginInfo.getPassword();
            if (s1.equals(s2)) {

                session.setAttribute("userinfo", loginInfo);
                session.setAttribute("stuidInfo", stuidInfo.getId());


                Role role = roleService.queryByLoginId(loginInfo.getId());

                session.setAttribute("role", role);
                if (role.getName().equals("SuperAdmin")) {
                    modelAndView.setViewName("admin/index");
                } else {
                    modelAndView.setViewName("redirect:/index.jsp");
                }
            } else {
                modelAndView.setViewName("login/loginStu");
                map.put("msg", "学号或密码错误！");
            }
        }else{
            modelAndView.setViewName("login/loginStu");
            map.put("msg", "学号或密码错误！");
        }
        return modelAndView;
    }
    /**张树杰
     * 注册
     */

}






