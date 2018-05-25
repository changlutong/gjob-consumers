package com.jk.service;


import com.jk.model.Logs;

import java.util.Map;


/**
 * Created by yuankang on 2018/5/24.
 */
public interface LogService {

    Map<String, Object> logsList(Logs logs, Integer page, Integer rows);



}
