package com.qlu.listener;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListener
 * @Author: 许伟
 * @Date: 2019/6/28 / 17:37
 */

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


import com.qlu.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.qlu.entity.File;
import com.qlu.entity.Activity;
import com.qlu.entity.Clubs;
import com.qlu.service.ActivityService;
import com.qlu.service.ClubsService;
import com.qlu.service.FileService;

/**
 * Application Lifecycle Listener implementation class MyListener
 */
@WebListener
public class MyListener implements ServletContextListener {
    /**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
    }

    /**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */

    public void contextInitialized(ServletContextEvent evt) {    //初始化项目
        ServletContext application = evt.getServletContext();
        WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);

        //查询最近三天的活动项目
        //查询最新的活动项目
        ActivityService activityService = context.getBean(ActivityService.class);
        Date date = DateUtil.getTimeStamp();
        long currentDate = date.getTime();
        long supDate = currentDate - 86400000 * 3;
        long infDate = currentDate + 86400000 * 3;
        Timestamp supTime = new Timestamp(supDate);
        Timestamp infTime = new Timestamp(infDate);
        List<Activity> activityList = activityService.findTimeRange(supTime, infTime);
        Activity latestActivity = activityService.findOne();

        //查询所有社团，
        ClubsService clubsService = context.getBean(ClubsService.class);
        List<Clubs> clubsList = clubsService.findAll();

        //通过路径模糊查询所有,获取社团LOGO
        FileService fileService = context.getBean(FileService.class);
        List<File> fileList = fileService.findAllIcons();
        Map<String, String> clubsIcon = new HashMap<String, String>();
        for (File file1 : fileList) {
            clubsIcon.put(file1.getFilename(), file1.getPath());
        }
        Long latestActivityDate = latestActivity.getTime().getTime();

        //存储所有的活动项目到application
        application.setAttribute("activityList", activityList);
        //存储最新的活动项目到application
        application.setAttribute("latestActivity", latestActivity);
        //最新活动的日期
        application.setAttribute("latestActivityDate", latestActivityDate);
        //存储所有社团到application
        application.setAttribute("clubsList", clubsList);
        //存储Map集合
        application.setAttribute("clubsIcon", clubsIcon);
    }
}

