package com.qlu.controller;

import com.qlu.entity.*;
import com.qlu.model.ClubsModel;
import com.qlu.model.MemberModel;
import com.qlu.service.ClubsService;
import com.qlu.service.LoginService;
import com.qlu.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Poject:QLU_ClubsMS}
 * @File:ClubController}
 * @Author:宰青俊
 * @Dtae:2019/6/28/18:18
 */
@Controller
@RequestMapping("handleClub")
public class ClubController {
    @Resource
    private ClubsService clubsService;

    @Resource
    private MemberService memberService;

    @Resource
    private LoginService loginService;

    /**
     * 社团介绍
     *查询出全部社团
     * @param map
     * @param session
     * @return
     */
    @GetMapping("showclub")
    public String showClubList(Map<String, Object> map, HttpSession session) {
        map.put("clubslist", clubsService.queryAllClubs());
        return "club/club";
    }

    /**
     * 跳转到我的社团界面
     *
     * @param map
     * @param session
     * @return
     */
    @GetMapping("tomyclub")
    public String toMyClub(Map<String, Object> map, HttpSession session) {
        Login login = (Login) session.getAttribute("userinfo");
        Role role = (Role) session.getAttribute("role");
        Member member = new Member();
        member.setMemberid(login.getId());
        List<Member> members = memberService.queryAll(member);
        // 查询出加入的社团
        List<Clubs> joinedClubsList = new ArrayList<>();
        for (Member member1 : members) {
            Clubs clubs = new Clubs();
            clubs = clubsService.queryById(member1.getClubid());
            joinedClubsList.add(clubs);
        }
        //管理员页面，查出我管理的社团
        if (role.getId() == 2) {
            Clubs clubs = new Clubs();
            clubs.setLeaderId(login.getId());
            List<Clubs> managedClubs = clubsService.queryAll(clubs);
            map.put("managedClubs", managedClubs);
        }
        map.put("joinedClubsList", joinedClubsList);
        return "myclub/myclub";
    }

    /**
     * 跳转到加入社团界面
     *
     * @param session
     * @param request
     * @param map
     * @return
     */
    @PostMapping("tojoinclub")
    public String toJoin(HttpSession session, HttpServletRequest request, Map<String, Object> map) {
        String clubid = request.getParameter("clubid");
        String clubname = request.getParameter("clubname");
        session.setAttribute("clubid", clubid);//部门id
        map.put("clubid", clubid);
        map.put("clubname", clubname);
        session.setAttribute("clubname", clubname);
        ModelAndView modelAndView = new ModelAndView();
        Login userinfo = (Login) session.getAttribute("userinfo");//登录用户的ID
        return "club/joinclub";
    }


    /**
     * 跳转到退出社团界面
     * @return
     */
    @PostMapping("toqiutclub")
    public String toQuit(@RequestParam("clubId") Integer clubId, Map<String, Object> map) {
        Clubs club = clubsService.queryById(clubId);
        ClubsModel clubDetail = new ClubsModel();
        clubDetail.setClubs(club);
        Login login = loginService.queryById(club.getLeaderId());
        clubDetail.setLeader(login.getName());
        map.put("clubDetail", clubDetail);
        return "myclub/quitclub";
    }


    /**
     * 解散社团
     * @return
     */

    @PostMapping("tobreakclub")
    public String toBreakClub(@RequestParam("clubId") Integer clubId, Map<String, Object> map) {
        Clubs club = clubsService.queryById(clubId);
        ClubsModel clubDetail = new ClubsModel();
        clubDetail.setClubs(club);
        Login login = loginService.queryById(club.getLeaderId());
        clubDetail.setLeader(login.getName());
        map.put("clubDetail", clubDetail);
        return "myclub/breakclub";
    }

    /**
     * @return
     */
    @PostMapping("breakclub")
    public String breakClub() {
        return "myclub/breakclub";//提交路径要改
    }

    /**
     * 跳转到申请创建社团界面
     *
     * @return
     */
    @PostMapping("tonewclub")
    public String toNewClub() {
        return "club/newclub";
    }

    /**
     * @param id
     * @return
     */
    @PostMapping("id")
    @ResponseBody
    public String Getid(@RequestParam("") Integer id) {
        return "";
    }

    /**
     * 跳转到社团成员添加和删除界面
     * @return
     */
    @PostMapping("toCRUDmember")
    public String toCRUDmember(@RequestParam("clubId") Integer clubId,HttpSession session,Map<String, Object> map){
        Member member = new Member();
        member.setClubid(clubId);
        Clubs clubs=clubsService.queryById(clubId);
        List<MemberModel> members = memberService.queryAllModel(member);
        map.put("members", members);
        map.put("manager",clubs);
        return "myclub/CRUDmember";
    }

}
