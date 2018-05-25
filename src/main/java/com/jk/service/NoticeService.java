package com.jk.service;

import com.jk.model.Notice;

import java.util.List;

/**
 * Created by Administrator on 2018/05/17.
 */
public interface NoticeService {

    List<Notice> getnotice(Notice notice);

    List<Notice> querylistnotice(Integer page, Integer rows, Notice notice);


    int addnotice(Notice notice);

    void deletenotice(String ids);

    Notice upNotice(Integer noticeid);

    int updateNotice(Notice notice);

    List<Notice> querynotices(Notice notice);

    Notice noticesids(Integer noticeid);
}
