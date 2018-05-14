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
    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}