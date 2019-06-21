package com.qlu.entity;

import java.io.Serializable;

/**
 * (Applytype)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Applytype implements Serializable {
    private static final long serialVersionUID = -24319857074325746L;
    
    private Integer id;
    
    private String type;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}