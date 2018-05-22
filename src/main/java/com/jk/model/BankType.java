/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: BankType
 * Author:   ASUS
 * Date:     2018/5/17 9:49
 * Description:
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.model;

import java.io.Serializable;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author ASUS
 * @create 2018/5/17
 * @since 1.0.0
 */
public class BankType implements Serializable {


    private static final long serialVersionUID = -1055384833098886695L;
    private Integer id;
    private String bankname;
    private String imageurl;

    @Override
    public String toString() {
        return "BankType{" +
                "id=" + id +
                ", bankname='" + bankname + '\'' +
                ", imageurl='" + imageurl + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }
}