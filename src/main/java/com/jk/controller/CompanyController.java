package com.jk.controller;

import com.aliyun.oss.OSSClient;
import com.jk.model.Company;

import com.jk.service.ICompanyService;

import com.jk.util.HttpClient;
import org.apache.commons.fileupload.disk.DiskFileItem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



import javax.servlet.http.HttpSession;

import java.io.*;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;



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
        if(fasongtime==null){
            return "5";
        }
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
public String querycompanylogin(Company company,HttpSession session){

      /*  String phone= company.getId();
        session.setAttribute("id",phone);*/
    String companylist= companyService.querycompanylogin(company);
    System.out.print(companylist);
        String[] split = companylist.split(",");

        if(split[0].equals("1")){
          return "1";

        }else if(split[0].equals("4")){

            return "4";
        }

        session.setAttribute("id",split[1]);
        session.setAttribute("companyname",split[2]);

        return  split[0];

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

    @RequestMapping("/upfile")
    @ResponseBody
    public Object upfile(@RequestParam("file") MultipartFile[] files) throws IOException{
        if(files!=null&&files.length>0){
            Map<String,String> map=new HashMap<String,String>();
            MultipartFile file=files[0];
            String newFileName = UUID.randomUUID().toString()
                    + file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
            CommonsMultipartFile cf= (CommonsMultipartFile)file;
            DiskFileItem fi = (DiskFileItem)cf.getFileItem();
            File f = fi.getStoreLocation();
            // endpoint以杭州为例，其它region请按实际情况填写
            String endpoint = "http://oss-cn-qingdao.aliyuncs.com";
            // 云账号AccessKey有所有API访问权限，建议遵循阿里云安全最佳实践，创建并使用RAM子账号进行API访问或日常运维，请登录
            // https://ram.console.aliyun.com 创建
            String accessKeyId = "LTAIIovLWtlvaZb1";
            String accessKeySecret = "9a75CNmDE3W705XEREa9RCpXNdx91D";
            // 创建OSSClient实例
            // OSSClient是OSS服务的Java客户端，它为调用者提供了一系列的方法，用于和OSS服务进行交互。
            OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
            FileInputStream fis = new FileInputStream(f);
            ossClient.putObject("djh535212936", "img/" + newFileName, fis);
            Date expiration = new Date(System.currentTimeMillis() + 3600 * 1000 * 24 * 9);
            URL url = ossClient.generatePresignedUrl("djh535212936", "img/" + newFileName, expiration);
            String fileUrl = url.toString();
            System.out.println("成功");
            System.out.println(fileUrl);
            map.put("url",fileUrl);
            return map;
        }



        return null;
    }


    /**
     * 后台公司审核查询      孙国锦
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value="queryCompanyList")
    @ResponseBody
    public Map<String,Object> queryCompanyList(Integer page,Integer rows){
        //查询所有记录
        java.util.List<Company> list = companyService.queryCompanyeList(page,rows);
        //查询总条数
        long total = companyService.querycompanycount();
        Map<String ,Object> map = new HashMap<String, Object>();
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }

    /**
     * 修改状态
     * @param ids
     */
    @RequestMapping(value="updateCompanyStatus")
    @ResponseBody
    public void updateCompanyStatus(String ids){
        String[] idss = ids.split(",");
        for (int i = 0; i < idss.length; i++) {
            companyService.updateCompanyStatus(idss[i].toString());
        }
    }


    @RequestMapping(value = "selectCompanyTwoList")
    @ResponseBody
    public Map<String,Object> selectCompanyTwoList(Integer page,Integer rows){
        //查询所有记录
        java.util.List<Company> list = companyService.selectCompanyeTwoList(page,rows);
        //查询总条数
        long total = companyService.selectcompanyTwocount();
        Map<String ,Object> map = new HashMap<String, Object>();
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }



    @RequestMapping(value="deletecompany")
    @ResponseBody
    public  void deletecompany(String ids){
        String[] idss = ids.split(",");
        for (int i = 0; i < idss.length; i++) {
            companyService.deletecompany(idss[i]);
        }

    }

    /**
     * 公司登陆a
     * @return
     */
    @RequestMapping("tuichudenglu")
    @ResponseBody
    public String tuichudenglu(HttpSession session){


        session.invalidate();

        return "1";
    }





}

