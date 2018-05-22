/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: JobController
 * Author:  常路通
 * Date:     2018/5/15 10:49
 * Description: 职位控制层
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: JobController
 * Author:   chang
 * Date:     2018/5/15 10:49
 * Description: 职位控制层
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.controller;

import com.jk.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈职位控制层〉
 *
 * @author chang
 * @create 2018/5/15
 * @since 1.0.0
 */
@Controller
@RequestMapping("/jobController")
public class JobController {
    @Autowired
    private IJobService jobService;
    @RequestMapping("getjobname")
    @ResponseBody
    public  List<String> getjobname(){
        List<String> list= jobService.getJobName();
        return list;
    }
}