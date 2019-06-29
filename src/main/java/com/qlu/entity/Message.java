package com.qlu.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.io.Serializable;

/**
 * (Message)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Message implements Serializable {
    private static final long serialVersionUID = -99765025062605541L;
    
    private Integer id;
    
    private String content;
    
    private Integer clubid;

    private Timestamp releasedate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getClubid() {
        return clubid;
    }

    public void setClubid(Integer clubid) {
        this.clubid = clubid;
    }

    public Timestamp getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Timestamp releasedate) {
        this.releasedate = releasedate;
    }
}