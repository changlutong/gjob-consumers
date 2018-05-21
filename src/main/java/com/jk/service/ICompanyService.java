package com.jk.service;

import com.jk.model.Company;
import com.jk.model.Mail;

/**
 * Created by yuankang on 2018/5/15.
 */
public interface ICompanyService {

    String tosavecompany (Company company);

    String querycompanylogin(Company company);

    String queryregisteremail(Company company);

    void updateCompanyPassword(Company company);



    // String sentEmailInfo(Company company);


}
