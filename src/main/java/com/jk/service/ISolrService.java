package com.jk.service;

import com.jk.model.QueryJob;

/**
 * Created by chang on 2018/5/15.
 */
public interface ISolrService {
    QueryJob getsolrjoblist(Integer page,Integer row,String queryname);
}
