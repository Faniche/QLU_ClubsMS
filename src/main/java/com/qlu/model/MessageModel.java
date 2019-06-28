package com.qlu.model;

import com.qlu.entity.Message;

/**
 * @Project: QLU_ClubsMS
 * @File: Message
 * @Author: 郭雅楠
 * @Date: 2019/6/27 / 14:33
 */
public class MessageModel {

    private Message message;

    private String club;

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }
}
