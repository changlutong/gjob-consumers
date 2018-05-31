/**
 * Copyright (C), 2018-2018, 金科
 * FileName: HelloFreeMarkerController
 * Author:   HASEE
 * Date:     2018/5/29 15:44
 * Description:
 * History:
 * <author>                <desc>
 * 段家豪                    描述
 */
package com.jk.controller;

import com.jk.model.Notice;
import com.jk.service.NoticeService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈静态化页面控制层〉<br>
 * 〈〉
 *
 * @author HASEE
 * @create 2018/5/29
 * @since 1.0.0
 */
@Controller
@RequestMapping("freemarkera")
public class HelloFreeMarkerController {
    @Autowired
    private NoticeService noticeService;

    @RequestMapping("freemarkerb")
    @ResponseBody
    public String helloFreeMarker(Integer noticeid,HttpServletRequest request) throws IOException, TemplateException {

        Notice gonggao=noticeService.noticesids(noticeid);

        Configuration configuration = new Configuration();
        configuration.setDirectoryForTemplateLoading(new File("F:\\idea\\shixunerxiangmu\\gjob-consumers\\src\\main\\webapp\\qiantai\\templates"));

        configuration.setDefaultEncoding("UTF-8");
        Template template = configuration.getTemplate("Freemarker.ftl");
        //Writer out=new FileWriter(new File("F:\\idea\\shixunerxiangmu\\gjob-consumers\\src\\main\\webapp\\qiantai\\templates\\Freemarker.html"));
        Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File("F:\\idea\\shixunerxiangmu\\gjob-consumers\\src\\main\\webapp\\qiantai\\templates\\Freemarker.html")),"UTF-8"));
        Map     root=new HashMap();

        List<Notice> list =new ArrayList<Notice>();
        list.add(gonggao);
            root.put("list", list);

        template.process(root, out);

        out.flush();
        out.close();

        return "1";
    }



}
