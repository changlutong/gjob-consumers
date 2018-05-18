package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2018/05/14.
 */

public class Tree implements Serializable {
    private static final long serialVersionUID = -4029868444840200552L;

    private Integer id;

    private Integer pid;

    private String href;

    private String text;

    private Boolean checked=false;

    private List<Tree> children;

    @Override
    public String toString() {
        return "Tree{" +
                "id=" + id +
                ", pid=" + pid +
                ", href='" + href + '\'' +
                ", text='" + text + '\'' +
                ", checked=" + checked +
                ", children=" + children +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public List<Tree> getChildren() {
        return children;
    }

    public void setChildren(List<Tree> children) {
        this.children = children;
    }
}
