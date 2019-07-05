package com.qlu.model;

import com.qlu.entity.Member;
import jdk.net.SocketFlow;

import java.sql.Timestamp;

/**
 * @Project: QLU_ClubsMS
 * @File: MemberModel
 * @Author: 郭雅楠
 * @Date: 2019/7/3 / 9:14
 */
public class MemberModel {
    private Member member;
    private String memberName;
    private String clubName;

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

}
