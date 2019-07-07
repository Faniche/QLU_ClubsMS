package com.qlu.model;

import com.qlu.entity.File;

/**
 * @Project: QLU_ClubsMS
 * @File: FileModel
 * @Author: 郭雅楠
 * @Date: 2019/7/6 / 10:28
 */
public class FileModel {

    private File file;

    private String author;

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
