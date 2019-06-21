package com.qlu.entity;

import java.io.Serializable;

/**
 * (Loginrole)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Loginrole implements Serializable {
    private static final long serialVersionUID = -34015491473041857L;
    
    private Integer id;
    
    private Integer userid;
    
    private Integer roleid;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

}