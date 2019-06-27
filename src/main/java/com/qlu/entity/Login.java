package com.qlu.entity;

import java.io.Serializable;

/**
 * (Login)实体类
 *
 * @author Chare
 * @since 2019-06-21 15:12:54
 */
public class Login implements Serializable {
    private static final long serialVersionUID = 296021403249822953L;
    
    private Integer id;
    
    private String username;
    
    private String name;
    
    private String password;

    private String email;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}