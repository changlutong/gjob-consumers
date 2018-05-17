/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: User
 * Author:  常路通
 * Date:     2018/5/14 14:45
 * Description: 用户实体类
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: User
 * Author:   chang
 * Date:     2018/5/14 14:45
 * Description: 用户实体类
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 〈一句话功能简述〉<br> 
 * 〈用户实体类〉
 *
 * @author chang
 * @create 2018/5/14
 * @since 1.0.0
 */
public class User implements Serializable{
    private static final long serialVersionUID = -4029868444840200552L;
    private Integer rid;
    private String name;
    private  String  password;
    private Set<String> resources = new HashSet<String>();

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



    public Set<String> getResources() {
        return resources;
    }

    public void setResources(Set<String> resources) {
        this.resources = resources;
    }

    @Override
    public String toString() {
        return "User{" +
                "rid=" + rid +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +

                ", resources=" + resources +
                '}';
    }
}