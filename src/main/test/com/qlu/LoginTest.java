package com.qlu;

import com.qlu.dao.LoginDao;
import com.qlu.entity.Login;
import com.qlu.service.LoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-controller.xml","classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class LoginTest {

    @Autowired
    private LoginDao loginDao;

    @Test
    public void selectOne(){
        Login login = null;
        System.out.println(loginDao.equals(null));
        login = loginDao.queryById(1);
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
}
