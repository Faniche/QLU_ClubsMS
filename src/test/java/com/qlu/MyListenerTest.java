package com.qlu;

import com.qlu.entity.Activity;
import com.qlu.entity.Clubs;
import com.qlu.listener.MyListener;
import com.qlu.service.ActivityService;
import com.qlu.service.ClubsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListenerTest
 * @Author: 许伟
 * @Date: 2019/6/29 / 8:22
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class MyListenerTest {

    @Autowired
    private ClubsService clubsService;

        @Test
        public void test01(){
               List<Clubs> list = clubsService.findAll();
               for(Clubs clubs : list){ System.out.println(list.toString());
         }


}

}
