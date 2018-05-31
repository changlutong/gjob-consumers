package com.jk.service;

import com.jk.model.*;

import java.util.List;
import java.util.Map;

/**
 * Created by ASUS on 2018/5/15.
 */
public interface IUserdatumService {

        void userdatumgrxx(UsergDatum usergDatum);

        void adduserzwpj(Integer zwpjzt, String zwpjzt1, String datumid);

        void adduserqzyx(Userqzyx qzyx);

        void addusergzjy(Usergzjy usergzjy);

        void adduserjybj(Userjybj jybjfrom);

        void adduserpxjl(Userpxjl pxjlfrom);

        void adduseryynl(Useryynl yynlform);

        void adduserqita(Userqt qtxxform);

        List<Map<String,Object>> queryusergrxx(String userid);

        List<Map<String,Object>> queryuserzwpj(String userid);

        List<Map<String,Object>> queryuserqzyx(String userid);

        List<Map<String,Object>> queryusergzjy(String userid);

        List<Map<String,Object>> queryuserjybj(String userid);

        List<Map<String,Object>> queryuserpxjl(String userid);

        List<Map<String,Object>> queryuseryynl(String userid);

        void deleteuserjybj(String userid, Integer id);

        void deleteuserpxjl(String userid, Integer id);

        void deleteuseryynl(String userid, Integer id);

         void addusertp(String userid, String url, String userjs);

        List<Map<String,Object>> queryuserqita(String userid);

        void addPhoto(String userid, String url);

        List<Map<String,Object>> queryuseryhzp(String userid);

        List<Tpersonal> selectUserlogin(String loginname, String password);

        int selectUsercount(String loginname, String password);

        List<Map<String,Object>> selectalljobto(String userid);

        String saveuserinfo(String phone, String password1);

        List<Map<String,Object>> selectallwdtdxq(String companyid,String userid);

        List<Map<String,Object>> selectzls(String zwei, String xingz, String ddian);

        List<Map<String,Object>> selectxgzp(String companyid);

        /**
         * oss
         */
      //  void addossFile(UserFile up);
     //   String updateHead(MultipartFile file);
}
