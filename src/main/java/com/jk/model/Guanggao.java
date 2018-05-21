/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: Guanggao
 * Author:   ASUS
 * Date:     2018/5/14 19:10
 * Description: 广告实体类
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.model;

import java.io.Serializable;

/**
 * 〈一句话功能简述〉<br> 
 * 〈广告实体类〉
 *
 * @author ASUS
 * @create 2018/5/14
 * @since 1.0.0
 */
public class Guanggao implements Serializable {
    private static final long serialVersionUID = 2352568169325737626L;


    private String id;//广告ID
    private String imageurl;//图片路径
    private String pid;//展示位置
    private String info;//简介
    private String companyid;//公司ID
    private String status;//状态
    private String biaoid;//表ID
    private Double price;   //广告价格  排序用

    @Override
    public String toString() {
        return "Guanggao{" +
                "id='" + id + '\'' +
                ", imageurl='" + imageurl + '\'' +
                ", pid='" + pid + '\'' +
                ", info='" + info + '\'' +
                ", companyid='" + companyid + '\'' +
                ", status='" + status + '\'' +
                ", biaoid='" + biaoid + '\'' +
                ", price=" + price +
                '}';
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getBiaoid() {
        return biaoid;
    }

    public void setBiaoid(String biaoid) {
        this.biaoid = biaoid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getCompanyid() {
        return companyid;
    }

    public void setCompanyid(String companyid) {
        this.companyid = companyid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}