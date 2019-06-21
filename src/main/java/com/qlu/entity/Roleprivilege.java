package com.qlu.entity;

import java.io.Serializable;

/**
 * (Roleprivilege)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Roleprivilege implements Serializable {
    private static final long serialVersionUID = 314581753187888265L;
    
    private Integer id;
    
    private Integer roleid;
    
    private Integer privilegeid;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getPrivilegeid() {
        return privilegeid;
    }

    public void setPrivilegeid(Integer privilegeid) {
        this.privilegeid = privilegeid;
    }

}