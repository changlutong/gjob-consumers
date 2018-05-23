package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/17.
 */
public class Userpxjl implements Serializable{


    private static final long serialVersionUID = -4096889760082468614L;
    //,,,,,,,
    /**
     *id
     */
    private String  pxjlid;
    /**
     *开始时间
     */
    private String  queryBugDateStart;
    /**
     *结束时间
     */
    private String  queryBugDateEnd;
    /**
     *培训机构
     */
    private String  pxjljg;
    /**
     *培训地点
     */
    private String  pxjlddian;

    /**
     *是否统招
     */
    private Integer  pxjlsftz;
    /**
     *介绍
     */
    private String  pxjlxqjs;


    public Userpxjl(String pxjlid, String queryBugDateStart, String queryBugDateEnd, String pxjljg, String pxjlddian, Integer pxjlsftz, String pxjlxqjs) {
        this.pxjlid = pxjlid;
        this.queryBugDateStart = queryBugDateStart;
        this.queryBugDateEnd = queryBugDateEnd;
        this.pxjljg = pxjljg;
        this.pxjlddian = pxjlddian;
        this.pxjlsftz = pxjlsftz;
        this.pxjlxqjs = pxjlxqjs;
    }

    public Userpxjl() {

    }


    public void setPxjlid(String pxjlid) {
        this.pxjlid = pxjlid;
    }

    public void setQueryBugDateStart(String queryBugDateStart) {
        this.queryBugDateStart = queryBugDateStart;
    }

    public void setQueryBugDateEnd(String queryBugDateEnd) {
        this.queryBugDateEnd = queryBugDateEnd;
    }

    public void setPxjljg(String pxjljg) {
        this.pxjljg = pxjljg;
    }

    public void setPxjlddian(String pxjlddian) {
        this.pxjlddian = pxjlddian;
    }

    public void setPxjlsftz(Integer pxjlsftz) {
        this.pxjlsftz = pxjlsftz;
    }

    public void setPxjlxqjs(String pxjlxqjs) {
        this.pxjlxqjs = pxjlxqjs;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getPxjlid() {
        return pxjlid;
    }

    public String getQueryBugDateStart() {
        return queryBugDateStart;
    }

    public String getQueryBugDateEnd() {
        return queryBugDateEnd;
    }

    public String getPxjljg() {
        return pxjljg;
    }

    public String getPxjlddian() {
        return pxjlddian;
    }

    public Integer getPxjlsftz() {
        return pxjlsftz;
    }

    public String getPxjlxqjs() {
        return pxjlxqjs;
    }
}
