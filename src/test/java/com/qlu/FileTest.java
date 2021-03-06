package com.qlu;

import com.qlu.entity.File;
import com.qlu.entity.Message;
import com.qlu.model.FileModel;
import com.qlu.service.FileService;
import com.qlu.service.MemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import static org.junit.Assert.fail;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml", "classpath:mybatis-config.xml"})
public class FileTest {
    @Autowired
    private FileService fileService;

    @Test
    public void fileUp() {
    }


    @Test
    public void queryAll(){
        com.qlu.entity.File file = new com.qlu.entity.File();
        file.setPath("images/icon");
        List<File> files = fileService.queryAll(file);
        System.out.println(files.size());
    }

    @Test
    public void quertAllFile(){
        List<FileModel> list = fileService.findAllFiles();
    }
}