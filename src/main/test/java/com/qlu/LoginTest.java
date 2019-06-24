package com.qlu;

import com.qlu.dao.LoginDao;
import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class LoginTest {

    @Autowired
    private LoginService loginService;

    @Test
    public void selectOne(){
        Login login = null;
        login = loginService.queryById(3);
        try {
            if (login == null) {
                System.out.println(" ");
            } else {
                System.out.println(login.getName());
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    @Test
    public void findByName(){
        Login login = new Login();
        login.setName("云天明");
        List<Login> logins = loginService.queryAll(login);
        for (Login login1 : logins){
            System.out.println(login1.getName() + "\t" + login1.getUsername());
        }
    }
}
