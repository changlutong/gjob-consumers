package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/16.
 */
public class UsergDatum implements Serializable{
    private static final long serialVersionUID = -8572430623973310257L;

    //  grxxname,grxxXB,grxxcsrq,grxxgznf,grxxlxfs,grxxdzyj,grxxhy,grxxgj,grxxjl,grjlzzmm,grxxdz
    /**
     *id
     */
    private String datumid;
    /**
     *姓名
     */
    private String grxxname;
    /**
     *性别
     */
    private Integer grxxXB;
    /**
     *日期出生
     */
    private String grxxcsrq;
    /**
     *工作年份
     */
    private String grxxgznf;
    /**
     *联系方式
     */
    private String grxxlxfs;
    /**
     *电子邮箱
     */
    private String grxxdzyj;
    /**
     *婚姻状况
     */
    private Integer grxxhy;
    /**
     *国籍
     */
    private String grxxgj;
    /**
     *海外工作/经历
     */
    private Integer grxxjl;
    /**
     *政治面貌
     */
    private String grjlzzmm;
    /**
     *户口所在地
     */
    private String grxxdz;


    public UsergDatum(String datumid, String grxxname, Integer grxxXB, String grxxcsrq, String grxxgznf, String grxxlxfs, String grxxdzyj, Integer grxxhy, String grxxgj, Integer grxxjl, String grjlzzmm, String grxxdz) {
        this.datumid = datumid;
        this.grxxname = grxxname;
        this.grxxXB = grxxXB;
        this.grxxcsrq = grxxcsrq;
        this.grxxgznf = grxxgznf;
        this.grxxlxfs = grxxlxfs;
        this.grxxdzyj = grxxdzyj;
        this.grxxhy = grxxhy;
        this.grxxgj = grxxgj;
        this.grxxjl = grxxjl;
        this.grjlzzmm = grjlzzmm;
        this.grxxdz = grxxdz;
    }

    public UsergDatum() {

    }



    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getDatumid() {
        return datumid;
    }

    public String getGrxxname() {
        return grxxname;
    }

    public Integer getGrxxXB() {
        return grxxXB;
    }

    public String getGrxxcsrq() {
        return grxxcsrq;
    }

    public String getGrxxgznf() {
        return grxxgznf;
    }

    public String getGrxxlxfs() {
        return grxxlxfs;
    }

    public String getGrxxdzyj() {
        return grxxdzyj;
    }

    public Integer getGrxxhy() {
        return grxxhy;
    }

    public String getGrxxgj() {
        return grxxgj;
    }

    public Integer getGrxxjl() {
        return grxxjl;
    }

    public String getGrjlzzmm() {
        return grjlzzmm;
    }

    public String getGrxxdz() {
        return grxxdz;
    }


    public void setDatumid(String datumid) {
        this.datumid = datumid;
    }

    public void setGrxxname(String grxxname) {
        this.grxxname = grxxname;
    }

    public void setGrxxXB(Integer grxxXB) {
        this.grxxXB = grxxXB;
    }

    public void setGrxxcsrq(String grxxcsrq) {
        this.grxxcsrq = grxxcsrq;
    }

    public void setGrxxgznf(String grxxgznf) {
        this.grxxgznf = grxxgznf;
    }

    public void setGrxxlxfs(String grxxlxfs) {
        this.grxxlxfs = grxxlxfs;
    }

    public void setGrxxdzyj(String grxxdzyj) {
        this.grxxdzyj = grxxdzyj;
    }

    public void setGrxxhy(Integer grxxhy) {
        this.grxxhy = grxxhy;
    }

    public void setGrxxgj(String grxxgj) {
        this.grxxgj = grxxgj;
    }

    public void setGrxxjl(Integer grxxjl) {
        this.grxxjl = grxxjl;
    }

    public void setGrjlzzmm(String grjlzzmm) {
        this.grjlzzmm = grjlzzmm;
    }

    public void setGrxxdz(String grxxdz) {
        this.grxxdz = grxxdz;
    }

    @Override
    public String toString() {
        return "UsergDatum{" +
                "datumid='" + datumid + '\'' +
                ", grxxname='" + grxxname + '\'' +
                ", grxxXB=" + grxxXB +
                ", grxxcsrq='" + grxxcsrq + '\'' +
                ", grxxgznf='" + grxxgznf + '\'' +
                ", grxxlxfs='" + grxxlxfs + '\'' +
                ", grxxdzyj='" + grxxdzyj + '\'' +
                ", grxxhy=" + grxxhy +
                ", grxxgj='" + grxxgj + '\'' +
                ", grxxjl=" + grxxjl +
                ", grjlzzmm='" + grjlzzmm + '\'' +
                ", grxxdz='" + grxxdz + '\'' +
                '}';
    }
}
