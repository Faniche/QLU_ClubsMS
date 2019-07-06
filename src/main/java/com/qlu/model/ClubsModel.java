package com.qlu.model;

import com.qlu.entity.Clubs;

/**
 * @Project: QLU_ClubsMS
 * @File: ClubsModel
 * @Author: 郭雅楠
 * @Date: 2019/7/6 / 22:08
 */
public class ClubsModel {
    private Clubs clubs;
    private String leader;
    private String status;

    public Clubs getClubs() {
        return clubs;
    }

    public void setClubs(Clubs clubs) {
        this.clubs = clubs;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
