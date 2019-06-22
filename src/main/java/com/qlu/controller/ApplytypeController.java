package com.qlu.controller;

import com.qlu.entity.Applytype;
import com.qlu.service.ApplytypeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Applytype)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@RestController
@RequestMapping("applytype")
public class ApplytypeController {
    /**
     * 服务对象
     */
    @Resource
    private ApplytypeService applytypeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Applytype selectOne(Integer id) {
        return this.applytypeService.queryById(id);
    }

}