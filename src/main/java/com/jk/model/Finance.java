package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/05/24.
 */
public class Finance implements Serializable {
    private static final long serialVersionUID = 2352568169325737626L;

    private String dates;

    private Integer financetotal;

    @Override
    public String toString() {
        return "Finance{" +
                "dates='" + dates + '\'' +
                ", financetotal=" + financetotal +
                '}';
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    public Integer getFinancetotal() {
        return financetotal;
    }

    public void setFinancetotal(Integer financetotal) {
        this.financetotal = financetotal;
    }
    //======
}
