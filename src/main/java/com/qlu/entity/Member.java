package com.qlu.entity;

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
    
    private Date enrolldate;


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

    public Date getEnrolldate() {
        return enrolldate;
    }

    public void setEnrolldate(Date enrolldate) {
        this.enrolldate = enrolldate;
    }

}