package com.qlu.controller;

import com.qlu.entity.Clubs;
import com.qlu.entity.Login;
import com.qlu.entity.Member;
import com.qlu.model.MemberModel;
import com.qlu.service.ClubsService;
import com.qlu.service.LoginService;
import com.qlu.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * (Member)表控制层
 *
 * @author Chare
 * @since 2019-06-21 22:35:28
 */
@Controller
@RequestMapping("member")
public class MemberController {
    /**
     * 服务对象
     */
    @Resource

    private MemberService memberService;

    @Resource LoginService loginService;

    @Resource ClubsService clubsService;
    /**
     * 跳转到insert页面
     * @return
     */
    @GetMapping("insert")
    public String insert() {
        return "club/insert";
    }

    /**
     * 添加新社员并返回添加界面
     * @param memberId
     * @param clubId
     * @return ModelAndView
     */
    @PostMapping("insert_member")
    public ModelAndView insertMember(Integer memberId, Integer clubId) {
        Member member = new Member();
        member.setMemberid(memberId);
        member.setClubid(clubId);
        ModelAndView modelAndView = new ModelAndView();
        memberService.insert(member);
        modelAndView.setViewName("club/insert");
        modelAndView.addObject("msg", "添加成功");
        return modelAndView;
    }

    /**
     * 根据id删除指定的成员并返回社团管理界面
     */
//    @PostMapping("delete")
//    public ModelAndView delete(Integer id) {
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("club/clubsManage");
//        boolean result = memberService.deleteByMemberId(id);
//        modelAndView.addObject("msg", "删除成功");
//        return modelAndView;
//
//    }

    /**
     * 根据条件查询出符合条件的社团成员
     * @param member
     * @return
     */
    @PostMapping("findMemberByLimit")
    public ModelAndView findMemberByLimit(Member member) {
        ModelAndView modelAndView = new ModelAndView();
        List<Member> allMembers = memberService.queryAll(member);
        modelAndView.addObject("allMembers", allMembers);
        modelAndView.setViewName("club/clubsManage");
        return modelAndView;
    }

    /**
     * 成员管理删除成员
     * @param request
     * @return
     */
    @PostMapping("delete")
    public String delete(HttpServletRequest request,Map<String, Object> map){
        Integer memberid =Integer.valueOf(request.getParameter("memberid")) ;
        Integer clubId =Integer.valueOf(request.getParameter("clubid")) ;
        Member member = new Member();
        member.setMemberid(memberid);
        member.setClubid(clubId);
        Boolean result1 =memberService.deleteByMemberId(member);

        Member member1 = new Member();
        member1.setClubid(clubId);
        Clubs clubs=clubsService.queryById(clubId);
        List<MemberModel> members = memberService.queryAllModel(member1);
        map.put("members", members);
        map.put("manager",clubs);
        return "myclub/CRUDmember";
    }
}