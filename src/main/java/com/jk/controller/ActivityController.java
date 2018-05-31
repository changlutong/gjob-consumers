/**
 * Copyright (C), 2015-2018, 龙盾技术科技有限公司
 * FileName: ActivityController
 * Author:   ASUS
 * Date:     2018/5/18 9:15
 * Description: 活动控制层
 * History:
 * <author>          <e_mail>
 * 孙国锦          getElements@outlook.com
 */
package com.jk.controller;

import com.jk.model.Activity;
import com.jk.service.IActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br>
 * 〈活动控制层〉
 *
 * @author ASUS
 * @create 2018/5/18
 * @since 1.0.0
 */
@Controller
@RequestMapping(value = "activityController")
public class ActivityController {

    @Autowired
    private IActivityService activityService;


    /**
     * 分页查询活动列表
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "queryActivityList")
    @ResponseBody
    public Map<String,Object> queryActivityList(Integer page,Integer rows){
        //查询所有记录
        List<Activity> list = activityService.queryActivityList(page,rows);
        //查询总条数
        long total = activityService.queryActivitycount();
        Map<String ,Object> map = new HashMap<String, Object>();
        map.put("total",total);
        map.put("rows",list);
        return  map;
    }


    /**
     * 新增活动信息
     * @param activity
     */
    @RequestMapping(value = "saveActivity")
    @ResponseBody
    public void saveActivity(Activity activity){
        //处理前台传过来的日期参数
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String kaishitime = activity.getKaishitime();
        String jieshutime = activity.getJieshutime();
        Date starttime = null;
        Date endtime = null;
        if(kaishitime != null){
            try {
                starttime = sdf.parse(kaishitime);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            activity.setStarttime(starttime);
        }
        if(jieshutime != null) {
            try {
                endtime = sdf.parse(jieshutime);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            activity.setEndtime(endtime);
        }
        //截取图片路径中的双引号
        String url = activity.getImageurl();
        String uurl = url.replaceAll("\"","");
        activity.setImageurl(uurl);
        //添加创建时间
        String datee = sdf.format(new Date());
        activity.setCreatetime(datee);
        //添加排序，状态
        activity.setHorder(1);
        activity.setStatus("1");
        activityService.saveActivity(activity);
    }

    /**
     * 删除活动信息
     * @param ids
     */
    @RequestMapping(value = "deleteActivity")
    @ResponseBody
    public void deleteActivity(String ids){
        String [] arr = ids.split(",");
        for (int i = 0;i<arr.length;i++) {
            activityService.deleteActivity(Integer.parseInt(arr[i]));
        }
    }




}