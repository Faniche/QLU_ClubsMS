package com.qlu.model;

import com.qlu.entity.Apply;

/**
 * @Project: QLU_ClubsMS
 * @File: ApplyModel
 * @Author: 郭雅楠
 * @Date: 2019/6/27 / 14:55
 */
public class ApplyModel extends Apply {
    private String applyType;
    private String proposer;
    private String statusStr;

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

    @Override
    public String toString() {
        return "ApplyModel{" +
                "applyType='" + applyType + '\'' +
                ", proposer='" + proposer + '\'' +
                ", statusStr='" + statusStr + '\'' +
                '}';
    }
}
