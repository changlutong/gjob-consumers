/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: Activity
 * Author:   ASUS
 * Date:     2018/5/18 9:12
 * Description: 活动的实体类
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.model;



import java.io.Serializable;
import java.util.Date;

/**
 * 〈一句话功能简述〉<br>
 * 〈活动的实体类〉
 *
 * @author ASUS
 * @create 2018/5/18
 * @since 1.0.0
 */
public class Activity implements Serializable {

    private static final long serialVersionUID = 9174044245404454415L;
    private Integer id;
    private String title;
    private String content;
    private String status;
    private String imageurl;
    private String url;
    private Integer horder;
    private String createtime;
    private Date starttime;
    private Date endtime;
    private String kaishitime;
    private String jieshutime;

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", status='" + status + '\'' +
                ", imageurl='" + imageurl + '\'' +
                ", url='" + url + '\'' +
                ", horder=" + horder +
                ", createtime='" + createtime + '\'' +
                ", starttime=" + starttime +
                ", endtime=" + endtime +
                ", kaishitime='" + kaishitime + '\'' +
                ", jieshutime='" + jieshutime + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getHorder() {
        return horder;
    }

    public void setHorder(Integer horder) {
        this.horder = horder;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getKaishitime() {
        return kaishitime;
    }

    public void setKaishitime(String kaishitime) {
        this.kaishitime = kaishitime;
    }

    public String getJieshutime() {
        return jieshutime;
    }

    public void setJieshutime(String jieshutime) {
        this.jieshutime = jieshutime;
    }
}