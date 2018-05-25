/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: Score
 * Author:   ASUS
 * Date:     2018/5/24 19:23
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
 * @create 2018/5/24
 * @since 1.0.0
 */
public class Score implements Serializable {


    private static final long serialVersionUID = -478485620771910774L;


    private Integer jid;//逐渐
    private Long score;//积分余额
    private String comid;//公司ID

    @Override
    public String toString() {
        return "Score{" +
                "jid=" + jid +
                ", score=" + score +
                ", comid='" + comid + '\'' +
                '}';
    }

    public Integer getJid() {
        return jid;
    }

    public void setJid(Integer jid) {
        this.jid = jid;
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    public String getComid() {
        return comid;
    }

    public void setComid(String comid) {
        this.comid = comid;
    }
}