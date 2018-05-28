package com.jk.model;

import java.io.Serializable;

/**
 * Created by yuankang on 2018/5/28.
 */
public class Companyresume implements Serializable {


    private static final long serialVersionUID = 4104361904367435972L;
    private  Integer resumecompanyid;
    private  String usergrxxid;
    private  String  companyid;

    public Integer getResumecompanyid() {
        return resumecompanyid;
    }

    public void setResumecompanyid(Integer resumecompanyid) {
        this.resumecompanyid = resumecompanyid;
    }

    public String getUsergrxxid() {
        return usergrxxid;
    }

    public void setUsergrxxid(String usergrxxid) {
        this.usergrxxid = usergrxxid;
    }

    public String getCompanyid() {
        return companyid;
    }

    public void setCompanyid(String companyid) {
        this.companyid = companyid;
    }

    @Override
    public String toString() {
        return "Companyresume{" +
                "resumecompanyid=" + resumecompanyid +
                ", usergrxxid='" + usergrxxid + '\'' +
                ", companyid='" + companyid + '\'' +
                '}';
    }
}
