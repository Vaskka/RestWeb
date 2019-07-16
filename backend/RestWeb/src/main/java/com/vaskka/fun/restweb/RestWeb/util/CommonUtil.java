package com.vaskka.fun.restweb.RestWeb.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CommonUtil {

    /**
     * 获取本地时间String
     * @return String
     */
    public static String getNowTime() {

        Calendar cal = java.util.Calendar.getInstance(java.util.Locale.CHINA);
        SimpleDateFormat sf = new SimpleDateFormat("YYYY-MM-dd HH-mm-ss");
        return sf.format(cal.getTime());
    }

    /**
     * 得到唯一id
     * @return String 计算结果
     */
    public static String getUniqueId() {
        return CommonUtil.getMD5(String.valueOf(new Date().getTime()));
    }

    /**
     * MD5
     * @param str 带计算字符串
     * @return String 计算结果
     */
    public static String getMD5(String str) {
        try {
            // 生成一个MD5加密计算摘要
            MessageDigest md = MessageDigest.getInstance("MD5");
            // 计算md5函数
            md.update(str.getBytes());

            return new BigInteger(1, md.digest()).toString(16);
        } catch (Exception e) {
            // 出现异常返回时间戳
            return String.valueOf(new Date().getTime());
        }
    }
}
