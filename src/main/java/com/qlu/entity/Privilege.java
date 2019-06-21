package com.qlu.entity;

import java.io.Serializable;

/**
 * (Privilege)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Privilege implements Serializable {
    private static final long serialVersionUID = -64999933753095330L;
    
    private Integer id;
    
    private String model;
    
    private String link;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

}