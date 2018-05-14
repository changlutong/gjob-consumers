/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: UserControlller
 * Author:  常路通
 * Date:     2018/5/14 15:44
 * Description: 用户控制层
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: UserControlller
 * Author:   chang
 * Date:     2018/5/14 15:44
 * Description: 用户控制层
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.controller;

import com.jk.model.User;
import com.jk.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈用户控制层〉
 *
 * @author chang
 * @create 2018/5/14
 * @since 1.0.0
 */
@Controller
@RequestMapping("userControlller")
public class UserControlller {
    @Autowired
    private IUserService userService;
    @RequestMapping("getUserList")
    @ResponseBody
    public List<User> getUserList(){
        List<User>list= userService.getUserList();
        return list;
    }
}