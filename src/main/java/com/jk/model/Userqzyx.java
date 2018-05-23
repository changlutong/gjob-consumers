package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/16.
 */
public class Userqzyx implements Serializable{
    private static final long serialVersionUID = -8228048597140413758L;
    /**
     *   qzyxxz,qzyxdd,qzyxcszy,qzyxyx,qzyxgzzt
     */

    /**
     * id
     */
    private String userqzyxid;
    /**
     *求职性质
     */
    private Integer qzyxxz;
    /**
     *求职地点
     */
    private String qzyxdd;
    /**
     *从事职业
     */
    private String qzyxcszy;
    /**
     *工作月薪
     */
    private String qzyxyx;

    /**
     *工作状态
     */
    private Integer qzyxgzzt;

    public Userqzyx() {

    }

    public Userqzyx(String userqzyxid, Integer qzyxxz, String qzyxdd, String qzyxcszy, String qzyxyx, Integer qzyxgzzt) {
        this.userqzyxid = userqzyxid;
        this.qzyxxz = qzyxxz;
        this.qzyxdd = qzyxdd;
        this.qzyxcszy = qzyxcszy;
        this.qzyxyx = qzyxyx;
        this.qzyxgzzt = qzyxgzzt;
    }

    public void setUserqzyxid(String userqzyxid) {
        this.userqzyxid = userqzyxid;
    }

    public void setQzyxxz(Integer qzyxxz) {
        this.qzyxxz = qzyxxz;
    }

    public void setQzyxdd(String qzyxdd) {
        this.qzyxdd = qzyxdd;
    }

    public void setQzyxcszy(String qzyxcszy) {
        this.qzyxcszy = qzyxcszy;
    }

    public void setQzyxyx(String qzyxyx) {
        this.qzyxyx = qzyxyx;
    }

    public void setQzyxgzzt(Integer qzyxgzzt) {
        this.qzyxgzzt = qzyxgzzt;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getUserqzyxid() {
        return userqzyxid;
    }

    public Integer getQzyxxz() {
        return qzyxxz;
    }

    public String getQzyxdd() {
        return qzyxdd;
    }

    public String getQzyxcszy() {
        return qzyxcszy;
    }

    public String getQzyxyx() {
        return qzyxyx;
    }

    public Integer getQzyxgzzt() {
        return qzyxgzzt;
    }
}
