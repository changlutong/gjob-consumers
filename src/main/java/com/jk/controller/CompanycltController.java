/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: CompanycltController
 * Author:  常路通
 * Date:     2018/5/22 15:32
 * Description: 公司控制层
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: CompanycltController
 * Author:   chang
 * Date:     2018/5/22 15:32
 * Description: 公司控制层
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Company;
import com.jk.model.Job;
import com.jk.service.ICompanycltService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈公司控制层〉
 *
 * @author chang
 * @create 2018/5/22
 * @since 1.0.0
 */
@Controller
@RequestMapping("companycltController")
public class CompanycltController {
    @Autowired
    private ICompanycltService companycltService;
    @RequestMapping("getjlinfo")
    @ResponseBody
    public JSONObject getjlinfo(String companyid, HttpSession session){
        companyid= (String) session.getAttribute("id");
        List<Map<String,Object>> list=  companycltService.getjlinfo(companyid);
        JSONObject obj=new JSONObject();
        obj.put("data",list);
        obj.put("count",list.size());
        obj.put("code", 0);
        obj.put("msg", "");
        System.out.println(obj.toString());
        return obj;
    }
    @RequestMapping("addzhiwei")
    @ResponseBody
    public void addzhiwei(Job job,HttpSession session){
        Object string=  session.getAttribute("id");
        if(string==null){
            throw new RuntimeException();
        }else{
            job.setCompanyphone((String) string);
            job.setWorkname((String)session.getAttribute("companyname"));
            companycltService.addzhiwei(job);
        }


    }
    @RequestMapping("getzhiweilist")
    @ResponseBody
    public JSONObject getzhiweilist(String  companyid,HttpSession session){
        companyid= (String) session.getAttribute("id");
        List<Map<String,Object>> list=  companycltService.getzhiweilist(companyid);
        JSONObject obj=new JSONObject();
        obj.put("data",list);
        obj.put("count",list.size());
        obj.put("code", 0);
        obj.put("msg", "");
        return obj;
    }
    @RequestMapping("showjoblist")
    public String showjoblist(String  str, HttpServletRequest request){
        Map<String,Object> map= companycltService.selectjobbyid(str);
        request.setAttribute("map",map);
        return "company-view/showaddzhiwei";
    }
    @RequestMapping("updatejobstatus")
    @ResponseBody
    public void updatejobstatus(Integer showstatus,String  ids){
        companycltService.updatejobstatus(showstatus,ids);

    }
    @RequestMapping("getzhiweilistfor2")
    @ResponseBody
    public JSONObject getzhiweilistfor2(String  companyid,HttpSession session){
        companyid= (String) session.getAttribute("id");
        List<Map<String,Object>> list=  companycltService.getzhiweilistfor2(companyid);
        JSONObject obj=new JSONObject();
        obj.put("data",list);
        obj.put("count",list.size());
        obj.put("code", 0);
        obj.put("msg", "");
        return obj;

    }
    @RequestMapping("selectjiobclt2")
    @ResponseBody
    public JSONObject selectjiobclt2(String companyid,Job job,HttpSession session){
        companyid= (String) session.getAttribute("id");
        List<Map<String,Object>> list=companycltService.selectjiobclt2(companyid,job);
        JSONObject obj=new JSONObject();
        obj.put("data",list);
        obj.put("count",list.size());
        obj.put("code", 0);
        obj.put("msg", "");
        System.out.println(obj.toString());
        return obj;
    }
    @RequestMapping("selectalljob")
    @ResponseBody
    public List<Job> selectalljob(Job job){

        List<Job>  list =   companycltService.selectalljob(job);
        return list;
    }
    @RequestMapping("selectalljobbyid")
    public String selectalljobbyid(String zpid,HttpServletRequest request){


        Job job=companycltService.selectalljobbyid(zpid);

        String gongsiid =job.getCompanyphone();

        Company company =companycltService.selectcompanybyid(gongsiid);

        request.getSession().setAttribute("company",company);
        request.getSession().setAttribute("job",job);

    return "qiantai/jobxiangqing";
    }
    @RequestMapping("selectgongsiandjob")
    public String selectgongsiandjob(String id,HttpServletRequest request){
        Company companys =companycltService.selectcompanybyid(id);
        List<Job> joblist=companycltService.selectjobbygongsiid(id);
        request.getSession().setAttribute("companys",companys);
        request.getSession().setAttribute("joblist",joblist);
        return "qiantai/guanggaoxiangqing";
    }
    @RequestMapping("toudijianli")
    @ResponseBody
    public String toudijianli(String jobid,HttpServletRequest req){
    String userid= (String) req.getSession().getAttribute("userid");
    String a=null;
    if(userid==null){
        return "2";
    }else{
        companycltService.toudijianli(jobid,userid);
       return "1";
    }

}

}