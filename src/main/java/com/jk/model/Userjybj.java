package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/16.
 */
public class Userjybj implements Serializable{
    private static final long serialVersionUID = 2749163603490902016L;
   // jybjid ,queryBugDateStart,queryBugDateEnd,jybjname,jybjtz,jybjxl
    /**
     *id
     */
    private String  jybjid;
    /**
     *开始时间
     */
    private String  queryBugDateStart;
    /**
     *结束时间
     */
    private String  queryBugDateEnd;
    /**
     *学校名称
     */
    private String  jybjname;
    /**
     *是否统招
     */
    private String  jybjtz;
    /**
     *学历
     */
    private String  jybjxl;

    public Userjybj(String jybjid, String queryBugDateStart, String queryBugDateEnd, String jybjname, String jybjtz, String jybjxl) {
        this.jybjid = jybjid;
        this.queryBugDateStart = queryBugDateStart;
        this.queryBugDateEnd = queryBugDateEnd;
        this.jybjname = jybjname;
        this.jybjtz = jybjtz;
        this.jybjxl = jybjxl;
    }

    public Userjybj() {

    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getJybjid() {
        return jybjid;
    }

    public String getQueryBugDateStart() {
        return queryBugDateStart;
    }

    public String getQueryBugDateEnd() {
        return queryBugDateEnd;
    }

    public String getJybjname() {
        return jybjname;
    }

    public String getJybjtz() {
        return jybjtz;
    }

    public String getJybjxl() {
        return jybjxl;
    }

    public void setJybjid(String jybjid) {
        this.jybjid = jybjid;
    }

    public void setQueryBugDateStart(String queryBugDateStart) {
        this.queryBugDateStart = queryBugDateStart;
    }

    public void setQueryBugDateEnd(String queryBugDateEnd) {
        this.queryBugDateEnd = queryBugDateEnd;
    }

    public void setJybjname(String jybjname) {
        this.jybjname = jybjname;
    }

    public void setJybjtz(String jybjtz) {
        this.jybjtz = jybjtz;
    }

    public void setJybjxl(String jybjxl) {
        this.jybjxl = jybjxl;
    }
}
