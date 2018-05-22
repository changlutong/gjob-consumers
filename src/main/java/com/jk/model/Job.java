/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: Job
 * Author:  常路通
 * Date:     2018/5/15 9:57
 * Description: 职位实体类
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: Job
 * Author:   chang
 * Date:     2018/5/15 9:57
 * Description: 职位实体类
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 〈一句话功能简述〉<br> 
 * 〈职位实体类〉
 *
 * @author chang
 * @create 2018/5/15
 * @since 1.0.0
 */
public class Job implements Serializable{
    private static final long serialVersionUID = 5068747809047520620L;
    private String id;
    private String salary;
    private Date createtime;
    private String workexp;
    private Integer worknum;
    private String workspace;
    private String  workpro;
    private String eduback;
    private String worktype;
    private String workname;
    private String workinfo;
    private String companyinfo;
    private String companyphone;
    private Integer showstatus;


    public Integer getShowstatus() {
        return showstatus;
    }

    public void setShowstatus(Integer showstatus) {
        this.showstatus = showstatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getWorkexp() {
        return workexp;
    }

    public void setWorkexp(String workexp) {
        this.workexp = workexp;
    }

    public Integer getWorknum() {
        return worknum;
    }

    public void setWorknum(Integer worknum) {
        this.worknum = worknum;
    }

    public String getWorkspace() {
        return workspace;
    }

    public void setWorkspace(String workspace) {
        this.workspace = workspace;
    }

    public String getWorkpro() {
        return workpro;
    }

    public void setWorkpro(String workpro) {
        this.workpro = workpro;
    }

    public String getEduback() {
        return eduback;
    }

    public void setEduback(String eduback) {
        this.eduback = eduback;
    }

    public String getWorktype() {
        return worktype;
    }

    public void setWorktype(String worktype) {
        this.worktype = worktype;
    }

    public String getWorkname() {
        return workname;
    }

    public void setWorkname(String workname) {
        this.workname = workname;
    }

    public String getWorkinfo() {
        return workinfo;
    }

    public void setWorkinfo(String workinfo) {
        this.workinfo = workinfo;
    }

    public String getCompanyinfo() {
        return companyinfo;
    }

    public void setCompanyinfo(String companyinfo) {
        this.companyinfo = companyinfo;
    }

    public String getCompanyphone() {
        return companyphone;
    }

    public void setCompanyphone(String companyphone) {
        this.companyphone = companyphone;
    }
}