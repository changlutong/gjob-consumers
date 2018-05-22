package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/05/15.
 */
public class Role  implements Serializable {
    private static final long serialVersionUID = -4029868444840200552L;
    private Integer roid;

    private String roname;

    @Override
    public String toString() {
        return "Role{" +
                "roid=" + roid +
                ", roname='" + roname + '\'' +
                '}';
    }

    public Integer getRoid() {
        return roid;
    }

    public void setRoid(Integer roid) {
        this.roid = roid;
    }

    public String getRoname() {
        return roname;
    }

    public void setRoname(String roname) {
        this.roname = roname;
    }
}
