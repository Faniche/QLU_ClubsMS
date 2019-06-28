package com.qlu.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
    @RequestMapping("/fileUP")
    public String fileUp(@RequestParam("info1") MultipartFile file){
        System.out.println();
//文件上传
        //获取原文件名称：
        String fileName=file.getOriginalFilename();//获取原文件名
        File file2=new File("D:\\files", UUID.randomUUID()+fileName);

        try {
            file.transferTo(file2);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "show";

    }

}
