package com.qlu.controller;

import com.qlu.entity.Apply;
import com.qlu.entity.Clubs;
import com.qlu.entity.Login;
import com.qlu.entity.Member;
import com.qlu.model.ApplyModel;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import com.qlu.service.MemberService;
import com.qlu.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * (Apply)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
@RequestMapping("apply")
public class ApplyController {
    /**
     * 服务对象
     */
    @Resource
    private ApplyService applyService;

    @Resource
    private ClubsService clubsService;
    @Resource
    private MemberService memberService;

    @PostMapping("joinClubApply")
    public String joinClubApply(HttpServletRequest request, HttpSession session) {
        Login login = (Login) session.getAttribute("userinfo");
        String clubid=request.getParameter("clubid");
        Member member = new Member();
        member.setClubid(new Integer(clubid));
        member.setStatus(0);
        member.setEnrolldate(DateUtil.getTimeStamp());
        member.setMemberid(login.getId());
        member = memberService.insert(member);

        Apply apply = new Apply();
        apply.setClubid(new Integer(clubid));
        apply.setStatus(0);
        apply.setType(3);
        apply.setProposerid(login.getId());
        apply.setDate(DateUtil.getTimeStamp());
        apply = applyService.insert(apply);
        System.out.println("提交加入社团申请");
        return "club/joinclub";
    }

    @PostMapping("createClubApply")
    public String createClubApply(HttpServletRequest request, HttpSession session) {
        Login login = (Login) session.getAttribute("userinfo");
        String name = request.getParameter("name");//社团名字
        String descript = request.getParameter("descript");//社团介绍

        Clubs clubs = new Clubs();
        clubs.setLeaderId(login.getId());//获取登录id
        System.out.println(new Integer(login.getId()));
        clubs.setName(name);
        clubs.setDescript(descript);
        clubs.setStatus(0);
        clubs.setEstablisheddate(DateUtil.getTimeStamp());
        clubs = clubsService.insert(clubs);

        Apply apply = new Apply();
        apply.setProposerid(login.getId());
        apply.setType(new Integer(1));
        apply.setStatus(0);
        apply.setClubid(clubs.getId());
        apply.setDate(DateUtil.getTimeStamp());
        apply = applyService.insert(apply);
        return "club/newclub";
      //  return "redirect:/handelClub/showclub";
    }

    /**
     * 解散社团
     * @param clubId
     * @param session
     * @return
     */
    @PostMapping("destroyClubApply")
    public String destroyClubApply(@RequestParam("clubId") Integer clubId, HttpSession session){
        Login login = (Login) session.getAttribute("userinfo");
        destroyOrQuit(login.getId(), clubId, 2);
        return "redirect:/handelClub/tomyclub";
    }
    /**
     * 退出社团
     * @param clubId
     * @param session
     * @return
     */
    @PostMapping("quitClubApply")
    public String quitClubApply(@RequestParam("clubId") Integer clubId, HttpSession session){
        Login login = (Login) session.getAttribute("userinfo");
        destroyOrQuit(login.getId(), clubId, 4);
        return "redirect:/handelClub/tomyclub";
    }
    private void destroyOrQuit(Integer loginId, Integer clubId, Integer type){
        Apply apply = new Apply();
        apply.setProposerid(loginId);
        apply.setType(type);
        apply.setStatus(0);
        apply.setClubid(clubId);
        apply.setDate(DateUtil.getTimeStamp());
        apply = applyService.insert(apply);
    }
}