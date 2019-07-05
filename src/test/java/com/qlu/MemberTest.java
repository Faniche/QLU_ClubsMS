package com.qlu;

import com.qlu.entity.Member;
import com.qlu.service.MemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

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

    @Test
    public void clubDestroy() {
        int result = memberService.clubDestroy(15);
        System.out.println(result);
    }

    @Test
    public void queryAll(){
        Member member = new Member();
        member.setClubid(1);
        member.setMemberid(1);
        List<Member> memberList = memberService.queryAll(member);
        System.out.println(memberList.size());
    }
}
