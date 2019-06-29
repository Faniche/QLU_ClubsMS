package com.qlu.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.io.Serializable;

/**
 * (File)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class File implements Serializable {
    private static final long serialVersionUID = 483120918809474732L;
    
    private Integer id;
    
    private String filename;
    
    private String path;
    
    private Timestamp releasedate;
    
    private Integer authorid;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Timestamp getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Timestamp releasedate) {
        this.releasedate = releasedate;
    }

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

}