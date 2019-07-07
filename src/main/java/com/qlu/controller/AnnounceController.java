package com.qlu.controller;

import com.qlu.entity.Announce;
import com.qlu.entity.Login;
import com.qlu.model.AnnounceModel;
import com.qlu.service.AnnounceService;
import com.qlu.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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

    @PostMapping("release")
    public String release(HttpSession session, HttpServletRequest request, Map<String, Object> map){
        String topic = request.getParameter("topic");
        String content = request.getParameter("content");
        Announce announce = new Announce();
        Login login = (Login) session.getAttribute("userinfo");
        announce.setAuthorid(login.getId());
        announce.setTopic(topic);
        announce.setContent(content);
        announce.setReleasedate(DateUtil.getTimeStamp());
        announce = announceService.insert(announce);
        if (announce != null) {
            session.setAttribute("msg", "发送成功！");
        } else {
            session.setAttribute("msg", "发布失败！");
        }
        return "redirect:/announce/";
    }
}