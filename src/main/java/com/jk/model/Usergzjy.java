package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/16.
 */
public class Usergzjy implements Serializable{
    private static final long serialVersionUID = -3117875473328414179L;

    //gzjyqymc,gzjyzylb,queryBugDateStart,queryBugDateEnd,gzjyzwyx,gzjynr


    /**
     *id
     *
     */
    private String gzjyid;
    /**
     *企业名称:
     */
    private String gzjyqymc;
    /**
     *专业类别:
     */
    private String gzjyzylb;
    /**
     *工作时间:开始
     */
    private String queryBugDateStart;
    /**
     *工作时间:结束
     */
    private String queryBugDateEnd;
    /**
     *职位月薪(税前)
     */
    private String gzjyzwyx;
    /**
     *内容
     */
    private String gzjynr;


    public Usergzjy(String gzjyid, String gzjyqymc, String gzjyzylb, String queryBugDateStart, String queryBugDateEnd, String gzjyzwyx, String gzjynr) {
        this.gzjyid = gzjyid;
        this.gzjyqymc = gzjyqymc;
        this.gzjyzylb = gzjyzylb;
        this.queryBugDateStart = queryBugDateStart;
        this.queryBugDateEnd = queryBugDateEnd;
        this.gzjyzwyx = gzjyzwyx;
        this.gzjynr = gzjynr;
    }


    public Usergzjy() {

    }


    public void setGzjyid(String gzjyid) {
        this.gzjyid = gzjyid;
    }

    public void setGzjyqymc(String gzjyqymc) {
        this.gzjyqymc = gzjyqymc;
    }

    public void setGzjyzylb(String gzjyzylb) {
        this.gzjyzylb = gzjyzylb;
    }

    public void setQueryBugDateStart(String queryBugDateStart) {
        this.queryBugDateStart = queryBugDateStart;
    }

    public void setQueryBugDateEnd(String queryBugDateEnd) {
        this.queryBugDateEnd = queryBugDateEnd;
    }

    public void setGzjyzwyx(String gzjyzwyx) {
        this.gzjyzwyx = gzjyzwyx;
    }

    public void setGzjynr(String gzjynr) {
        this.gzjynr = gzjynr;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getGzjyid() {
        return gzjyid;
    }

    public String getGzjyqymc() {
        return gzjyqymc;
    }

    public String getGzjyzylb() {
        return gzjyzylb;
    }

    public String getQueryBugDateStart() {
        return queryBugDateStart;
    }

    public String getQueryBugDateEnd() {
        return queryBugDateEnd;
    }

    public String getGzjyzwyx() {
        return gzjyzwyx;
    }

    public String getGzjynr() {
        return gzjynr;
    }
}
