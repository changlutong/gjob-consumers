/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: BankTypeService
 * Author:   ASUS
 * Date:     2018/5/17 9:49
 * Description:
 * History:
 * <author>          <e_mail>
 * 孙国进             getElements@outlook.com
 */
package com.jk.service;

import com.jk.model.BankType;
import com.jk.model.CompanyCard;
import com.jk.model.Score;
import com.jk.model.Tree;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author ASUS
 * @create 2018/5/17
 * @since 1.0.0
 */
public interface BankTypeService {

    List<BankType> queryBankTypeList(Integer page, Integer rows);

    long queryBankTypecount();

    void addBankTypeList(BankType bankType);

    void addBankTypeList(int i);

    /**
     * 属性菜单查询
     * @return
     */
    List<Tree> queryTreeList();

    List<BankType> selectBankTypeList();

    void savebankcard(CompanyCard companyCard);

    List<CompanyCard> querybankcard();

    CompanyCard queryBankCardById(Integer cid);

    void deleteBankCardById(Integer cid);

    Score queryComScore(String comid);

    String addcompanychongzhi(String comid, String money);

    void updatebankcard(Long aLong, String valll);
}