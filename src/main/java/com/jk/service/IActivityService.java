/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: IActivityService
 * Author:   ASUS
 * Date:     2018/5/18 9:16
 * Description:
 * History:
 * <author>          <e_mail>
 * 孙国进             getElements@outlook.com
 */
package com.jk.service;

import com.jk.model.Activity;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author ASUS
 * @create 2018/5/18
 * @since 1.0.0
 */
public interface IActivityService {

    List<Activity> queryActivityList(Integer page, Integer rows);

    long queryActivitycount();

    void saveActivity(Activity activity);

    void deleteActivity(int i);
}