package com.qlu.entity;

import java.io.Serializable;

/**
 * (Studentid)实体类
 *
 * @author Chare
 * @since 2019-06-27 18:15:27
 */
public class Studentid implements Serializable {
    private static final long serialVersionUID = -32121986354071987L;
    
    private String id;
    
    private Integer loginid;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getLoginid() {
        return loginid;
    }

    public void setLoginid(Integer loginid) {
        this.loginid = loginid;
    }

}