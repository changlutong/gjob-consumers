package com.jk.controller;

import com.jk.model.Finance;
import com.jk.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/05/24.
 */
@Controller
@RequestMapping(value = "financeController")
public class FinanceController {

    @Autowired
    private FinanceService financeService;
    Date date=new Date();
    @RequestMapping("/queryfinance")
    @ResponseBody
    public List<Finance> queryfinance(Finance finance){
        List<Finance> list=financeService.queryfinance(finance);

        return  list;
    }

//=======

    @RequestMapping("/qianjifenfinance")
    @ResponseBody
    public  Object qianjifenfinance(Finance finance){

        /*DateFormat format=new SimpleDateFormat("yyyy-MM-dd  ");
        String noticedate=format.format(date);*/
        /*List<Finance> list=financeService.qianjifenfinance(finance);*/
        if(finance.getDates() == ""){
            DateFormat formats=new SimpleDateFormat("yyyy-MM-dd");
            String dates=formats.format(date);
            finance.setDates(dates);
            int n = financeService.qianjifenfinance(finance);
        }else if(finance.getDates() !=""){
            finance = financeService.upfinance(finance.getDates());
        }

        return finance;

    }


    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
