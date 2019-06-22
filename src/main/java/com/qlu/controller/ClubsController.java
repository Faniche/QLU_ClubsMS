package com.qlu.controller;

import com.qlu.entity.Clubs;
import com.qlu.service.ClubsService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Clubs)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@RestController
@RequestMapping("clubs")
public class ClubsController {
    /**
     * 服务对象
     */
    @Resource
    private ClubsService clubsService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Clubs selectOne(Integer id) {
        return this.clubsService.queryById(id);
    }

}