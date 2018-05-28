/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: CompanyCard
 * Author:   ASUS
 * Date:     2018/5/24 10:54
 * Description: 公司绑定银行卡
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.model;

import java.io.Serializable;

/**
 * 〈一句话功能简述〉<br> 
 * 〈公司绑定银行卡〉
 *
 * @author ASUS
 * @create 2018/5/24
 * @since 1.0.0
 */
public class CompanyCard implements Serializable {


    private static final long serialVersionUID = -8033025345287007124L;

    private Integer cid;//逐渐ID
    private String comid;//公司ID
    private String cardnum;//卡号
    private String cardname;//开户人姓名
    private String cardid;//开户行ID
    private String bankimg;
    private Long money;
    private String bankcardname;

    @Override
    public String toString() {
        return "CompanyCard{" +
                "cid=" + cid +
                ", comid='" + comid + '\'' +
                ", cardnum='" + cardnum + '\'' +
                ", cardname='" + cardname + '\'' +
                ", cardid='" + cardid + '\'' +
                ", bankimg='" + bankimg + '\'' +
                ", money=" + money +
                ", bankcardname='" + bankcardname + '\'' +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getComid() {
        return comid;
    }

    public void setComid(String comid) {
        this.comid = comid;
    }

    public String getCardnum() {
        return cardnum;
    }

    public void setCardnum(String cardnum) {
        this.cardnum = cardnum;
    }

    public String getCardname() {
        return cardname;
    }

    public void setCardname(String cardname) {
        this.cardname = cardname;
    }

    public String getCardid() {
        return cardid;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public String getBankimg() {
        return bankimg;
    }

    public void setBankimg(String bankimg) {
        this.bankimg = bankimg;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public String getBankcardname() {
        return bankcardname;
    }

    public void setBankcardname(String bankcardname) {
        this.bankcardname = bankcardname;
    }
}