package com.qlu.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * (Apply)实体类
 *
 * @author Chare
 * @since 2019-06-26 16:53:57
 */
public class Apply implements Serializable {
    private static final long serialVersionUID = 415516069980580983L;
    
    private Integer id;
    
    private Integer type;
    
    private Integer proposerid;
    
    private Integer clubid;

    private Timestamp date;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getProposerid() {
        return proposerid;
    }

    public void setProposerid(Integer proposerid) {
        this.proposerid = proposerid;
    }

    public Integer getClubid() {
        return clubid;
    }

    public void setClubid(Integer clubid) {
        this.clubid = clubid;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}