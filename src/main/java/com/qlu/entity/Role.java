package com.qlu.entity;

import java.io.Serializable;

/**
 * (Role)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Role implements Serializable {
    private static final long serialVersionUID = 746355591123002873L;
    
    private Integer id;
    
    private String name;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}