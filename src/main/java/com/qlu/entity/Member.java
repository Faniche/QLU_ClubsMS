package com.qlu.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.io.Serializable;

/**
 * (Member)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Member implements Serializable {
    private static final long serialVersionUID = -36611061503163907L;
    
    private Integer id;
    
    private Integer memberid;
    
    private Integer clubid;
    
    private Timestamp enrolldate;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMemberid() {
        return memberid;
    }

    public void setMemberid(Integer memberid) {
        this.memberid = memberid;
    }

    public Integer getClubid() {
        return clubid;
    }

    public void setClubid(Integer clubid) {
        this.clubid = clubid;
    }

    public Timestamp getEnrolldate() {
        return enrolldate;
    }

    public void setEnrolldate(Timestamp enrolldate) {
        this.enrolldate = enrolldate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}