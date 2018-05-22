package com.jk.controller;

import com.jk.model.Notice;
import com.jk.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/05/17.
 */

@Controller
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;
    Date date=new Date();
    @ResponseBody
    @RequestMapping("/chanoticelist")
    public Map<String,Object> querylist(Integer page, Integer rows , Notice notice){
        Map<String,Object> map = new HashMap<String, Object>();
        //总数据条数
        map.put("total", noticeService.getnotice(notice).size());
        //展示的数据
        map.put("rows", noticeService.querylistnotice(page,rows,notice));
        return map;
    }

    //新增
    @RequestMapping("/toAddnotice")
    public String toAddnotice(HttpServletRequest request){
        return "Notice/toAddnotice.jsp";
    }
    @RequestMapping("/addnotice")
    @ResponseBody
    public Object addnotice(Notice notice){
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String noticedate=format.format(date);
        notice.setNoticedate(noticedate);
        int n = noticeService.addnotice(notice);
        return n;
    }
    //删除

    @ResponseBody
    @RequestMapping("/deletenotice")
    public   String   deletenotice(String  ids){
        try {
            noticeService.deletenotice(ids);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "true";
    }
    //修改
    @RequestMapping("/upNotice")
    public String upNotice(Notice notice, HttpServletRequest request){
        notice = noticeService.upNotice(notice.getNoticeid());
        request.setAttribute("s", notice);
        return "Notice/updNotices";
    }
    @RequestMapping("/updateNotice")
    @ResponseBody
    public Object updateCompany(Notice notice){
        int n = noticeService.updateNotice(notice);
        return n;
    }

    //=================================================================================
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
