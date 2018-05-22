package com.jk.controller;

import com.jk.model.*;
import com.jk.service.IUserdatumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * Created by ASUS on 2018/5/15.
 */

@Controller
@RequestMapping(value = "userdatumController")
public class UserDatumController {

    @Autowired
    private IUserdatumService userdatum;

    /**
     * 登录
     */

    @RequestMapping("selectUserlogin")
    @ResponseBody
    public String selectUserlogin(String loginname, String password, HttpServletRequest request){
       int count = userdatum.selectUsercount(loginname,password);
        if(count == 1){
            List<Tpersonal> list =  userdatum.selectUserlogin(loginname,password);
            request.getSession().setAttribute("tpersonal", list);
            request.getSession().setAttribute("userid", list.get(0).getUuids());
            System.out.println(list.toString());
            return "1";
        }else{
            return "0";
        }
    }


    /**
     * 新增个人信息
     * @param usergDatum
     */
    @RequestMapping("adduserdatumgrxx")
    @ResponseBody
    public void userdatumgrxx(UsergDatum usergDatum){
        System.out.println(usergDatum.toString());
        userdatum.userdatumgrxx(usergDatum);
    }

    /**
     * 这是新增自我评价
     * @param zwpjzt
     * @param zwpjnr
     */
    @RequestMapping("adduserzwpj")
    @ResponseBody
    public void adduserzwpj(Integer zwpjzt,String zwpjnr,String datumid){
        System.out.println(zwpjzt+"+,+"+zwpjnr+"+,+"+datumid);
        userdatum.adduserzwpj(zwpjzt,zwpjnr,datumid);
    }

    /**
     * 这是新增求职意向
     * @param qzyx //实体类
     * @param   //id
     */
    @RequestMapping("adduserqzyx")
    @ResponseBody
    public void adduserqzyx(Userqzyx qzyx){
            System.out.println(qzyx);
        userdatum.adduserqzyx(qzyx);
    }

    /**
     * 新增工作经眼
     * @param usergzjy
     */
    @RequestMapping("addusergzjy")
    @ResponseBody
    public void addusergzjy(Usergzjy usergzjy){
        System.out.println(usergzjy.toString());
        userdatum.addusergzjy(usergzjy);
    }

    /**
     * 新增教育背景
     * @param jybjfrom
     */
    @RequestMapping("adduserjybj")
    @ResponseBody
    public void adduserjybj(Userjybj jybjfrom){
        userdatum.adduserjybj(jybjfrom);
    }

    /**
     * 新增培训经历
     */

    @RequestMapping("adduserpxjl")
    @ResponseBody
    public void adduserpxjl(Userpxjl pxjlfrom){
        userdatum.adduserpxjl(pxjlfrom);
    }

    /**
     *新增语言能力
     */
    @RequestMapping("adduseryynl")
    @ResponseBody
    public void adduseryynl(Useryynl yynlform){
        userdatum.adduseryynl(yynlform);
    }

    private File  FileName;

    public File getFileName() {
        return FileName;
    }

    public void setFileName(File fileName) {
        FileName = fileName;
    }

    /**
     * oss
     * @param
     */

        @RequestMapping("addusertp")
        @ResponseBody
         public void addusertp(String userid, String userurl, String userjs) {

            String  url = userurl.substring(1,userurl.length()-1);
            userdatum.addusertp(userid,url,userjs);

        }
        /**
         * addPhoto 照片
         */

        @RequestMapping("addPhoto")
        @ResponseBody
        public void addPhoto(String userid, String userurl) {

            String  url = userurl.substring(1,userurl.length()-1);
            userdatum.addPhoto(userid,url);

        }

    /**
     * queryuseryhzp
     */
    @RequestMapping("queryuseryhzp")
    @ResponseBody
    public List<Map<String,Object>>queryuseryhzp(String userid){
        List<Map<String,Object>> list = userdatum.queryuseryhzp(userid);
        return list;
    }

    /**
     *
     */
    @RequestMapping("queryuserqita")
    @ResponseBody
    public List<Map<String,Object>> queryuserqita(String userid) {
        List<Map<String,Object>> list = userdatum.queryuserqita(userid);
        System.out.println(list.toString());
        return list;
    }
    /**
     * 新增其他
     * @param qtxxform
     */
    @RequestMapping("adduserqita")
    @ResponseBody
    public void adduserqita(Userqt qtxxform){
        userdatum.adduserqita(qtxxform);
    }

    /**
     * 查询回显  个人信息
     * @param userid
     * @return
     */
    @RequestMapping("queryusergrxx")
    @ResponseBody
    public List<Map<String,Object>> queryusergrxx(String userid){
        List<Map<String,Object>> list = userdatum.queryusergrxx(userid);
        System.out.println(list.toString());
        return list;
    }

    /**
     * 查询回显  自我评价
     */
    @RequestMapping("queryuserzwpj")
    @ResponseBody
    public List<Map<String,Object>>queryuserzwpj(String userid){
        List<Map<String,Object>> list = userdatum.queryuserzwpj(userid);
        System.out.println(list.toString());
        return list;
    }


    /**
     * 查询 求职经验
     */

    @RequestMapping("queryuserqzyx")
    @ResponseBody
    public List<Map<String,Object>>queryuserqzyx(String userid){
        List<Map<String,Object>> list = userdatum.queryuserqzyx(userid);
        System.out.println(list.toString());
        return list;
    }

    /**
     * 工作经验
     */
    @RequestMapping("queryusergzjy")
    @ResponseBody
    public List<Map<String,Object>>queryusergzjy(String userid){
        List<Map<String,Object>> list = userdatum.queryusergzjy(userid);
        System.out.println(list.toString());
        return list;
    }


    /**
     *教育背景
     */
    @RequestMapping("queryuserjybj")
    @ResponseBody
    public List<Map<String,Object>>queryuserjybj(String userid){
        List<Map<String,Object>> list = userdatum.queryuserjybj(userid);
        System.out.println(list.toString());
        return list;
    }

    /**
     * queryuserpxjl
     */
    @RequestMapping("queryuserpxjl")
    @ResponseBody
    public List<Map<String,Object>>queryuserpxjl(String userid){
        List<Map<String,Object>> list = userdatum.queryuserpxjl(userid);
        System.out.println(list.toString());
        return list;
    }

    /**
     *语言能力/
     */

    @RequestMapping("queryuseryynl")
    @ResponseBody
    public List<Map<String,Object>>queryuseryynl(String userid){
        List<Map<String,Object>> list = userdatum.queryuseryynl(userid);
        System.out.println(list.toString());
        return list;
    }

    /**
     * 删除 deleteuserjybj
     */

    @RequestMapping("deleteuserjybj")
    @ResponseBody
    public void deleteuserjybj(String userid,Integer id){
                userdatum.deleteuserjybj(userid,id);
    }

    /**
    * 删除 培训经历
    */
    @RequestMapping("deleteuserpxjl")
    @ResponseBody
    public void deleteuserpxjl(String userid,Integer id){
    userdatum.deleteuserpxjl(userid,id);
    }
    /**
     * 删除 语言能力
     */
    @RequestMapping("deleteuseryynl")
    @ResponseBody
    public void deleteuseryynl(String userid,Integer id){
        userdatum.deleteuseryynl(userid,id);
    }
}
