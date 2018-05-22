package com.jk.model;

import java.io.Serializable;

public class Company implements Serializable{

    private static final long serialVersionUID = -5566775022396338024L;
    private String id;

    private String companyname;

    private String companyprovince;

    private String companycity;

    private String contacts;

    private Integer sex;


    private String companyfixedphone;

    private String username;

    private String password;
    private String ycode;


    private String email;

    private String tradinglicense;

    private String legalpersonname;

    private String legalpersionidcardnum;

    private Integer checkstatus;

    private String companytablename;
    private String idcardpicturefan;

    private Integer category;
    private String idcardpicture;

    public String getIdcardpicturefan() {
        return idcardpicturefan;
    }

    public void setIdcardpicturefan(String idcardpicturefan) {
        this.idcardpicturefan = idcardpicturefan;
    }

    public String getIdcardpicture() {
        return idcardpicture;
    }

    public void setIdcardpicture(String idcardpicture) {
        this.idcardpicture = idcardpicture;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getCompanyprovince() {
        return companyprovince;
    }

    public void setCompanyprovince(String companyprovince) {
        this.companyprovince = companyprovince == null ? null : companyprovince.trim();
    }

    public String getCompanycity() {
        return companycity;
    }

    public void setCompanycity(String companycity) {
        this.companycity = companycity == null ? null : companycity.trim();
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts == null ? null : contacts.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }



    public String getCompanyfixedphone() {
        return companyfixedphone;
    }

    public void setCompanyfixedphone(String companyfixedphone) {
        this.companyfixedphone = companyfixedphone == null ? null : companyfixedphone.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getTradinglicense() {
        return tradinglicense;
    }

    public void setTradinglicense(String tradinglicense) {
        this.tradinglicense = tradinglicense == null ? null : tradinglicense.trim();
    }

    public String getLegalpersonname() {
        return legalpersonname;
    }

    public void setLegalpersonname(String legalpersonname) {
        this.legalpersonname = legalpersonname == null ? null : legalpersonname.trim();
    }

    public String getLegalpersionidcardnum() {
        return legalpersionidcardnum;
    }

    public void setLegalpersionidcardnum(String legalpersionidcardnum) {
        this.legalpersionidcardnum = legalpersionidcardnum == null ? null : legalpersionidcardnum.trim();
    }

    public Integer getCheckstatus() {
        return checkstatus;
    }

    public void setCheckstatus(Integer checkstatus) {
        this.checkstatus = checkstatus;
    }

    public String getCompanytablename() {
        return companytablename;
    }

    public void setCompanytablename(String companytablename) {
        this.companytablename = companytablename == null ? null : companytablename.trim();
    }

    public Integer getCategory() {
        return category;
    }

    public void setCategory(Integer category) {
        this.category = category;
    }

    public String getYcode() {
        return ycode;
    }

    public void setYcode(String ycode) {
        this.ycode = ycode;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id='" + id + '\'' +
                ", companyname='" + companyname + '\'' +
                ", companyprovince='" + companyprovince + '\'' +
                ", companycity='" + companycity + '\'' +
                ", contacts='" + contacts + '\'' +
                ", sex=" + sex +
                ", companyfixedphone='" + companyfixedphone + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", ycode='" + ycode + '\'' +
                ", email='" + email + '\'' +
                ", tradinglicense='" + tradinglicense + '\'' +
                ", legalpersonname='" + legalpersonname + '\'' +
                ", legalpersionidcardnum='" + legalpersionidcardnum + '\'' +
                ", checkstatus=" + checkstatus +
                ", companytablename='" + companytablename + '\'' +
                ", idcardpicturefan='" + idcardpicturefan + '\'' +
                ", category=" + category +
                ", idcardpicture='" + idcardpicture + '\'' +
                '}';
    }
}