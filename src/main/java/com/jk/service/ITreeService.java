package com.jk.service;

import com.jk.model.Tree;

import java.util.List;

/**
 * Created by Administrator on 2018/05/14.
 */


public interface ITreeService {


    /*List<Tree> menulist();*/


    List<Tree> menulist(Integer rid);

    void deletelist(Integer id);

    void deletelist2(Integer id);




    String savelist(Tree menu, Integer rid) throws Exception;


    void updatelist(Tree menu);



}
