package com.qlu.controller;

import com.qlu.entity.File;
import com.qlu.service.FileService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (File)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
@RequestMapping("file")
public class FileController {
    /**
     * 服务对象
     */
    @Resource
    private FileService fileService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public File selectOne(Integer id) {
        return this.fileService.queryById(id);
    }

}