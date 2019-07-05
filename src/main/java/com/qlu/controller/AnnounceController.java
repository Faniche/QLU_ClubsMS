package com.qlu.controller;

import com.qlu.entity.Announce;
import com.qlu.model.AnnounceModel;
import com.qlu.service.AnnounceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * (Announce)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
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

    @GetMapping("/")
    public String toAnnounce(Map<String, Object> map){
        List<AnnounceModel> announceList = announceService.findAll();
        map.put("announceList", announceList);
        return "announce/show";
    }

    @PostMapping("delete")
    @ResponseBody
    public String delete(@RequestParam("id")Integer id){
        boolean result = announceService.deleteById(id);
        return "delete";
    }
}