package com.qlu;

import com.qlu.entity.Activity;
import com.qlu.service.ActivityService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListenerTest1
 * @Author: 许伟
 * @Date: 2019/6/29 / 9:25
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class MyListenerTest1 {

    @Autowired
    private ActivityService activityService;
    @Test
    public void test02(){
        List<Activity> list1 = activityService.findAll();
        for(Activity activity:list1){
            System.out.println(list1.toString());
        }
    }
    @Test
    public void test03(){
        Activity activity=activityService.queryById(1);
        System.out.println(activity.getTopic());
    }
}
