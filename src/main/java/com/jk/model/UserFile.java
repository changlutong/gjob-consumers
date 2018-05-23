package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/17.
 */
public class UserFile implements Serializable{
    private static final long serialVersionUID = -7345271600135086813L;

    private String fileid;
    private String fileName;
    private String fileUrl;
    private String filenr;

    public UserFile(String fileid, String fileName, String fileUrl, String filenr) {
        this.fileid = fileid;
        this.fileName = fileName;
        this.fileUrl = fileUrl;
        this.filenr = filenr;
    }

    public UserFile() {

    }

    public void setFileid(String fileid) {
        this.fileid = fileid;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public void setFilenr(String filenr) {
        this.filenr = filenr;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getFileid() {
        return fileid;
    }

    public String getFileName() {
        return fileName;
    }

    public String getFileUrl() {
        return fileUrl;
    }

    public String getFilenr() {
        return filenr;
    }
}
