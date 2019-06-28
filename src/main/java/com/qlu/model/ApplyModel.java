package com.qlu.model;

import com.qlu.entity.Activity;
import com.qlu.entity.Apply;
import com.qlu.entity.Clubs;

/**
 * @Project: QLU_ClubsMS
 * @File: ApplyModel
 * @Author: 郭雅楠
 * @Date: 2019/6/27 / 14:55
 */
public class ApplyModel {
    // 申请的基本信息
    private Apply apply;
    // 申请类型
    private String applyType;
    // 申请人
    private String proposer;
    // 申请状态
    private String statusStr;
    // 活动申请
    private Activity activity;
    // 创建社团申请
    private Clubs clubs;
    // 申请内容
    private String content;

    public Apply getApply() {
        return apply;
    }

    public void setApply(Apply apply) {
        this.apply = apply;
    }

    public String getApplyType() {
        return applyType;
    }

    public void setApplyType(String applyType) {
        this.applyType = applyType;
    }

    public String getProposer() {
        return proposer;
    }

    public void setProposer(String proposer) {
        this.proposer = proposer;
    }

    public String getStatusStr() {
        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Clubs getClubs() {
        return clubs;
    }

    public void setClubs(Clubs clubs) {
        this.clubs = clubs;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "ApplyModel{" +
                "apply=" + apply +
                ", applyType='" + applyType + '\'' +
                ", proposer='" + proposer + '\'' +
                ", statusStr='" + statusStr + '\'' +
                ", activity=" + activity +
                ", clubs=" + clubs +
                ", content='" + content + '\'' +
                '}';
    }
}
