package com.qlu.controller;

import com.qlu.entity.Announce;
import com.qlu.service.AnnounceService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Announce)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@RestController
@RequestMapping("announce")
public class AnnounceController {
    /**
     * 服务对象
     */
    @Resource
    private AnnounceService announceService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Announce selectOne(Integer id) {
        return this.announceService.queryById(id);
    }

}