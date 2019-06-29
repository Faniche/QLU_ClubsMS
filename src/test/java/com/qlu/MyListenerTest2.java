package com.qlu;

import com.qlu.entity.Activity;
import com.qlu.entity.File;
import com.qlu.service.ActivityService;
import com.qlu.service.FileService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Project: QLU_ClubsMS
 * @File: MyListenerTest2
 * @Author: 许伟
 * @Date: 2019/6/29 / 9:27
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class MyListenerTest2 {

    @Autowired
    private FileService fileService;
    @Test
    public void test02(){
        List<File> list1 = fileService.findAll();
        for(File file:list1){
            System.out.println(list1.listIterator());
        }
    }
}
