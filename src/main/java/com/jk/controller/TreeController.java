package com.jk.controller;

import com.jk.model.Tree;
import com.jk.model.User;
import com.jk.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by Administrator on 2018/05/14.
 */
@Controller
@RequestMapping("menu")
public class TreeController {
    @Autowired
    private ITreeService treeService;

    @RequestMapping("/menulist")
    @ResponseBody
    private Object menulist(HttpSession  session){
        //獲取登陸用戶ID
        User rr = (User) session.getAttribute("rr");
        Integer id = rr.getRid();
        Set<Map<String,Object>> obj =new HashSet<Map<String,Object>>();
        obj = treeService.menulist(id);
       /* System.out.println(menus.toString());
        System.out.println(menus);*/
        return obj;
    }
   /* @RequestMapping("/queryMenu")
    @ResponseBody
    private List<Tree> queryMenu(HttpSession  session){
        User rr = (User) session.getAttribute("rr");
        List<Tree> menus = treeService.queryMenu();
	*//*	System.out.println(menus);*//*
        return menus;
    }*/
  /* @ResponseBody
   @RequestMapping("/menulist")
   public    List<Tree>  menulist(HttpSession  session){
       User rr = (User) session.getAttribute("rr");
       List<Tree>   listMenu  =	treeService.menulist(rr.getRid());
       return   listMenu;
   }*/

    @RequestMapping("/savelist")
    @ResponseBody
    public   String  savelist(Tree  menu ,HttpSession  session){
        User rr = (User) session.getAttribute("rr");
        try {
            treeService.savelist(menu,rr.getRid());

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "true";
    }


    @ResponseBody
    @RequestMapping("/deletelist")
    public  String   deletelist(Integer  id){
        treeService.deletelist(id);
        treeService.deletelist2(id);
        return "true";
    }
    @ResponseBody
    @RequestMapping("/updatelist")
    public   String  updatelist(Tree   menu){

        treeService.updatelist(menu);
        return "true";
    }



}
