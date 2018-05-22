package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/17.
 */
public class Useryynl implements Serializable{
    private static final long serialVersionUID = 8602044231363000704L;

  //  yynlid,yynlpxjg,yynldxnl,yynltsnl,yynltsnl

    /**
     *语言能力id
    */
    private String  yynlid;
    /**
     *培训机构
     */
    private String  yynlpxjg;

    /**
     *读写能力
     */
    private String  yynldxnl;

    /**
     *听说能力
     */
    private String  yynltsnl;

    public Useryynl(String yynlid, String yynlpxjg, String yynldxnl, String yynltsnl) {
        this.yynlid = yynlid;
        this.yynlpxjg = yynlpxjg;
        this.yynldxnl = yynldxnl;
        this.yynltsnl = yynltsnl;
    }

    public Useryynl() {
    }

    public void setYynlid(String yynlid) {
        this.yynlid = yynlid;
    }

    public void setYynlpxjg(String yynlpxjg) {
        this.yynlpxjg = yynlpxjg;
    }

    public void setYynldxnl(String yynldxnl) {
        this.yynldxnl = yynldxnl;
    }

    public void setYynltsnl(String yynltsnl) {
        this.yynltsnl = yynltsnl;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getYynlid() {
        return yynlid;
    }

    public String getYynlpxjg() {
        return yynlpxjg;
    }

    public String getYynldxnl() {
        return yynldxnl;
    }

    public String getYynltsnl() {
        return yynltsnl;
    }
}
