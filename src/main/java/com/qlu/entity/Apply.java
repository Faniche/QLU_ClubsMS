package com.qlu.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Apply)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:53
 */
public class Apply implements Serializable {
    private static final long serialVersionUID = 382210653793102584L;
    
    private Integer id;
    
    private Integer type;
    
    private Integer proposerid;
    
    private Integer clubid;
    
    private Date date;


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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}