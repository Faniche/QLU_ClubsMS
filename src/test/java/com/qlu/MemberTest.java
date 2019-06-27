package com.qlu;

import com.qlu.service.MemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Project: QLU_ClubsMS
 * @File: MemberTest
 * @Author: 郭雅楠
 * @Date: 2019/6/25 / 15:46
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class MemberTest {
    @Autowired
    private MemberService memberService;

    @Test
    public void deleteById(){
        boolean result = memberService.deleteByMemberId(32);
        System.out.println(result);
    }
}
