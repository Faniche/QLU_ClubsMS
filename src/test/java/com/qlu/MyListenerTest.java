package com.qlu;

import com.qlu.entity.Activity;
import com.qlu.entity.Clubs;
import com.qlu.entity.File;
import com.qlu.listener.MyListener;
import com.qlu.service.ActivityService;
import com.qlu.service.ClubsService;
import com.qlu.service.FileService;
import com.qlu.util.DateUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListenerTest
 * @Author: 许伟
 * @Date: 2019/6/29 / 8:22
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class MyListenerTest {

    @Autowired
    private ClubsService clubsService;
    @Autowired
    private ActivityService activityService;
    @Autowired
    private FileService fileService;

    //查询所有社团
    @Test
    public void test01() {
        List<Clubs> list = clubsService.findAll();
        for (Clubs clubs : list) {
            System.out.println(list.toString());
        }
    }

    //查询最近三天的活动
    @Test
    public void test02() {
//        Date date = DateUtil.getTimeStamp();
//        long currentDate = date.getTime();
//        //1天= 86400000milliseconds
//        long supDate = currentDate - 86400000 * 3;
//        long infDate = currentDate + 86400000 * 3;
//        Timestamp supTime = new Timestamp(supDate);
//        Timestamp infTime = new Timestamp(infDate);
//        List<Activity> activityList = activityService.findTimeRange(supTime, infTime);
        Date date = DateUtil.getTimeStamp();
        long currentDate = date.getTime();
        //1天= 86400000milliseconds
        long supDate = currentDate - 86400000 * 3;
        long infDate = currentDate + 86400000 * 3;
        Timestamp supTime = new Timestamp(supDate);
        Timestamp infTime = new Timestamp(infDate);
        List<Activity> activityList = activityService.findTimeRange(supTime, infTime);
        System.out.println(activityList.size());
        System.out.println(activityList.size());
        for (Activity activity : activityList) {
            System.out.println(activity.getTopic());
        }
    }

    //查询最新的活动项目
    @Test
    public void test03() {
        Activity activity = activityService.findOne();
        System.out.println(activity.getTopic());
    }

    //通过路径模糊查询所有
    @Test
    public void test04() {
        File file = new File();
        file.setPath("images/icon");
        List<File> fileList = fileService.queryAll(file);
        System.out.println(fileList.size());
    }

    //建立Map集合
    @Test
    public void test05() {
        File file = new File();
        file.setPath("images/icon");
        List<File> fileList = fileService.queryAll(file);
        Map<String, String> clubsIcon = new HashMap<String, String>();
        for (File file1 : fileList) {
            clubsIcon.put(file1.getFilename(), file1.getPath());
        }
        System.out.println(fileList.size());
    }


}
