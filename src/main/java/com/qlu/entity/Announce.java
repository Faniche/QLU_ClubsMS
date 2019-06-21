package com.qlu.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Announce)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:53
 */
public class Announce implements Serializable {
    private static final long serialVersionUID = -68709185437943005L;
    
    private Integer id;
    
    private String topic;
    
    private String content;
    
    private Integer authorid;
    
    private Date releasedate;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

}