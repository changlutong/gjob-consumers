package com.jk.controller;

import com.jk.service.IUserdatumService;
import org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

/**
 * Created by ASUS on 2018/5/25.
 */
@Controller()
@RequestMapping("poiDaochuController")
public class PoiDaochuController {

  @Autowired
  private IUserdatumService userdatum;


  @RequestMapping("poiDaochu")//,String gzjyname,String gzjylb,String gzjyyx
  public List<Map<String, Object>> poiDaochu(String userid, String parnname, String spansex, String spanphone, String spanmail, String gzjy, HttpServletResponse response) throws Exception {
//查询求职意向
    List<Map<String, Object>> list = userdatum.queryuserqzyx(userid);
//查询工作经验
    List<Map<String,Object>> lists = userdatum.queryusergzjy(userid);
//查询教育背景
    List<Map<String,Object>> listss = userdatum.queryuserjybj(userid);
//查询培训经历
    List<Map<String,Object>> pxjl = userdatum.queryuserpxjl(userid);
//语言能力
    List<Map<String,Object>> yynl = userdatum.queryuseryynl(userid);


    //Blank Document
    XWPFDocument document = new XWPFDocument();

    //以下下载到本地↓↓↓↓↓↓↓↓↓↓↓↓
    // FileOutputStream out = new FileOutputStream(new File("E:\\个人简历.docx"));
    //添加标题↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
    String fileName = "个人简历.doc";
    fileName = URLEncoder.encode(fileName, "UTF-8");
    response.setHeader("Content-disposition", "attachment;filename=" + fileName);
    response.setContentType("application/msword");
    ServletOutputStream outputStream = response.getOutputStream();
    ;

    XWPFParagraph titleParagraph = document.createParagraph();
    //设置段落居中
    titleParagraph.setAlignment(ParagraphAlignment.CENTER);

    XWPFRun titleParagraphRun = titleParagraph.createRun();
    titleParagraphRun.setText("---个人简历---");
    titleParagraphRun.setColor("000000");
    titleParagraphRun.setFontSize(20);


    //段落
    XWPFParagraph firstParagraph = document.createParagraph();
    XWPFRun run = firstParagraph.createRun();
    run.setText("个人文档");
    run.setColor("696969");
    run.setFontSize(16);

    //设置段落背景颜色
    CTShd cTShd = run.getCTR().addNewRPr().addNewShd();
    cTShd.setVal(STShd.CLEAR);
    cTShd.setFill("97FFFF");


    //换行
    XWPFParagraph paragraph1 = document.createParagraph();
    XWPFRun paragraphRun1 = paragraph1.createRun();
    paragraphRun1.setText("\r");


    //基本信息表格
    XWPFTable infoTable = document.createTable();
    //去表格边框
    infoTable.getCTTbl().getTblPr().unsetTblBorders();


    //列宽自动分割
    CTTblWidth infoTableWidth = infoTable.getCTTbl().addNewTblPr().addNewTblW();
    infoTableWidth.setType(STTblWidth.DXA);
    infoTableWidth.setW(BigInteger.valueOf(9072));


    //表格第一行
    XWPFTableRow infoTableRowOne = infoTable.getRow(0);
    infoTableRowOne.getCell(0).setText("姓名:");
    infoTableRowOne.addNewTableCell().setText(":" + parnname + "");

    //表格第二行
    XWPFTableRow infoTableRowTwo = infoTable.createRow();
    infoTableRowTwo.getCell(0).setText("性别:");
    infoTableRowTwo.getCell(1).setText(": " + spansex + "");

    //表格第三行
    XWPFTableRow infoTableRowThree = infoTable.createRow();
    infoTableRowThree.getCell(0).setText("邮件:");
    infoTableRowThree.getCell(1).setText(":" + spanmail + "");

    //表格第四行
    XWPFTableRow infoTableRowFour = infoTable.createRow();
    infoTableRowFour.getCell(0).setText("手机号:");
    infoTableRowFour.getCell(1).setText(":" + spanphone + "");


    //表格第五行
    XWPFTableRow infoTableRowFive = infoTable.createRow();
    infoTableRowFive.getCell(0).setText("工作经验:");
    infoTableRowFive.getCell(1).setText(":" + gzjy + "");


    if(list.size() > 0){
    //两个表格之间加个换行
    XWPFParagraph paragraph = document.createParagraph();
    XWPFRun paragraphRun = paragraph.createRun();
    paragraphRun.setText("\r");

    //工作经历表格
    XWPFTable ComTable = document.createTable();

    //列宽自动分割

    CTTblWidth comTableWidth = ComTable.getCTTbl().addNewTblPr().addNewTblW();
    comTableWidth.setType(STTblWidth.DXA);
    comTableWidth.setW(BigInteger.valueOf(9072));
    System.out.println(list.get(0).get("nature"));
    //表格第一行


    XWPFTableRow comTableRowOne = ComTable.getRow(0);
    comTableRowOne.getCell(0).setText("期望工作性质");
    comTableRowOne.addNewTableCell().setText("期望求职地点");
    comTableRowOne.addNewTableCell().setText("期望从事职业");
    comTableRowOne.addNewTableCell().setText("期望月薪");
    comTableRowOne.addNewTableCell().setText("工作状态");

    //表格第二行
    for (Map<String, Object> map : list) {
      //System.out.println(map.get("nature"));
      String xinz = "";
      //将取到的值进行强转为object 然后再通过 .toString 进行取到
      Object xz = (Object)map.get("nature");

      if ("0".equals(xz.toString())){
        xinz = "全职";
      }
      if ("1".equals(xz.toString())) {
        xinz = "兼职";
      }
      if ("2".equals(xz.toString())) {
        xinz = "实习";
      }

      String gzzt = "";
     Object statust = map.get("statust");
      if (statust.toString().equals("1")) {
       // System.out.println(map.get("statust"));
        gzzt = "我目前处于离职状态，可立即上岗";
      }
      if (statust.toString().equals("2")) {
        gzzt = "我目前在职，正考虑换个新环境（如有合适的工作机会，到岗时间一个月左右）";
      }
      if (statust.toString().equals("3")) {
        gzzt = "我对现有工作还算满意，如有更好的工作机会，我也可以考虑。（到岗时间另议）";
      }
      if (statust.toString().equals("4")) {
        gzzt = "目前暂无跳槽打算";
      }
      if (statust.toString().equals("5")) {
        gzzt = "应届毕业生";
      }
      XWPFTableRow comTableRowTwo = ComTable.createRow();
      comTableRowTwo.getCell(0).setText("" + xinz + "");
      comTableRowTwo.getCell(1).setText("" + map.get("site") + "");
      comTableRowTwo.getCell(2).setText("" + map.get("occupation") + "");
      comTableRowTwo.getCell(3).setText("" + map.get("salary") + "");
      comTableRowTwo.getCell(4).setText("" + gzzt + "");
    }

    }

    if(lists.size() > 0){
//两个表格之间加个换行
    XWPFParagraph paragraph2 = document.createParagraph();
    XWPFRun paragraphRun2 = paragraph2.createRun();
    paragraphRun2.setText("\r");



    //工作经验表格
    XWPFTable ExpTable = document.createTable();
    //列宽自动分割

    CTTblWidth ExpTableWidth = ExpTable.getCTTbl().addNewTblPr().addNewTblW();
    ExpTableWidth.setType(STTblWidth.DXA);
    ExpTableWidth.setW(BigInteger.valueOf(9072));
    XWPFTableRow expTableRow1 = ExpTable.getRow(0);
    expTableRow1.getCell(0).setText("企业名称");
    expTableRow1.addNewTableCell().setText("专业类别");
    expTableRow1.addNewTableCell().setText("工作开始时间");
    expTableRow1.addNewTableCell().setText("工作结束时间");
    expTableRow1.addNewTableCell().setText("职位月薪(税前)");
    expTableRow1.addNewTableCell().setText("内容");
    for (Map<String, Object> map : lists) {
      //表格第二行
      XWPFTableRow expTableRow2 = ExpTable.createRow();
      expTableRow2.getCell(0).setText(""+map.get("qyname")+"");
      expTableRow2.getCell(1).setText(""+map.get("zylb")+"");
      expTableRow2.getCell(2).setText(""+map.get("kssj")+"");
      expTableRow2.getCell(3).setText(""+map.get("jssj")+"");
      expTableRow2.getCell(4).setText(""+map.get("zwyx")+"");
      expTableRow2.getCell(5).setText(""+map.get("nr")+"");
    }

    }

    if(listss.size() > 0){

      //两个表格之间加个换行
    XWPFParagraph paragraph3 = document.createParagraph();
    XWPFRun paragraphRun3 = paragraph3.createRun();
    paragraphRun3.setText("\r");


    //教育背景表格
    XWPFTable ExpTable3 = document.createTable();
    //列宽自动分割

    CTTblWidth ExpTableWidth3 = ExpTable3.getCTTbl().addNewTblPr().addNewTblW();
    ExpTableWidth3.setType(STTblWidth.DXA);
    ExpTableWidth3.setW(BigInteger.valueOf(9072));
    XWPFTableRow expTableRow3 = ExpTable3.getRow(0);
    expTableRow3.getCell(0).setText("学校名称");
    expTableRow3.addNewTableCell().setText("是否统招");
    expTableRow3.addNewTableCell().setText("开始时间");
    expTableRow3.addNewTableCell().setText("结束时间");
    expTableRow3.addNewTableCell().setText("学历");
    for (Map<String, Object> map : listss) {
      //表格第二行
      String sex = "";
      //将取到的值进行强转为object 然后再通过 .toString 进行取到
      Object xz = map.get("jybjsftz");

      if ("0".equals(xz.toString())){
        sex = "是";
      }
      if ("1".equals(xz.toString())) {
        sex = "否";
      }

      XWPFTableRow expTableRow4 = ExpTable3.createRow();
      expTableRow4.getCell(0).setText(""+map.get("jybjxxmc")+"");
      expTableRow4.getCell(1).setText(""+sex+"");
      expTableRow4.getCell(2).setText(""+map.get("jybjkssj")+"");
      expTableRow4.getCell(3).setText(""+map.get("jybjjssj")+"");
      expTableRow4.getCell(4).setText(""+map.get("jybjxl")+"");
    }

    }
    if(pxjl.size() > 0){
    //两个表格之间加个换行
    XWPFParagraph paragraph4 = document.createParagraph();
    XWPFRun paragraphRun4 = paragraph4.createRun();
    paragraphRun4.setText("\r");


    //教育背景表格
    XWPFTable ExpTable4 = document.createTable();
    //列宽自动分割

    CTTblWidth ExpTableWidth4 = ExpTable4.getCTTbl().addNewTblPr().addNewTblW();
    ExpTableWidth4.setType(STTblWidth.DXA);
    ExpTableWidth4.setW(BigInteger.valueOf(9072));
    XWPFTableRow expTableRow4 = ExpTable4.getRow(0);
    expTableRow4.getCell(0).setText("培训机构");
    expTableRow4.addNewTableCell().setText("培训地点");
    expTableRow4.addNewTableCell().setText("开始时间");
    expTableRow4.addNewTableCell().setText("结束时间");
    expTableRow4.addNewTableCell().setText("详情介绍");
    for (Map<String, Object> map : pxjl) {

      XWPFTableRow expTableRow5 = ExpTable4.createRow();
      expTableRow5.getCell(0).setText(""+map.get("psjlpxjg")+"");
      expTableRow5.getCell(1).setText(""+map.get("pxjldd")+"");
      expTableRow5.getCell(2).setText(""+map.get("pxjlkssj")+"");
      expTableRow5.getCell(3).setText(""+map.get("pxjljssj")+"");
      expTableRow5.getCell(4).setText(""+map.get("pxjljs")+"");
    }
    }

    if(yynl.size() > 0){
    //两个表格之间加个换行
    XWPFParagraph paragraph5 = document.createParagraph();
    XWPFRun paragraphRun5 = paragraph5.createRun();
    paragraphRun5.setText("\r");
    //教育背景表格



    XWPFTable ExpTable5 = document.createTable();
    //列宽自动分割

    CTTblWidth ExpTableWidth5 = ExpTable5.getCTTbl().addNewTblPr().addNewTblW();
    ExpTableWidth5.setType(STTblWidth.DXA);
    ExpTableWidth5.setW(BigInteger.valueOf(9072));
    XWPFTableRow expTableRow5 = ExpTable5.getRow(0);
    expTableRow5.getCell(0).setText("教育语言");
    expTableRow5.addNewTableCell().setText("读写能力");
    expTableRow5.addNewTableCell().setText("听说能力");
    for (Map<String, Object> map : yynl) {

      XWPFTableRow expTableRow6 = ExpTable5.createRow();
      expTableRow6.getCell(0).setText(""+map.get("yynlpxjg")+"");
      expTableRow6.getCell(1).setText(""+map.get("yynltsnl")+"");
      expTableRow6.getCell(2).setText(""+map.get("yynldxnl")+"");
    }

    }


    CTSectPr sectPr = document.getDocument().getBody().addNewSectPr();
    XWPFHeaderFooterPolicy policy = new XWPFHeaderFooterPolicy(document, sectPr);

    //添加页眉
    CTP ctpHeader = CTP.Factory.newInstance();
    CTR ctrHeader = ctpHeader.addNewR();
    CTText ctHeader = ctrHeader.addNewT();
    String headerText = "Java POI create MS word file.";
    ctHeader.setStringValue(headerText);
    XWPFParagraph headerParagraph = new XWPFParagraph(ctpHeader, document);
    //设置为右对齐
    headerParagraph.setAlignment(ParagraphAlignment.RIGHT);
    XWPFParagraph[] parsHeader = new XWPFParagraph[1];
    parsHeader[0] = headerParagraph;
    policy.createHeader(XWPFHeaderFooterPolicy.DEFAULT, parsHeader);


    //添加页脚
    CTP ctpFooter = CTP.Factory.newInstance();
    CTR ctrFooter = ctpFooter.addNewR();
    CTText ctFooter = ctrFooter.addNewT();
    String footerText = "http://blog.csdn.net/zhouseawater";
    ctFooter.setStringValue(footerText);
    XWPFParagraph footerParagraph = new XWPFParagraph(ctpFooter, document);
    headerParagraph.setAlignment(ParagraphAlignment.CENTER);
    XWPFParagraph[] parsFooter = new XWPFParagraph[1];
    parsFooter[0] = footerParagraph;
    policy.createFooter(XWPFHeaderFooterPolicy.DEFAULT, parsFooter);

/*
  document.write(out);
  out.close();*/
    System.out.println("create_table document written success.");

    OutputStream out = response.getOutputStream();
    document.write(out);
    out.flush();
    out.close();
    System.out.println("下载完成");

    return list;
  }
}
