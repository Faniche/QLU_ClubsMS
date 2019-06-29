package com.qlu.listener;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListener
 * @Author: 许伟
 * @Date: 2019/6/28 / 17:37
 */
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.qlu.entity.File;
import com.qlu.entity.Activity ;
import com.qlu.entity.Clubs ;
import com.qlu.service.ActivityService;
import com.qlu.service.ClubsService;
import com.qlu.service.FileService;

/**
 * Application Lifecycle Listener implementation class MyListener
 *
 */
@WebListener
public class MyListener implements ServletContextListener {

//    @Autowired
//    private ActivityService stuService;
//    @Autowired
//    private ClubsService clubsService;
//    @Autowired
//    private FileService fileService;

    /**
     * Default constructor.
     */
    public MyListener() {//
        System.out.println("MyListener.MyListener()");
    }

    /**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  {
        System.out.println("MyListener.contextDestroyed()");
    }

    /**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */

    /*主要代码*/
    public void contextInitialized(ServletContextEvent evt)  { 	//初始化项目
        ServletContext application= evt.getServletContext();
        System.out.println("application:"+application);

        //WebApplicationContext context=WebApplicationContextUtils.getRequiredWebApplicationContext(application);
        WebApplicationContext context=	WebApplicationContextUtils.getWebApplicationContext(application);
        System.out.println("context:"+context);


        //获取ActivityService对象
        ActivityService activityService=context.getBean(ActivityService.class);
        //查询所有活动项目，
        List<Activity> activityList = activityService.findAll();
        //查询最新的活动项目
        Activity activity = activityService.queryById(1);
        System.out.println(activity);


        //获取ClubsService对象
        ClubsService clubsService=context.getBean(ClubsService.class);
        //查询所有社团，
        List<Clubs> clubsList = clubsService.findAll();


        // 获取社团LOGO
        //获取FileService对象
        FileService fileService=  context.getBean(FileService.class);
        //查询所有图片及路径名
        List<File> fileList = fileService.findAll();
        //建立Map集合
        Map<String,String> clubsIcon = new HashMap<String,String>();
        for(File file: fileList){
            System.out.println(file.getFilename());
            clubsIcon.put(file.getFilename(),file.getPath());
        }
        //通过路径模糊查询所有
        com.qlu.entity.File file = new com.qlu.entity.File();
        file.setPath("images/icon");
        List<com.qlu.entity.File> files = fileService.queryAll(file);


        //存储所有的活动项目到application
        application.setAttribute("activityList",activityList);
        //存储最新的活动项目到application
        application.setAttribute("activity",activity);
        //存储所有社团到application
        application.setAttribute("clubsList",clubsList);
        //存储Map集合
        application.setAttribute("clubsIcon",clubsIcon);
        //存储图片集合
        application.setAttribute("files",files);
    }



}

