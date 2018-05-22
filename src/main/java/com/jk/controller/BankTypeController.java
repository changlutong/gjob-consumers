/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: BankTypeController
 * Author:   ASUS
 * Date:     2018/5/17 9:48
 * Description:
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.controller;

import com.jk.model.BankType;
import com.jk.model.Guanggao;
import com.jk.model.Tree;
import com.jk.service.BankTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author ASUS
 * @create 2018/5/17
 * @since 1.0.0
 */
@Controller
@RequestMapping(value = "bankTypeController")
public class BankTypeController {

    @Autowired
    private BankTypeService bankTypeService;

    /**
     * 分页查询银行
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value="queryBankTypeList")
    @ResponseBody
    public Map<String,Object> queryBankTypeList(Integer page,Integer rows){
        //查询所有记录
        List<BankType> list = bankTypeService.queryBankTypeList(page,rows);
        //查询总条数
        long total = bankTypeService.queryBankTypecount();
        Map<String ,Object> map = new HashMap<String, Object>();
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }


    /**
     * 新增银行信息
     * @param bankType
     */
    @RequestMapping(value="addBankTypeList")
    @ResponseBody
    public void addBankTypeList(BankType bankType){
        String url= bankType.getImageurl();
        String uurl = url.replaceAll("\"","");
        bankType.setImageurl(uurl);
        bankTypeService.addBankTypeList(bankType);
    }

    /**
     * 删除银行信息
     * @param ids
     */
    @RequestMapping(value="deleteBankType")
    @ResponseBody
    public void deleteBankType(String ids){
        String[] idss = ids.split(",");
        for (int i = 0; i < idss.length; i++) {
            bankTypeService.addBankTypeList(Integer.parseInt(idss[i]));
        }
    }

    /**
     * 树形菜单查询
     * @return
     */
    @RequestMapping(value = "queryTreeList")
    @ResponseBody
    public List<Tree> queryTreeList(){
        List<Tree> treeList = new ArrayList<Tree>();
        treeList = bankTypeService.queryTreeList();
        return treeList;
    }



}