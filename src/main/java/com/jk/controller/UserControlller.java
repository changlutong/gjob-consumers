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

import com.jk.model.Role;
import com.jk.model.User;
import com.jk.service.IUserService;
import com.jk.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈用户控制层〉
 *
 * @author chang
 * @create 2018/5/14
 * @since 1.0.0
 */
@Controller
@RequestMapping("userController")
public class UserControlller {
    @Autowired
    private IUserService userService;

    @RequestMapping("getUserList")
    @ResponseBody
    public List<User> getUserList() {
        List<User> list = userService.getUserList();
        return list;


    }

    @ResponseBody
    @RequestMapping("/login")
    public String login(User ren, HttpSession session) {
        User rr = null;
        try {
            rr = userService.login(ren);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if (rr != null) {
            session.setAttribute("rr", rr);
            return "ee";
        } else {
            return "userNo";
        }
    }

    @ResponseBody
    @RequestMapping("/addcharenlist")
    public PageUtil addcharenlist(Integer page, Integer rows) {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPage(page);
        pageUtil.setPageSize(rows);
        pageUtil = userService.addcharenlist(pageUtil);
        return pageUtil;
    }

    @ResponseBody
    @RequestMapping("/addcharolelist")
    public List<Role> addcharolelist(Integer rid) {
        List<Role> list = userService.addcharolelist(rid);
        return list;
    }

    @ResponseBody
    @RequestMapping("/charolelist")
    public List<Role> charolelist() {
        List<Role> list = null;
        try {
            list = userService.charolelist();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @ResponseBody
    @RequestMapping("/updaterolelist")
    public String updaterolelist(User ren, String roid) {
        userService.updaterolelist(ren, roid);
        return "true";

    }


    @RequestMapping("getUserAll")
    @ResponseBody
    public Map<String, Object> querylist(Integer page, Integer rows, User user) {
        Map<String, Object> map = new HashMap<String, Object>();
        //总数据条数
        map.put("total", userService.getuser(user).size());
        //展示的数据
        map.put("rows", userService.querylist(page, rows, user));
        return map;
    }


    @RequestMapping("logininfo")
    @ResponseBody
    public String logininfo(User user, HttpServletRequest request) {
        String flag = "";
        try {
            User login = userService.logininfo(user);
            if (login != null) {
                flag = "success";
                User resourcesRoleList = userService.getResourcesRoleList(login);
                request.getSession().setAttribute("user", resourcesRoleList);
            } else {
                flag = "error";
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            flag = "error";
        }
        return flag;

    }
    @RequestMapping("zhuxiaoUser")
    public String  zhuxiaoUser(HttpServletRequest request) {
        request.getSession().invalidate();
        return "tree/login";
    }

}