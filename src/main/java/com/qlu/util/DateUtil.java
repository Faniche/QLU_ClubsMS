package com.qlu.util;

import java.sql.Timestamp;

/**
 * @Project: QLU_ClubsMS
 * @File: GetTimeStamp
 * @Author: 郭雅楠
 * @Date: 2019/6/28 / 18:35
 */
public class DateUtil {
    public static Timestamp getTimeStamp(){
        Timestamp timestamp = new Timestamp(new java.util.Date().getTime());
        return timestamp;
    }
}
