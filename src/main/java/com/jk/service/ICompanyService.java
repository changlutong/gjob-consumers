package com.jk.service;

import com.jk.model.Company;
import com.jk.model.Mail;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by yuankang on 2018/5/15.
 */
public interface ICompanyService {

    String tosavecompany (Company company);

    String querycompanylogin(Company company);

    String queryregisteremail(Company company);

    void updateCompanyPassword(Company company);

    List<Company> queryCompanyeList(Integer page, Integer rows);

    long querycompanycount();

    void updateCompanyStatus(String s);

    List<Company> selectCompanyeTwoList(Integer page, Integer rows);

    long selectcompanyTwocount();


    // String sentEmailInfo(Company company);


}
