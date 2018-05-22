package com.jk.service;

import com.jk.model.Role;
import com.jk.model.User;
import com.jk.util.PageUtil;

import java.util.List;

/**
 * Created by chang on 2018/5/14.
 */
public interface IUserService {
    List<User> getUserList();

    User login(User ren) throws  Exception;

    PageUtil addcharenlist(PageUtil pageUtil);

    List<Role> addcharolelist(Integer rid);

    List<Role> charolelist() throws  Exception;

    void updaterolelist(User ren, String roid);




    List<User> getuser(User user);

    List<User> querylist(Integer page, Integer rows, User user);

    User logininfo(User user);

    User getResourcesRoleList(User login);
}
