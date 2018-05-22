package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/05/17.
 */
public class Notice implements Serializable {
    private static final long serialVersionUID = -4029868444840200552L;

    private Integer noticeid;

    private String noticename;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String noticedate;

    private String noticebulletin;

    @Override
    public String toString() {
        return "Notice{" +
                "noticeid=" + noticeid +
                ", noticename='" + noticename + '\'' +
                ", noticedate='" + noticedate + '\'' +
                ", noticebulletin='" + noticebulletin + '\'' +
                '}';
    }

    public Integer getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(Integer noticeid) {
        this.noticeid = noticeid;
    }

    public String getNoticename() {
        return noticename;
    }

    public void setNoticename(String noticename) {
        this.noticename = noticename;
    }

    public String getNoticedate() {
        return noticedate;
    }

    public void setNoticedate(String noticedate) {
        this.noticedate = noticedate;
    }

    public String getNoticebulletin() {
        return noticebulletin;
    }

    public void setNoticebulletin(String noticebulletin) {
        this.noticebulletin = noticebulletin;
    }


}
