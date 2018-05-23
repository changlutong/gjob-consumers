package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/17.
 */
public class Userqt implements Serializable {
    private static final long serialVersionUID = 1672859677582783942L;

    //qitaid,qitazhuti,qitams
    /**
     * 其他id
     */
    private String  qitaid;
    /**
     *其他主题
     */
    private String  qitazhuti;
    /**
     *其他简介
     */
    private String  qitams;


    public Userqt(String qitaid, String qitazhuti, String qitams) {
        this.qitaid = qitaid;
        this.qitazhuti = qitazhuti;
        this.qitams = qitams;
    }

    public Userqt() {
    }

    public void setQitaid(String qitaid) {
        this.qitaid = qitaid;
    }

    public void setQitazhuti(String qitazhuti) {
        this.qitazhuti = qitazhuti;
    }

    public void setQitams(String qitams) {
        this.qitams = qitams;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getQitaid() {
        return qitaid;
    }

    public String getQitazhuti() {
        return qitazhuti;
    }

    public String getQitams() {
        return qitams;
    }
}
