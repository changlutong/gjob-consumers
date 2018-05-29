/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: GuanggaoController
 * Author:   ASUS
 * Date:     2018/5/15 11:51
 * Description:
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.controller;

import com.aliyun.oss.OSSClient;
import com.jk.model.Company;
import com.jk.model.Guanggao;
import com.jk.service.IGuanggaoService;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URL;
import java.util.*;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author ASUS
 * @create 2018/5/15
 * @since 1.0.0
 */
@Controller
@RequestMapping(value="guanggaoController")
public class GuanggaoController {
    @Autowired
    private IGuanggaoService guanggaoService;

    /**
     * 广告查询   孙国锦
     */
    @RequestMapping(value="selectguanggao")
    @ResponseBody
    public Map<String ,Object> selectguanggao(Integer page, Integer rows){
        //查询所有记录
        List<Guanggao> list = guanggaoService.selectGuanggao(page,rows);
        //查询总条数
        long total = guanggaoService.querycount();
        Map<String ,Object> map = new HashMap<String, Object>();
        /*JSONObject  json=new JSONObject();
        json.put("total", total);
        json.put("rows", list);*/
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }


    /**
     * 图片上传
     * @param multiFile
     * @param request
     * @param response
     * @return
     * @throws FileNotFoundException
     */
    @RequestMapping(value="uploadfile")
    @ResponseBody
    public String uploadfile(@RequestParam("image")MultipartFile multiFile, HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException {
        String newFileName = UUID.randomUUID().toString()
                + multiFile.getOriginalFilename().substring(multiFile.getOriginalFilename().lastIndexOf("."));
        CommonsMultipartFile cf= (CommonsMultipartFile)multiFile;
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
        return fileUrl;
    }


    @RequestMapping(value="querycompany")
    @ResponseBody
    public List<Company> querycompany(){
        List<Company> list = guanggaoService.querycompany();
        return list;
    }

    /**
     * 新增广告    孙国锦
     */
    @RequestMapping(value = "saveguanggao")
    @ResponseBody
    public void saveguanggao(Guanggao guanggao, HttpSession httpSession) {
        String comid= (String) httpSession.getAttribute("id");
        guanggao.setCompanyid(comid);
        String url = guanggao.getImageurl();
        String uurl = url.replaceAll("\"","");
        guanggao.setImageurl(uurl);
        guanggaoService.saveguanggao(guanggao);


    }

    /**
     * 广告审核    孙国锦
     */
    public void updatastatus(String id){
        guanggaoService.updatastatus(id);
    }

    /**
     * 删除广告    孙国锦
     */
    @RequestMapping(value="deleteguanggao")
    @ResponseBody
    public  void deleteguanggao(String ids){
        String[] idss = ids.split(",");
        for (int i = 0; i < idss.length; i++) {
            guanggaoService.deleteguanggao(idss[i]);
        }

    }


    /**
     * 查询未审核广告
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "queryguanggaotwo")
    @ResponseBody
    public Map<String ,Object> queryguanggaotwo(Integer page, Integer rows){
        //查询所有记录
        List<Guanggao> list = guanggaoService.queryguanggaotwo(page,rows);
        //查询总条数
        long total = guanggaoService.querycounttwo();
        Map<String ,Object> map = new HashMap<String, Object>();
        /*JSONObject  json=new JSONObject();
        json.put("total", total);
        json.put("rows", list);*/
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }


    /**
     * 审核广告
     * @param ids
     */
    @RequestMapping(value="updateguanggaoStatus")
    @ResponseBody
    public void updateguanggaoStatus(String ids){
        String[] idss = ids.split(",");
        for (int i = 0; i < idss.length; i++) {
            guanggaoService.updateguanggaoStatus(idss[i].toString());
        }
    }






    /**
     * 查询一号广告 段家豪
     * @return
     */
    @RequestMapping(value="selectallguanggao")
    @ResponseBody
    public  List<Guanggao> selectallguanggao(){

        List<Guanggao> list = guanggaoService.selectallguanggao();
        return  list;
    }
    /**
     * 查询二号广告 段家豪
     * @return
     */
    @RequestMapping(value="selecterhaoguanggao")
    @ResponseBody
    public  List<Guanggao> selecterhaoguanggao(){

        List<Guanggao> list = guanggaoService.selecterhaoguanggao();
        return  list;
    }
    @RequestMapping(value="selectsanhaoguanggao")
    @ResponseBody
    public  List<Guanggao> selectsanhaoguanggao(){

        List<Guanggao> list = guanggaoService.selectsanhaoguanggao();
        return  list;
    }
    @RequestMapping(value="selectsihaoguanggao")
    @ResponseBody
    public  List<Guanggao> selectsihaoguanggao(){

        List<Guanggao> list = guanggaoService.selectsihaoguanggao();
        return  list;
    }
    @RequestMapping(value="selectwuhaoguanggao")
    @ResponseBody
    public  List<Guanggao> selectwuhaoguanggao(){

        List<Guanggao> list = guanggaoService.selectwuhaoguanggao();
        return  list;
    }

}