package com.qlu.entity;

import java.sql.Timestamp;
import java.io.Serializable;

/**
 * (Activity)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:52
 */
public class Activity implements Serializable {
    private static final long serialVersionUID = 113060379814753483L;
    
    private Integer id;
    
    private Integer clubsid;
    
    private String topic;
    
    private Timestamp time;
    
    private String location;
    
    private Integer money;
    
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClubsid() {
        return clubsid;
    }

    public void setClubsid(Integer clubsid) {
        this.clubsid = clubsid;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}