package com.jk.controller;

import com.jk.model.Finance;
import com.jk.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/05/24.
 */
@Controller
@RequestMapping(value = "financeController")
public class FinanceController {

    @Autowired
    private FinanceService financeService;

    @RequestMapping("/queryfinance")
    @ResponseBody
    public List<Finance> queryfinance(Finance finance){
        List<Finance> list=financeService.queryfinance(finance);

        return  list;
    }

//=======

}
