package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/22.
 */
public class Tpersonal implements Serializable{
    private static final long serialVersionUID = 5681703705926036874L;

    private Integer id;
    private String  uuids;
    private String  phone;
    private String  password;

    public Tpersonal(Integer id, String uuids, String phone, String password) {
        this.id = id;
        this.uuids = uuids;
        this.phone = phone;
        this.password = password;
    }

    public Tpersonal() {
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUuids(String uuids) {
        this.uuids = uuids;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public String getUuids() {
        return uuids;
    }

    public String getPhone() {
        return phone;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "Tpersonal{" +
                "id=" + id +
                ", uuids='" + uuids + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
