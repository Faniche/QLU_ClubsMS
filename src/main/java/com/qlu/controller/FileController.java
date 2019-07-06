package com.qlu.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.qlu.entity.Login;
import com.qlu.entity.Role;
import com.qlu.model.FileModel;
import com.qlu.service.FileService;
import com.qlu.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("file")
public class FileController {

    @Resource
    private FileService fileService;

    @GetMapping("/")
    public String file(Map<String, Object> map) {
        List<FileModel> fileList = fileService.findAllFiles();
        map.put("fileList", fileList);
        return "file/show";
    }

    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, HttpSession session, Map<String, Object> map) {
        // 获取当期项目的绝对路径
        String path = session.getServletContext().getRealPath("/");
        // 获取源文件名称
        String fileName = file.getOriginalFilename();
        Login login = (Login) session.getAttribute("userinfo");
        Role role = (Role) session.getAttribute("role");

        com.qlu.entity.File uploadFile = new com.qlu.entity.File();
        uploadFile.setFilename(fileName);
        uploadFile.setAuthorid(login.getId());
        uploadFile.setReleasedate(DateUtil.getTimeStamp());
        // 超级管理员
        if (role.getId() == 1) {
            path += "files\\college\\";
            uploadFile.setPath("files/college/" + fileName);
        } else {
            // 社长
            path += "files\\clubs\\";
            uploadFile.setPath("files/clubs/" + fileName);
        }
        File fileUploadToServer = new File(path, fileName);
        try {
            //将要上传的文件传到file
            file.transferTo(fileUploadToServer);
            uploadFile = fileService.insert(uploadFile);
            map.put("msg", "上传成功！");
        } catch (IllegalStateException e){
            e.printStackTrace();
            map.put("msg", "上传失败！");
        } catch (IOException e){
            e.printStackTrace();
            map.put("msg", "上传失败！");
        }
        map.put("msg", "上传成功！");
        List<FileModel> fileList = fileService.findAllFiles();
        map.put("fileList", fileList);
        return "file/show";
    }

    @PostMapping("delete")
    @ResponseBody
    public void delete(@RequestParam("fileId")Integer fileId){
        boolean result = fileService.deleteById(fileId);
    }
}
