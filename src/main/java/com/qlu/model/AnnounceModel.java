package com.qlu.model;

import com.qlu.entity.Announce;

/**
 * @Project: QLU_ClubsMS
 * @File: AnnounceModel
 * @Author: 郭雅楠
 * @Date: 2019/7/4 / 18:05
 */
public class AnnounceModel {
    private Announce announce;
    private String author;

    public Announce getAnnounce() {
        return announce;
    }

    public void setAnnounce(Announce announce) {
        this.announce = announce;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
