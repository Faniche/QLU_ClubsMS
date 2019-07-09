package com.qlu.interceptor;

import com.qlu.entity.Login;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.handler.Handler;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

/**
 * @Project: QLU_ClubsMS
 * @File: LoginInterceptor
 * @Author:张树杰
 * @Date: 2019/7/5 / 11:41
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        HttpSession session = request.getSession();
        //获取Session中的登录信息userinfo
        Login userinfo = (Login) session.getAttribute("userinfo");
        //根据userinfo来确定是否拦截
        if (userinfo != null) {
            return true;
        }
        response.sendRedirect(request.getContextPath() + "/login/");
        return false;
    }
}