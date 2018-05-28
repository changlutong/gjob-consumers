/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: SolrController
 * Author:  常路通
 * Date:     2018/5/15 11:28
 * Description: SOLR控制层
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SolrController
 * Author:   chang
 * Date:     2018/5/15 11:28
 * Description: SOLR控制层
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Job;
import com.jk.model.QueryJob;
import com.jk.service.ISolrService;
import org.activiti.engine.impl.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈SOLR控制层〉
 *
 * @author chang
 * @create 2018/5/15
 * @since 1.0.0
 */
@Controller
@RequestMapping("solrController")
public class SolrController {
    @Autowired
    private ISolrService solrService;

    @RequestMapping("getsolrjoblist")
    @ResponseBody
    public QueryJob getsolrjoblist(Integer page, Integer row,String queryname){
        QueryJob list= solrService.getsolrjoblist(page,row,queryname);
        System.out.println(list.getRows().get(0).getId());
        return list;
    }

}