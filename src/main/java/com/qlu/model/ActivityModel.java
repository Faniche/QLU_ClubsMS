package com.qlu.model;

import com.qlu.entity.Activity;

/**
 * @Project: QLU_ClubsMS
 * @File: ActivityModel
 * @Author: 郭雅楠
 * @Date: 2019/6/28 / 10:39
 */
public class ActivityModel {
    private Activity activity;
    private String clubName;
    private String status;

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
