package com.qlu.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Clubs)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Clubs implements Serializable {
    private static final long serialVersionUID = 794957066246331779L;
    
    private Integer id;
    
    private String name;
    
    private String descript;
    
    private Date establisheddate;


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

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public Date getEstablisheddate() {
        return establisheddate;
    }

    public void setEstablisheddate(Date establisheddate) {
        this.establisheddate = establisheddate;
    }

}