package com.jk.service;

import com.jk.model.Finance;

import java.util.List;

/**
 * Created by Administrator on 2018/05/24.
 */
public interface FinanceService {

//==================
    List<Finance> queryfinance(Finance finance);

    int qianjifenfinance(Finance finance);

    Finance upfinance(String dates);

/*    List<Finance> qianjifenfinance(Finance finance);*/
}
