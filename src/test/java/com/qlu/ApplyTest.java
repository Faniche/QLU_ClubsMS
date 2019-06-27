package com.qlu;

import com.qlu.dao.ApplyDao;
import com.qlu.dao.ApplytypeDao;
import com.qlu.dao.LoginDao;
import com.qlu.entity.Apply;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Project: QLU_ClubsMS
 * @File: ApplyTest
 * @Author: 郭雅楠
 * @Date: 2019/6/27 / 18:35
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class ApplyTest {

    @Autowired
    private ApplyService applyService;

    @Test
    public void queryAllByLoginId(){
        List<ApplyModel> applyModels = applyService.queryAllByLoginId(2);
        for (ApplyModel applyModel : applyModels) {
            System.out.println(applyModel.toString());
        }
    }
}
