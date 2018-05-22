package com.jk.controller;

import com.jk.model.Role;
import com.jk.model.Tree;
import com.jk.service.RoleService;
import com.jk.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/05/15.
 */

@Controller
@RequestMapping("/role")
public class RoleController {


    @Resource
    private RoleService roleService;

    @ResponseBody
    @RequestMapping("/addcharolelist")
    public PageUtil addcharolelist(Integer   page, Integer   rows, Role role){
        PageUtil    pageUtil=new  PageUtil();
        pageUtil.setPage(page);
        pageUtil.setPageSize(rows);
        try {
            pageUtil=roleService.addcharolelist(pageUtil);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return  pageUtil;
    }
    @ResponseBody
    @RequestMapping("/addchamenulist")
    public   List<Tree>  addchamenulist(Integer   roid){
        List<Tree>   list1= 	roleService.addcharolemenulist(roid);
        List<Tree>   list2=   roleService.addchamenulist();
        for (Tree menu : list2) {
            for (Tree menu1 : list1) {
                if (menu.getId()==menu1.getId()) {
                    menu.setChecked(true);
                }
            }
        }
        return list2;
    }

    @ResponseBody
    @RequestMapping("/updaterolemenulist")
    public   String   updaterolemenulist(String  ids,Integer roid){
        roleService.deleterolelist(roid);
        String[] arr = 	ids.split(",");
        for (int i = 0; i < arr.length; i++) {
            roleService.saverolemenulist(Integer.parseInt(arr[i]),roid);
        }
        return "true";
    }

}
