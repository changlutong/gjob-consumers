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

import com.jk.model.*;
import com.jk.service.BankTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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


    /**
     * 页面加载银行
     * @return
     */
    @RequestMapping(value="selectBankTypeList")
    @ResponseBody
    public List<BankType> selectBankTypeList(){
        //查询所有记录
        List<BankType> list = bankTypeService.selectBankTypeList();

        return  list;
    }


    /**
     * 添加绑定银行卡
     */
    @RequestMapping(value = "savebankcard")
    @ResponseBody
    public void savebankcart(CompanyCard companyCard, HttpSession session){

        //获取登录的公司ID
        String comid = (String) session.getAttribute("id");
        companyCard.setComid(comid);
        companyCard.setMoney((long) 1000000);
        bankTypeService.savebankcard(companyCard);
    }


    /**
     * 页面加载时查询已绑定银行卡
     * @return
     */
    @RequestMapping(value = "querybankcard")
    @ResponseBody
    public List<CompanyCard> querybankcard(){
        List<CompanyCard> clist = bankTypeService.querybankcard();
        return clist;
    }


    /**
     * 根据ID 查询绑定的银行卡信息 并 接触绑定
     * @return
     */
    @RequestMapping(value = "queryBankCardById")
    @ResponseBody
    public CompanyCard queryBankCardById(Integer cid){
        CompanyCard companyCard = bankTypeService.queryBankCardById(cid);
        return companyCard;
    }

    @RequestMapping(value = "deleteBankCardById")
    @ResponseBody
    public void deleteBankCardById(Integer cid){
        bankTypeService.deleteBankCardById(cid);
    }


    /**
     * 查询公司积分余额
     * @param comid
     * @return
     */
    @RequestMapping(value = "queryComScore")
    @ResponseBody
    public Score queryComScore(String comid){
        Score score = bankTypeService.queryComScore(comid);
        return score;
    }


    /**
     * 充值
     * @param money
     */
    @RequestMapping(value = "addcompanychongzhi")
    @ResponseBody
    public void addcompanychongzhi(String comid,String money,String cardid){
        String msg = bankTypeService.addcompanychongzhi(comid,money);
        if(msg.equals(msg)){
            bankTypeService.updatebankcard(Long.valueOf(money),cardid);
        }
    }

}