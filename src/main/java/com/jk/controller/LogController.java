package com.jk.controller;


import com.alibaba.fastjson.JSONObject;
import com.jk.model.Logs;
import com.jk.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by yuankang on 2018/5/24.
 */
@Controller
@RequestMapping("logController")
public class LogController {

@Autowired
private LogService logService;

//查日志
@RequestMapping("logsList")
@ResponseBody
public JSONObject  logsList(Logs logs, Integer page, Integer rows){


    Map<String, Object> stringObjectMap = logService.logsList(logs, page, rows);
    List<Logs> list= (List<Logs>) stringObjectMap.get("rows");
    Long total= (Long) stringObjectMap.get("total");
    JSONObject object=new JSONObject();
    object.put("rows",list);
    object.put("total",total);
    return object;

}

    /**
     * 日志报表
     * @return
     */
    @ResponseBody
@RequestMapping("selecttongji")
public List selecttongji(){
    List selecttongji = logService.selecttongji();
    return selecttongji;
}




}
