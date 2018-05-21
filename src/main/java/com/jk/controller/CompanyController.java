package com.jk.controller;

import com.jk.model.Company;
import com.jk.model.Mail;
import com.jk.service.ICompanyService;
import com.jk.util.EmailUtil;
import com.jk.util.HttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;

import static org.apache.poi.hslf.record.RecordTypes.List;

/**
 * Created by yuankang on 2018/5/15.
 */
@Controller
@RequestMapping("companyController")
public class CompanyController {

    @Autowired
    private ICompanyService companyService;

    @RequestMapping("/getyanzhengma")
    @ResponseBody
    public String getyanzhengma(String phone,HttpSession session) throws IOException {
        String ccode = HttpClient.togetString(phone);
        session.setAttribute("ccode", ccode);
        session.setAttribute("fasongtime", new Date().getTime());
        return ""+1;
    }

    /**
     * 注册
     * @param company
     * @param session
     * @return
     */
    @RequestMapping("tosavecompany")
    @ResponseBody
    public String tosavecompany(Company company ,HttpSession session){

        Long fasongtime=(Long) session.getAttribute("fasongtime");
        Long shijiancha=(new Date().getTime()-fasongtime)/1000;
        String code=(String) session.getAttribute("ccode");
        if(shijiancha>60){
            return "5";//5为验证码超时或错误
        }else{
            if(company.getYcode()!=null&&!"".equals(company.getYcode())&&code!=null&&!"".equals(code)&&code.equals(company.getYcode())){
                String flag=companyService.tosavecompany(company);
                return flag;
            }else{
                return "5";
            }
        }
    }

@RequestMapping("querycompanylogin")
@ResponseBody
public String querycompanylogin(Company company){


    String companylist= companyService.querycompanylogin(company);

    return companylist;

}

    /**
     * 重置密码时候查邮箱是否注册过
     * @param company
     * @return
     */

@RequestMapping("queryregisteremail")
@ResponseBody
public String queryregisteremail(Company company){

        String companylist1 = companyService.queryregisteremail(company);

       return companylist1;

}

    /**
     * 修改密码
     * @param company
     */

@RequestMapping("updateCompanyPassword")
@ResponseBody
public void updateCompanyPassword(Company company){
    companyService.updateCompanyPassword(company);

}





}
