package com.qlu.controller;

import com.qlu.entity.*;
import com.qlu.service.ApplyService;
import com.qlu.service.ClubsService;
import com.qlu.service.LoginroleService;
import com.qlu.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * (Clubs)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:01
 */
@Controller
@RequestMapping("clubs")
public class ClubsController {
    /**
     * 服务对象
     */
    @Resource
    private ClubsService clubsService;

    @Resource
    private ApplyService applyService;

    @Resource
    private MemberService memberService;

    @Resource
    private LoginroleService loginroleService;

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

    @GetMapping("myClubs")
    public String myClubs() {
        return "club/club";
    }

    /**
     * 同意创建社团申请
     * @param applyId
     * @param clubId
     * @return
     */
    @ResponseBody
    @PostMapping("create_agree")
    public boolean create_agree(@RequestParam("applyId") Integer applyId,
                                @RequestParam("clubId") Integer clubId, HttpSession session) {
        changeApplyAndClubsStatus(applyId, 1, clubId, 1);
        // 修改loginrole中的角色记录
        Login userinfo = (Login) session.getAttribute("userinfo");
        Clubs clubs = new Clubs();
        clubs.setLeaderId(userinfo.getId());
        List<Clubs> manageClubs = clubsService.queryAll(clubs);
        if (manageClubs.isEmpty()){
            Loginrole loginrole = loginroleService.queryById(userinfo.getId());
            loginrole.setRoleid(2);
            loginroleService.update(loginrole);
        }
        return true;
    }

    /**
     * 拒绝社团创建申请
     * @param applyId
     * @param clubId
     * @return
     */
    @PostMapping("create_deny")
    @ResponseBody
    public boolean create_deny(@RequestParam("applyId") Integer applyId,
                               @RequestParam("clubId") Integer clubId, HttpSession session) {
        changeApplyAndClubsStatus(applyId, 2, clubId, 0);
        // 修改loginrole中的角色记录
        Login userinfo = (Login) session.getAttribute("userinfo");
        Clubs clubs = new Clubs();
        clubs.setLeaderId(userinfo.getId());
        List<Clubs> manageClubs = clubsService.queryAll(clubs);
        if (manageClubs.size() == 1){
            Loginrole loginrole = loginroleService.queryById(userinfo.getId());
            loginrole.setRoleid(3);
            loginroleService.update(loginrole);
        }
        return true;
    }

    /**
     * 同意解散社团申请
     * @param applyId
     * @param clubId
     * @return
     */
    @PostMapping("destroy_agree")
    @ResponseBody
    public boolean destroy_agree(@RequestParam("applyId") Integer applyId, @RequestParam("clubId") Integer clubId) {
        changeApplyAndClubsStatus(applyId, 1, clubId, 0);
        // 修改成员表
        memberService.clubDestroy(clubId);
        return true;
    }

    /**
     * 拒绝解散社团申请
     * @param applyId
     * @param clubId
     * @return
     */
    @PostMapping("destroy_deny")
    @ResponseBody
    public boolean destroy_deny(@RequestParam("applyId") Integer applyId, @RequestParam("clubId") Integer clubId) {
        changeApplyAndClubsStatus(applyId, 2, clubId, 1);
        return true;
    }

    /**
     * 同意加入社团申请
     * @param applyId
     * @param clubId
     * @param proposerid
     * @return
     */
    @PostMapping("join_agree")
    @ResponseBody
    public boolean join_agree(@RequestParam("applyId") Integer applyId,
                              @RequestParam("clubId") Integer clubId, @RequestParam("proposerid") Integer proposerid) {
        changeApplyAndMemberStatus(applyId, 1, clubId, proposerid, 1);
        return true;
    }

    /**
     * 拒绝加入社团申请
     * @param applyId
     * @param clubId
     * @param proposerid
     * @return
     */
    @PostMapping("join_deny")
    @ResponseBody
    public boolean join_deny(@RequestParam("applyId") Integer applyId,
                             @RequestParam("clubId") Integer clubId, @RequestParam("proposerid") Integer proposerid) {
        changeApplyAndMemberStatus(applyId, 2, clubId, proposerid, 0);
        return true;
    }

    /**
     * 同意推出社团申请
     * @param applyId
     * @param clubId
     * @param proposerid
     * @return
     */
    @PostMapping("quit_agree")
    @ResponseBody
    public boolean quit_agree(@RequestParam("applyId") Integer applyId,
                              @RequestParam("clubId") Integer clubId, @RequestParam("proposerid") Integer proposerid) {
        changeApplyAndMemberStatus(applyId, 1, clubId, proposerid, 0);
        return true;
    }

    /**
     * 拒绝推出社团申请
     * @param applyId
     * @param clubId
     * @param proposerid
     * @return
     */
    @PostMapping("quit_deny")
    @ResponseBody
    public boolean quit_deny(@RequestParam("applyId") Integer applyId,
                             @RequestParam("clubId") Integer clubId, @RequestParam("proposerid") Integer proposerid) {
        changeApplyAndMemberStatus(applyId, 2, clubId, proposerid, 1);
        return true;
    }


    private void changeApplyAndClubsStatus(int applyId, int applyStatus, int clubId, int clubStatus) {
        Apply apply = applyService.queryById(applyId);
        apply.setStatus(applyStatus);
        applyService.update(apply);
        Clubs clubs = clubsService.queryById(clubId);
        if (clubs.getStatus() != clubStatus) {
            clubs.setStatus(clubStatus);
            clubsService.update(clubs);
        }
    }

    private void changeApplyAndMemberStatus(int applyId, int applyStatus, int clubId, int proposerid, int memberStatus){
        Apply apply = applyService.queryById(applyId);
        apply.setStatus(applyStatus);
        applyService.update(apply);
        Member member = new Member();
        // 根据clubIdh和memberId在member表中找到对应的记录
        member.setClubid(clubId);
        member.setMemberid(proposerid);
        member = memberService.queryAll(member).get(0);
        System.out.println(memberService.queryAll(member).get(0));
        if (member.getStatus() != memberStatus) {
            member.setStatus(memberStatus);
            memberService.update(member);
        }
    }
}