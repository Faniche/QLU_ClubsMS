package com.qlu;

import com.qlu.entity.Role;
import com.qlu.service.RoleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class RoleTest {
    @Autowired
    private RoleService roleService;
    @Test
    public void queryByLoginId(){
        Role role = roleService.queryByLoginId(7);
        System.out.println(role.getName());
        System.out.println(role.getName().equals("SuperAdmin"));
    }

}
