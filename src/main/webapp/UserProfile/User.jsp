<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/15
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <meta http-equiv=”X-UA-Compatible” content=”IE=edge,chrome=1″/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>简历管理-我的龙盾-龙盾招聘</title>
    <!--css类引用-->
    <link rel="stylesheet" href="plugins/eleme-ui/index.css" />
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
    <link href="css/haodoxi.css" rel="stylesheet" type="text/css" />

    <!-- 这是jquery的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- 这是easyui的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
    <!-- jqeuy默认的css样式 -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">


</head>
<body>
<!-- 上传图片 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>


<!-- 代码 开始 -->

    <script type="text/javascript">
        $(function(){
            var tabNum=$(".important").find("li");
            var contentNum=$(".contents").children();
            var timer;
            $(tabNum).each(function(index){
                $(this).hover(function(){
                    var that=$(this)
                    timer=window.setTimeout(function(){
                        $(contentNum).eq(index).css({"display":"block"});
                        $(contentNum).eq(index).siblings().css({"display":"none"});
                        that.find("a").css({"background":"#FFF","color":"#fff"});
                        that.find("strong").show();
                        that.siblings().find("strong").hide();
                        that.siblings().find("a").css({"background":"#fff","color":"black"});
                    },100)
                },function(){
                    window.clearTimeout(timer);
                })
            })
        })
    </script>

    <div class="w1200">
        <div class="title">
            <h1><span>用户信</span>息详情</h1>
        </div>
        <ul class="important cl">
            <li class="rcsp_1">
                <a><span></span></a>
                <p>个人信息</p>
                <strong><i></i></strong>
            </li>
            <li class="rcsp_2">
                <a><span></span></a>
                <p>自我评价</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_3">
                <a><span></span></a>
                <p>求职意向</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_4">
                <a><span></span></a>
                <p>工作经验</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_5">
                <a><span></span></a>
                <p>教育背景</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_6">
                <a><span></span></a>
                <p>培训经历  </p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_7">
                <a><span></span></a>
                <p>语言能力</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_8">
                <a><span></span></a>
                <p>照片附件</p>
                <strong style="display:none"><i></i></strong>
            </li>
            <li class="rcsp_9">
                <a><span></span></a>
                <p>其他信息</p>
                <strong style="display:none"><i></i></strong>
            </li>
        </ul>
        <div class="contents">
            <div class="cl">
                <div class="important_l">
                    <a><img src="images/071146464hka.jpg"></a>
                </div>
                <div class="important_r">
                    <div class="title_1">
                        <h3>wel<span></span> come </h3>
                        <span class="input"></span>
                        <h2>用户基<span>本信息</span></h2>
                        <p>确定身份，让商家和客户之间彼此了解和交流,有利于网络商城的开展，避免了一些不法分子在网络上欺骗消费者。</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <div class="study">
                        -------------------------------------------------------------------<br><br>
                        <!-- my97 -->
                        <script  type="text/javascript"src="<%=request.getContextPath()%>/UserProfile/My97DatePicker/WdatePicker.js"></script>

                        <form id="grxx">

                        <input type="hidden" id="datumid"  name="datumid" value="${tpersonal[0].uuids}"/>
                        修改个人信息（	<font color="ff0000"> *</font>为必填项）<br>
                        <table>
                            <tr>
                                <td><font color="ff0000"> *</font>姓名  : </td>
                                <td> <input class="easyui-validatebox" type="text" name="grxxname" id="grxxname" data-options="required:true" style="border:1px solid" /></td>
                            </tr>

                            <tr>
                                <td><font color="ff0000"> *</font>性别 :   </td>
                                <td>	<input type="radio" name="grxxXB" value="0"  checked="checked">男 &nbsp;&nbsp;<input type="radio"  name="grxxXB" value="1">女</td>
                            </tr>
                            <tr>
                                <td>	<font color="ff0000"> *</font>出生日期 : </td>
                                <td>

                                    <input type="text" class="Wdate" id="grxxcsrq" name="grxxcsrq" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" />
                                </td>
                            </tr>
                            <tr>
                                <td><font color="ff0000"> *</font>参加工作年份 : </td>
                                <td>
                                    <select id="grxxgznf" name="grxxgznf" style="width:177px">
                                        <option value="1年工作经验"   selected="selected" >1年工作经验</option>
                                        <option value="2年工作经验">2年工作经验</option>
                                        <option value="3年工作经验">3年工作经验</option><br>
                                        <option value="4年到5工作经验">4年到5工作经验</option>
                                        <option value="6年工作经验已上">6年工作经验已上</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><font color="ff0000"> *</font>联系方式 :</td>
                                <td><input class="easyui-validatebox" type="text" id="grxxlxfs" name="grxxlxfs" data-options="required:true" style="border:1px solid" /></td>
                            </tr>
                            <tr>
                                <td>	<font color="ff0000"> *</font>电子邮箱 : </td>
                                <td><input class="easyui-validatebox" type="text" id="grxxdzyj" name="grxxdzyj" data-options="required:true" style="border:1px solid" /></td>
                            </tr>
                            <tr>
                                <td>	婚姻状况 : </td>
                                <td>
                                    <input type="radio" name="grxxhy" value="0"  >已婚
                                    <input type="radio" name="grxxhy" value="1">未婚
                                    <input type="radio" name="grxxhy" value="2">离异

                                </td>
                            </tr>
                            <tr>
                                <td>国籍 : </td>
                                <td>
                                    <select id="grxxgj" name="grxxgj">

                                        <option value="中国"  selected="selected">中国</option>
                                        <option value="美国">美国</option>
                                        <option value="姜国">姜国</option>
                                        <option value="兰国">兰国</option>
                                        <option value="加拿大">加拿大</option>
                                        <option value="加拿小">加拿小</option>
                                        <option value="东京">东京</option>
                                        <option value="京东">京东</option>
                                        <option value="俄罗斯">俄罗斯</option>
                                        <option value="鹅螺丝">鹅螺丝</option>
                                        <option value="额螺蛳">额螺蛳</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td width="130px">海外工作/经历 :</td>
                                <td>
                                    <input type="radio" name="grxxjl"value="1">有
                                    <input type="radio" name="grxxjl"value="0">无

                                </td>
                            </tr>
                            <tr>
                                <td>政治面貌 :   </td>
                                <td>
                                    <input type="radio" name="grjlzzmm" value="中共党员"  >中共党员
                                    <input type="radio" name="grjlzzmm" value="团员"> 团员
                                    <input type="radio" name="grjlzzmm" value="群众民">群众民
                                    <input type="radio" name="grjlzzmm" value="主党派">主党派
                                    <input type="radio" name="grjlzzmm" value="无党派">无党派
                                </td>
                            </tr>
                        </table><br>
                        <input type="hidden" id="grxxdz" name="grxxdz"/>
                </form>
                    </div>

                    <div id="myVue" style="margin-left:20px;">
                        <el-form ref="button" :model="form" label-width="100px">
                            <el-form-item  label="户口所在地:">
                                <el-cascader
                                        :options="CityInfo"
                                        v-model="form.selectedOptions"
                                        :change-on-select="true"
                                        :clearable="true"
                                        :filterable="true"
                                        @change="handleChange">
                                </el-cascader>
                                <br><span id="grxxdq">{{form.city | myAddressCity}}{{form.erae | myAddressErae}}{{form.minerae | myAddressMinerae}}</span>

                            </el-form-item>
                        </el-form>
                    </div>
                    <!--js类引用-->
                    <script type="text/javascript" src="plugins/vue/vue.min.js" ></script>
                    <script type="text/javascript" src="plugins/eleme-ui/index.js" ></script>
                    <script type="text/javascript" src="plugins/city-picker/city-data.js" ></script>
                    <script type="text/javascript" src="js/CivilMilitaryIntegration/ShoppingCart.js" ></script>

                    <div class="study">
                        <center> <span id="grxxdqs"></span></center>
                        -----------------------------------------------------------------

                        <br><br>

                        <div>
                            <center>
                                <input type="button" value="提交" onclick="grxx()"  style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="button" value="返回" onclick="fhui()"  style="border:1px solid">
                            </center>
                        </div>
                    </div>

                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                </div>
            </div>


            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/170854226k8c.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>self</span> -assessment </h3>
                        <h2>自我<span>评价</span></h2>
                        <p>自我评价: 写出完美的自己!!!</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <div class="study">

			  <span><p><span style="font-size: small;">long盾建议您对自己做一个简短评价，简明扼要地描述您的职业优势，让用人单位快速地了解您！
							优秀的自我评价可以吸引招聘人员的眼球，为您的简历增色不少！（*为必填项）</span></p></span>
                        <br><br>
                        <table>
                            <tr>
                                <td>主题:</td>
                                <td>
                                    <select name="zwpjzt" id="zwpjzt">
                                        <option value="0" selected="selected">自我评价</option>
                                        <option value="1">职业目标</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>内容</td>
                                <td>
										<textarea name="zwpjnr" id="zwpjnr" rows="10" cols="50">范例一：填写文字在100个字以上评定等级，少于不计算，内容越详细，等级越高  范例二：(限500个字)</textarea>
                                </td>
                            </tr>
                        </table>
                        <br><br>
                        <center>
                            <input type="button" value="提交" onclick="zwpj()" style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                        </center>


                    </div>
                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                    <h1 >

                        <font color="ff0000" size="5">注:</font>自我评价撰写技巧
                        社会简历
                        详细罗列出您所拥有的特长、技能和经验，以及您在以前的工作中累积了的优势。您可以根据招聘方的招聘信息，有针对性地罗列，让人事经理更好地了解到您与所申请职位的符合程度。
                        用尽可能简要且平实的语句概括描述出您的特长、技能、经验及优势。语言不可过于口语化，内容须实事求是，不可夸张。
                        避免提到您的业余爱好、抱负、对公司的感想等；避免空泛、感性、老套的话。
                        学生简历
                        详细罗列出您所拥有的专长、技能和实践经验，以及您在校期间经过锻炼培养出来的能力。您可以根据招聘方的招聘信息，有针对性地罗列，让人事经理更好地了解到您与所申请职位的符合程度。
                        用尽可能简要且平实的语句概括描述出您的专长、技能、实践经验及能力。语言不可过于口语化，内容须事实求是，不可夸张。
                        避免提到您的业余爱好、抱负、对公司的感想等；避免空泛、感性、老套的话。
                </div>
            </div>

            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17085130oitn.jpg"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>inte</span> nsion </h3>
                        <h2>求职<span>意向</span></h2>
                        <p>根据个人的爱好和能力，对自己进行职业规划，明确自己所要从事的职业，从而有针对性的去寻找合适的工作。</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <div class="study">
                        <br>
                        <form id="qzyxform">

                            <input type="hidden" id="userqzyxid"  name="userqzyxid" value="${tpersonal[0].uuids}"/>
                        <table>
                            <tr>
                                <td><font color="ff0000"> *</font>期望工作性质:	 </td>
                                <td>
                                    <input type="radio" name="qzyxxz" value="0">全职  <input type="radio" name="qzyxxz"  value="1">兼职 <input type="radio" name="qzyxxz" value="2">实习
                                </td>
                            </tr>
                            <tr>
                                <td width="500px"><font color="ff0000"> *</font> 期望求职地点 :</td>
                                <td>
                                    <select name="qzyxdd" id="qzyxdd" >
                                        <option value="北京"  selected="selected">北京</option>
                                        <option value="忻州">忻州</option>
                                        <option value="上海">上海</option><br>
                                        <option value="广州">广州</option>
                                        <option value="深圳">深圳</option>
                                        <option value="天津">天津</option>
                                        <option value="武汉">武汉</option>
                                        <option value="西安">西安</option>
                                        <option value="成都">成都</option>
                                        <option value="大连">大连</option>
                                        <option value="沈阳">沈阳</option>
                                        <option value="济南">济南</option>
                                        <option value="青岛">青岛</option>
                                        <option value="苏州">苏州</option>
                                        <option value="无锡宁波">无锡宁波</option>
                                        <option value="重庆">重庆</option>
                                        <option value="郑州">郑州</option>
                                        <option value="长沙">长沙</option>
                                        <option value="福州">福州</option>
                                        <option value="厦门">厦门</option>
                                        <option value="哈尔滨">哈尔滨</option>
                                        <option value="石家庄">石家庄</option>
                                        <option value="合肥">合肥</option>
                                        <option value="惠州">惠州</option>
                                        <option value="太原">太原</option>
                                        <option value="昆明">昆明</option>
                                        <option value="烟台">烟台</option>
                                        <option value="佛山">佛山</option>
                                        <option value="南昌">南昌</option>
                                        <option value="贵阳">贵阳</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><font color="ff0000"> *</font>期望从事职业:</td>
                                <td>
                                    <select name="qzyxcszy" id="qzyxcszy">
                                        <option value="用户体验（UE/UX）设计"  selected="selected">用户体验（UE/UX）设计</option>
                                        <option value="网页设计/制作/美工">网页设计/制作/美工</option>
                                        <option value="游戏设计/开发">	游戏设计/开发</option><br>
                                        <option value="游戏策划">	游戏策划	</option>
                                        <option value="游戏界面设计">游戏界面设计</option>
                                        <option value="系统集成工程师">系统集成工程师</option>
                                        <option value="算法工程师">算法工程师</option>
                                        <option value="仿真应用工程师">仿真应用工程师</option>
                                        <option value="计算机辅助设计师">计算机辅助设计师</option>
                                        <option value="网站架构设计师">网站架构设计师</option>
                                        <option value="IOS开发工程师">IOS开发工程师</option>
                                        <option value="Android开发工程师">Android开发工程师</option>
                                        <option value="Java开发工程师">Java开发工程师</option>
                                        <option value="PHP开发工程师">PHP开发工程师</option>
                                        <option value="C语言开发工程师">C语言开发工程师</option>
                                        <option value="脚本开发工程师">脚本开发工程师</option>
                                        <option value="其他">其他</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><font color="ff0000"> *</font>期望月薪(税前):</td>
                                <td>
                                    <select name="qzyxyx" id="qzyxyx">
                                        <option value="3000以下">  &nbsp;&nbsp; 3000以下</option>
                                        <option value="3000-5000">  &nbsp;&nbsp;  3000-5000</option>
                                        <option value="6000-8000" selected="selected">  &nbsp;&nbsp;  6000-8000</option>
                                        <option value="9000-1200">  &nbsp;&nbsp;  9000-1200</option>
                                        <option value="13000-15000">&nbsp;13000-15000	</option>
                                        <option value="16000-18000">&nbsp;16000-18000</option>
                                        <option value="19000-21000">&nbsp;19000-21000</option>
                                        <option value="22000-30000">&nbsp;22000-30000</option>
                                        <option value="30000-50000">&nbsp;30000-50000</option>
                                        <option value="50000-7000">&nbsp;50000-70000</option>
                                        <option value="70000-90000">&nbsp;70000-90000</option>
                                        <option value="90000以上">&nbsp;&nbsp;   90000以上</option>
                                        <option value="其他">    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   其他    </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><font color="ff0000"> *</font>工作状态:	</td>
                                <td>
                                    <select name="qzyxgzzt" id="qzyxgzzt" style="width:300px;">
                                        <option value="1" selected="selected">我目前处于离职状态，可立即上岗</option>
                                        <option value="2">我目前在职，正考虑换个新环境（如有合适的工作机会，到岗时间一个月左右）</option>
                                        <option value="4">我对现有工作还算满意，如有更好的工作机会，我也可以考虑。（到岗时间另议）</option>
                                        <option value="3">目前暂无跳槽打算</option>
                                        <option value="5">应届毕业生</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <br>
                        <center>
                            <input type="button" value="提交" onclick="qzyx()"  style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                        </center>

                        <br><br><br>
                        <span><p><span style="font-size: small;">选择合理地点,选择合理工作位置,选择合适薪资,展现完美的自己!!!</span></p></span>

                    </div>
                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17085153yh1h.jpg"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>expe</span> rience </h3>
                        <h2>工作<span>经验</span></h2>
                        <p>工作经历怎么写？工作经历是个人简历中的重中之重，是HR最看重的内容。通常来说，简历都要通过重重的筛选，过六关斩五将才能进入HR的眼球。因此龙盾提示:认为写好工作经历十分重要。</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <br><br>

                    <form id="usergzjy">
                        <input type="hidden" id="gzjyid"  name="gzjyid" value="${tpersonal[0].uuids}"/>
                    <table>
                        <!-- my97 -->
                        <script  type="text/javascript"src="<%=request.getContextPath()%>/UserProfile/My97DatePicker/WdatePicker.js"></script>

                        <tr>
                            <td>企业名称:</td>
                            <td> <input class="easyui-validatebox" type="text" name="gzjyqymc" id="gzjyqymc" data-options="required:true" style="border:1px solid" /></td>
                        </tr>
                        <tr>
                            <td>专业类别:</td>
                            <td>
                                <select name="gzjyzylb" id="gzjyzylb" style="width:400px;">
                                    <option value="null">--专业类别--</option>
                                    <option value="销售|客服|市场"  selected="selected">销售|客服|市场</option>
                                    <option value="财务|人力资源|行政">财务|人力资源|行政</option>
                                    <option value="项目|质量|高级管理">	项目|质量|高级管理</option><br>
                                    <option value="IT|互联网|通信">IT|互联网|通信</option>
                                    <option value="房产|建筑|物业管理">房产|建筑|物业管理</option>
                                    <option value="采购|贸易|交通|物流">采购|贸易|交通|物流</option>
                                    <option value="生产|制造">生产|制造</option>
                                    <option value="传媒|印刷|艺术|设计">传媒|印刷|艺术|设计</option>
                                    <option value="咨询|法律|教育|翻译">咨询|法律|教育|翻译</option>
                                    <option value="服务业">服务业</option>
                                    <option value="能源|环保|农业|科研">能源|环保|农业|科研</option>
                                    <option value="兼职|实习|社工|其他">兼职|实习|社工|其他</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>工作时间:</td>
                            <td>
                                <input type="text" class="Wdate" id="timeStarts" name="queryBugDateStart"value="" readonly="readonly"onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'timeEnds\')}'})">
                                --->
                                <input type="text" class="Wdate" id="timeEnds" name="queryBugDateEnd" value="" readonly="readonly" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'timeStarts\')}'})">

                            </td>
                        </tr>
                        <tr>
                            <td>职位月薪(税前):</td>
                            <td>
                                <select name="gzjyzwyx" id="gzjyzwyx" style="width:400px;">
                                    <option value="1000元/月以下">1000元/月以下</option>
                                    <option value="1000-2000元/月">1000-2000元/月</option>
                                    <option value="2001-4000元/月">2001-4000元/月</option>
                                    <option value="4001-6000元/月">4001-6000元/月</option>
                                    <option value="6001-8000元/月">6001-8000元/月</option>
                                    <option value="8001-10000元/月">8001-10000元/月</option>
                                    <option value="10001-15000元/月">10001-15000元/月</option>
                                    <option value="15000-25000元/月">15000-25000元/月</option>
                                    <option value="25000-35000元/月">25000-35000元/月</option>
                                    <option value="35000-50000元/月">35000-50000元/月</option>
                                    <option value="50000-70000元/月">50000-70000元/月</option>
                                    <option value="70000-100000元/月">70000-100000元/月</option>
                                    <option value="100000元/月以上">100000元/月以上</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>内容:</td>
                            <td>
										<textarea name="gzjynr" id="gzjynr" rows="10" cols="50">填写文字在100个字以上评定等级，少于不计算，内容越详细，等级越高。(限3000字以内)
										</textarea>
                            </td>
                        </tr>
                    </table>

                    </form>

                    <br>
                    <center>
                        <input type="button" value="提交" onclick="gzjy()" style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                    </center>
                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/170852357mmn.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>backg</span> round </h3>
                        <h2>教育<span>背景</span></h2>
                        <p>教育背景是对一个人学习环境和学习能力的概述.</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>

                    <center>
                        <table id="jybjtable" border="1" style="border-collapse:collapse;">

                        </table>

                        <br><br>
                        <!-- my97 -->
                        <script  type="text/javascript"src="<%=request.getContextPath()%>/UserProfile/My97DatePicker/WdatePicker.js"></script>

                        <form id="jybjfrom">
                            <input type="hidden" id="jybjid"  name="jybjid" value="${tpersonal[0].uuids}"/>
                        <table>
                            <tr>
                                <td width="20px">&nbsp;时间:</td>
                                <td>
                                    <input type="text" class="Wdate" id="timeStartq" name="queryBugDateStart"value="" readonly="readonly"onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'timeEndq\')}'})">
                                    --->
                                    <input type="text" class="Wdate" id="timeEndq" name="queryBugDateEnd" value="" readonly="readonly" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'timeStartq\')}'})">
                                </td>
                            </tr>
                            <tr>
                                <td>学校名称:</td>
                                <td> <center><input class="easyui-validatebox" type="text" name="jybjname" data-options="required:true" style="border:1px solid" /></center></td>
                            </tr>
                            <tr>
                                <td>是否统招:</td>
                                <td> <center><input type="radio" name="jybjtz" value ="0">是 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="jybjtz" value="1">否 </center></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;学历 :</td>
                                <td>
                                    <center>
                                    <select name="jybjxl" id="jybjxl" style="width:177px">
                                        <option value="大专">-----大专-----</option>
                                        <option value="本科">-----本科-----</option>
                                        <option value="硕士">-----硕士-----</option>
                                        <option value="博士">-----博士-----</option>
                                        <option value="MBA">------MBA------</option>
                                        <option value="EMBA">-----EMBA-----</option>
                                        <option value="中专">-----中专-----</option>
                                        <option value="中技">-----中技-----</option>
                                        <option value="高中">-----高中-----</option>
                                        <option value="初中">-----初中-----</option>
                                        <option value="其他">-----其他-----</option>
                                    </select>
                                    </center>
                                </td>
                            </tr>
                        </table>

                      </form>
                        <br>
                        <input type="button" value="提交" onclick="jybj()"  style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">

                    </center>

                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>

                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17085256xhlm.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>training </span> record </h3>
                        <h2>培训<span>经历</span></h2>
                        <p>培训经历其实可以算是教育经历的一部分,但如果您所受的培训与所应聘的职位有很大的相关性,有些企业十分看重培训经历,因为在社会上的培训对实际的工作都非常重要...</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <center>


                        <table  id="tablepxjl" border="1" style="border-collapse:collapse;">

                        </table>

                        <br><br>
                        <!-- my97 -->
                        <script  type="text/javascript"src="<%=request.getContextPath()%>/UserProfile/My97DatePicker/WdatePicker.js"></script>

                        <form id="pxjlfrom">
                                 <input type="hidden" id="pxjlid"  name="pxjlid" value="${tpersonal[0].uuids}"/>
                        <table>
                            <tr>
                                <td width="50px">&nbsp;时间:</td>
                                <td>
                                    <input type="text" class="Wdate" id="timeStartw" name="queryBugDateStart"value="" readonly="readonly"onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'timeEndw\')}'})">
                                    --->
                                    <input type="text" class="Wdate" id="timeEndw" name="queryBugDateEnd" value="" readonly="readonly" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'timeStartw\')}'})">
                                </td>
                            </tr>
                            <tr>
                                <td>培训机构:</td>
                                <td> <center><input class="easyui-validatebox" type="text" name="pxjljg" data-options="required:true" style="border:1px solid;width: 220px" /></center></td>
                            </tr>
                            <tr>
                                <td>培训地点:</td>
                                <td>  <center><input class="easyui-validatebox" type="text" name="pxjlddian" data-options="required:true" style="border:1px solid;width: 220px" /></center></td>
                            </tr>
                            <tr>
                                <td>是否统招:</td>
                                <td><center><input type="radio" name="pxjlsftz" value ="0">是 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="pxjlsftz" value="1">否</center></td>
                            </tr>
                            <tr>
                                <td>详情介绍 :</td>
                                <td>
										<textarea name="pxjlxqjs" rows="9" cols="45">培训撰写技巧
培训描述时应包含关键字，关键字将存入数据库以便查找。关键字须描述清楚，如：C++、UNIX、网络、工程等。
列举与应聘职位相关的培训课程，避免涉及无关的课程。
用简单的语句表明从该培训中得到的收获。
										</textarea>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <br>
                        <input type="button" value="提交" onclick="pxjl()"  style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                    </center>
                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                    <!--div class="study"><a class="know" href="">对员工档案不了解？>点击了解</a></div-->
                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17091705h84f.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>compe</span> tence </h3>
                        <h2>语言<span>能力</span></h2>
                        <p>表达流畅 善于表达 交流能力强 如果需要等级说明就是普通话程度,一甲一乙神马的,得参加普通话考试 如果是英语,四级六级等等,分数高的可以把分数写上。 </p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>

                    <center>

                        <table id="tableyynl" border="1" style="border-collapse:collapse;">

                        </table>
                        <br><br>
                        <form id="yynlform">

                            <input type="hidden" id="yynlid"  name="yynlid" value="${tpersonal[0].uuids}"/>

                            <table>
                            <tr>
                                <td>培训机构:</td>
                                <td>
                                        <select name="yynlpxjg">
                                        <option value="">无</option>
                                        <option value="英语">英语</option>
                                        <option value="日语">日语</option>
                                        <option value="法语">法语</option>
                                        <option value="德语">德语</option>
                                        <option value="俄语">俄语</option>
                                        <option value="韩语">韩语</option>
                                        <option value="西班牙语">西班牙语</option>
                                        <option value="葡萄牙语">葡萄牙语</option>
                                        <option value="阿拉伯语">阿拉伯语</option>
                                        <option value="意大利语">意大利语</option>
                                        <option value="其他">其他</option>
                                    </select>
                                    &nbsp;&nbsp;&nbsp;&nbsp;读写能力
                                    <select name="yynldxnl">
                                        <option value="一般">一般</option>
                                        <option value="良好">良好</option>
                                        <option value="熟练">熟练</option>
                                        <option value="精通">精通</option>
                                    </select>&nbsp;&nbsp;&nbsp;&nbsp;
                                    听说能力
                                    <select name="yynltsnl">
                                        <option value="一般">一般</option>
                                        <option value="良好">良好</option>
                                        <option value="熟练">熟练</option>
                                        <option value="精通">精通</option>
                                    </select>
                                </td>
                            </tr>
                        </table>

                        </form>
                        <br>
                        <input type="button" value="提交"  onclick="yynl()" style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                    </center>
                    <td>
                        <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17091755q1f1.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>ID Photo Print</span> to Print </h3>
                        <h2>证件<span>照片</span></h2>
                        <p>证件照的要求是免冠(不戴帽子)正面照片,照片上正常应该看到人的两耳轮廓和相当于男士的喉结处的地方.</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>
                    <center>
                        <h2>您可以在此上传您的附件（设计成果，毕业证书，身份证等），将它们转成图形格式（目前只支持jpg格式），我们暂时不支持其他类型的附件，大小请不要超过500K。</h2>
                        <br>


                        <input type="hidden" id="fileid"  name="fileid" value="${tpersonal[0].uuids}"/>
                            <table>
                                <tr>
                                    <td>证件照片:</td>
                                    <td>
                                        <input type="hidden" name="imageurl" id="imageurl"/>
                                        <input type="file" id="file" name="image"/>
                                        <div id="show"></div><br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>相关介绍：</td>
                                    <td>
                                        <textarea name="filejs" id="filejs" rows="5" cols="45"></textarea>
                                    </td>
                                </tr>
                            </table>
                            <br>
                        <input type="button" value="提交"  onclick="zjzp()" style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                    </center>

                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>

                </div>
            </div>
            <div class="cl" style="display: none">
                <div class="important_l"><a><img src="images/17091816zslw.png"></a></div>
                <div class="important_r">
                    <div class="title_1">
                        <h3><span>other in</span> formation </h3>
                        <h2>其他<span>信息</span></h2>
                        <p>其他信息是指根据法律、法规的规定或惯例，在被审计单位年度报告、招股说明书等文件中包含的除已审计财务报表和审计报告以外的其他财务信息和非财务信息。</p>
                    </div>
                    <div class="icon_top cl"><i class="i_left"></i><i class="i_right"></i></div>

                    <center>
                        <form id="qtxxform">
                            <input type="hidden" id="qitaid"  name="qitaid" value="${tpersonal[0].uuids}"/>
                        <table>
                            <tr>
                                <td>标题:</td>
                                <td>
                                    <select name="qitazhuti" style="width:366px">
                                        <option value="兴趣爱好">兴趣爱好</option>

                                        <option value="获得荣誉">获得荣誉</option>

                                        <option value="专业组织">专业组织</option>

                                        <option value="著作/论文">著作/论文</option>

                                        <option value="专利">专利</option>

                                        <option value="宗教信仰">宗教信仰</option>

                                        <option value="特长职业目标">特长职业目标</option>

                                        <option value="特殊技能">特殊技能</option>

                                        <option value="社会活动">社会活动</option>

                                        <option value="荣誉">荣誉</option>

                                        <option value="推荐信">推荐信</option>

                                        <option value="其他">其他</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>描述:</td>
                                <td>
                                    <textarea name="qitams" rows="9" cols="45"></textarea>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <br>
                        <input type="button" value="提交"  onclick="qita()" style="border:1px solid">	&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回" onclick="fhui()" style="border:1px solid">
                    </center>

                    <div class="icon_top cl" style="padding-top:0px;"><i class="i_left1"></i><i class="i_right1"></i></div>
                </div>
            </div>

        </div>
    </div>
    <!-- 代码 结束 -->

    <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
        <p>来源:long盾科技有限出牌\品</p>
        <p>未经longdun.com 同意，不得转载本网站之所有招聘信息及作品 龙盾招聘网版权所有© 2017-2018</p>

        <p>京ICP备120259251号 京ICP证0102070号电信业务审批[2000]字第232号函 京公网安备11010502002136号 </p><p>  负责人电话：18734353605        客服电话:15600020297</p>
    </div>
<span id="dizi"/></span>
    </body>

    <script type="text/javascript">

        /**
         * 返回
         * */
        function fhui(){
            location.href="<%=request.getContextPath()%>/UserIndex/index.jsp";
        }

        //个人信息
        function grxx(){
            //grxxname,grxxXB,grxxcsrq,grxxgznf,grxxlxfs,grxxdzyj,grxxhy,grxxgj,grxxjl,grjlzzmm,grxxdz
            //获取到span地区得值
            var grxxdq1 = $("#grxxdq").html();

                $("#grxxdz").val(grxxdq1)
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduserdatumgrxx.do",
                type:"post",
                data:$("#grxx").serialize(),
                 success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

        $(function(){
            var userid = $("#datumid").val()

            $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/queryusergrxx.do",
            type:"post",
            data:{"userid":userid},
            dataType:"json",
            success:function (succen){

                $("#grxxname").val(succen[0].grxxname);
                    var sex = succen[0].sex
                    var mers = $("[name='grxxXB']");

                for (var j = 0; j < mers.length; j++) {
                    if(sex==mers[j].value){
                        $(mers[j]).prop("checked",true);
                    }
                }
                $("#grxxcsrq").val(succen[0].birthdate);
                $("#grxxgznf").val(succen[0].vintage);
                $("#grxxlxfs").val(succen[0].phone);
                $("#grxxdzyj").val(succen[0].email);
                $("#grxxgj").val(succen[0].gationality);
                   var hy = succen[0].marriage
                   var hyradio = $("[name = 'grxxhy']")
                    for(var i =0;i<hyradio.length;i++){
                        if(hyradio[i].value==hy){
                            $(hyradio[i]).prop("checked",true);
                        }
                   }

                var hyjl = succen[0].experience
                var hyjlradio = $("[name = 'grxxjl']")
                for(var i =0;i<hyjlradio.length;i++){
                    if(hyjlradio[i].value==hyjl){
                        $(hyjlradio[i]).prop("checked",true);
                    }
                }
                   $("#grxxdqs").html("用户户口所在地:"+succen[0].hkadr);
              //  grjlzzmm
                var zzmm = succen[0].visage
                var zzmmradio = $("[name = 'grjlzzmm']")
                for(var i =0;i<zzmmradio.length;i++){
                    if(zzmmradio[i].value==zzmm){
                        $(zzmmradio[i]).prop("checked",true);
                    }
                }

              //  hkadr

            },
            error:function(){
                alert("出错！！！")
            }
        })

        })
        //自我评价
        function zwpj(){
              //  alert("自我评价")//zwpjzt,
            var zwpjzt =  $("#zwpjzt").val()
            var zwpjnr =  $("#zwpjnr").val()
            var datumid =  $("#datumid").val()

            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduserzwpj.do",
                type:"post",
                data:{"zwpjzt":zwpjzt,"zwpjnr":zwpjnr,"datumid":datumid},
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

       $(function() {
            var userid = $("#datumid").val()

            $.ajax({
                url: "<%=request.getContextPath()%>/userdatumController/queryuserzwpj.do",
                type: "post",
                data: {"userid": userid},
                dataType: "json",
                success: function (succen) {

                    var theme = succen[0].theme
                        if( theme== 1){
                            $("#zwpjzt").val("1");
                        }
                    //alert(theme)

                    $("#zwpjnr").val(succen[0].content);
                },
                error: function () {
                    alert("出错！！！")
                }
            })
        })

        //求职意向
        function qzyx(){
          //  alert("求职意向")

            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduserqzyx.do",
                type:"post",
                data:$("#qzyxform").serialize(),
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

           $(function() {
                var userid = $("#datumid").val()

                $.ajax({
                    url: "<%=request.getContextPath()%>/userdatumController/queryuserqzyx.do",
                    type: "post",
                    data: {"userid": userid},
                    dataType: "json",
                    success: function (succen) {


                        var nature = succen[0].nature
                        var gzxzradio = $("[name = 'qzyxxz']")
                        for(var i =0;i<gzxzradio.length;i++){
                            if(gzxzradio[i].value==nature){
                                $(gzxzradio[i]).prop("checked",true);
                            }
                        }


                        $("#qzyxdd").val(succen[0].site);
                        $("#qzyxcszy").val(succen[0].occupation);
                        $("#qzyxyx").val(succen[0].salary);
                       var zz = succen[0].statust

                       if(zz == 1){
                            $("#qzyxgzzt").val(1);
                        }if(zz == 2){
                            $("#qzyxgzzt").val(2);
                        }if(zz == 3){
                            $("#qzyxgzzt").val(3);
                        }if(zz == 4){
                            $("#qzyxgzzt").val(4);
                        }if(zz == 5){
                            $("#qzyxgzzt").val(5);
                        }
                    },
                    error: function () {
                        alert("出错！！！")
                    }
                })
            })

                //工作经验
        function gzjy(){
           // alert("工作经验")
           // gzjyqymc,gzjyzylb,queryBugDateStart,queryBugDateEnd,gzjyzwyx,gzjynr

            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/addusergzjy.do",
                type:"post",
                data:$("#usergzjy").serialize(),
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }
             $(function() {
                   var userid = $("#datumid").val()

                   $.ajax({
                       url: "<%=request.getContextPath()%>/userdatumController/queryusergzjy.do",
                       type: "post",
                       data: {"userid": userid},
                       dataType: "json",
                       success: function (succen) {

                           $("#gzjyqymc").val(succen[0].qyname);
                           $("#gzjyzylb").val(succen[0].zylb);
                           $("#timeStarts").val(succen[0].kssj);
                           $("#timeEnds").val(succen[0].jssj);
                           $("#gzjyzwyx").val(succen[0].zwyx);
                           $("#gzjynr").val(succen[0].nr);

                       },
                       error: function () {
                           alert("出错！！！")
                       }
                   })
               })
        //教育背景
        function jybj(){
           // alert("教育背景")
               //queryBugDateStart,queryBugDateEnd,jybjname,jybjtz,jybjxl
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduserjybj.do",
                type:"post",
                data:$("#jybjfrom").serialize(),
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

       $(function() {
            var userid = $("#datumid").val()
            $.ajax({
                url: "<%=request.getContextPath()%>/userdatumController/queryuserjybj.do",
                type: "post",
                data: {"userid": userid},
                dataType: "json",
                success: function (succen){
                    var tb = "<tr><td align='center' style='width:120px; height: 21px;' valign='middle'>学校名称</td><td align='center' style='width:120px; height: 21px;' valign='middle'>时间</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>学历学位</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>操作</td></tr>";
                    for (var i=0;i<succen.length;i++){
                                tb += " <tr><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].jybjxxmc+"</td><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].jybjkssj+"<br>"+succen[i].jybjjssj+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].jybjxl+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'><input type='button' value='删除'  onclick=shanchujybj("+succen[i].id+") style='border:1px solid'></td></tr>"
                        //alert(succen[i].id)
                    }

                    $("#jybjtable").html(tb);
                },
                error: function () {
                    alert("出错！！！")
                }
            })
        })
        //删除
        function shanchujybj(id){
            // alert(id)
            var userid = $("#datumid").val()
          //  alert(userid)
           $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/deleteuserjybj.do",
                type:"post",
                data:{"id":id,"userid":userid},

                success:function (){
                    alert("删除成功!!")
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }


        //培训经历
        function pxjl(){
           // alert("培训经历")
          //  pxjlsftz,pxjlxqjs,pxjlddian,pxjljg,queryBugDateEnd,queryBugDateStart,pxjlid,
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduserpxjl.do",
                type:"post",
                data:$("#pxjlfrom").serialize(),
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }
        $(function() {
            var userid = $("#datumid").val()
            $.ajax({
                url: "<%=request.getContextPath()%>/userdatumController/queryuserpxjl.do",
                type: "post",
                data: {"userid": userid},
                dataType: "json",
                success: function (succen){
                    var tb = "<tr><td align='center' style='width:120px; height: 21px;' valign='middle'>教育机构</td><td align='center' style='width:120px; height: 21px;' valign='middle'>时间</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>培训地点</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>操作</td></tr>";
                    for (var i=0;i<succen.length;i++){
                        tb += " <tr><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].psjlpxjg+"</td><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].pxjlkssj+"<br>"+succen[i].pxjljssj+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].pxjldd+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'><input type='button' value='删除'  onclick='shanchupxjl("+succen[i].id+")' style='border:1px solid'></td></tr>"
                    }
                    $("#tablepxjl").html(tb);
                },
                error: function () {
                    alert("出错！！！")
                }
            })
        })

        function shanchupxjl(id){
            alert(id)
            var userid = $("#datumid").val()
            //  alert(userid)
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/deleteuserpxjl.do",
                type:"post",
                data:{"id":id,"userid":userid},

                success:function (){
                    alert("删除成功!!")
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

        //语言能力\
        function yynl(){
         //   alert("语言能力")tableyynl
            //yynlform,yynlid,yynldxnli,yynltsnl,yynltsnl

            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/adduseryynl.do",
                type:"post",
                data:$("#yynlform").serialize(),
                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

      $(function() {
            var userid = $("#datumid").val()
            $.ajax({
                url: "<%=request.getContextPath()%>/userdatumController/queryuseryynl.do",
                type: "post",
                data: {"userid": userid},
                dataType: "json",
                success: function (succen){
                    var tb = "<tr><td align='center' style='width:120px; height: 21px;' valign='middle'>教育机构</td><td align='center' style='width:120px; height: 21px;' valign='middle'>读写能力</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>听说能力</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>操作</td></tr>";
                    for (var i=0;i<succen.length;i++){
                        tb += " <tr><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].yynlpxjg+"</td><td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].yynldxnl+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'>"+succen[i].yynltsnl+"</td> <td align='center' style='width:120px; height: 21px;' valign='middle'><input type='button' value='删除'  onclick='shanchuyynl("+succen[i].id+")' style='border:1px solid'></td></tr>"
                    }
                    $("#tableyynl").html(tb);
                },
                error: function () {
                    alert("出错！！！")
                }
            })
        })
        /**
         * 删除
         */
        function shanchuyynl(id){
            alert(id)
            var userid = $("#datumid").val()
            //  alert(userid)
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/deleteuseryynl.do",
                type:"post",
                data:{"id":id,"userid":userid},

                success:function (){
                    alert("删除成功!!")
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })
        }

        //证件照片

        $("#file").uploadify({
            //插件自带  不可忽略的参数
            'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
            //前台请求后台上传文件的url  不可忽略的参数
            'uploader': '${pageContext.request.contextPath}/guanggaoController/uploadfile.do',//路劲
            //给div的进度条加背景  参数为<div>id属性值  不可忽略
            'queueID': 'fileQueue',
            //上传文件文件名   和file文件域的name属性一致   和后台接受的属性名对应
            'fileObjName' : 'image',
            //给上传按钮设置文字
            'buttonText': '上传',
            //如果为true 为自动上传  在选择文件后, 为false 那么它就要我们自己手动点上传按钮
            'auto': true,
            //可以同时选择多个文件 默认为true  不可忽略
            'multi': false,
            //上传后队列是否消失
            'removeCompleted': true,
            //队列消失时间
            'removeTimeout' : 1,
            //最大上传文件数量
            'uploadLimit':  10,
            //制定可以文件上传
            'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
            'onUploadSuccess' : function(file, data, response) {
                //alert(data);
                var html = '<img src='+data+' width="100" height="100">';
                $("#show").append(html);
                $("[name='imageurl']").val(data);
              //  alert(data)
            }
        })
        /**
         * 新增图片
         */
        function zjzp(){
           var userurl =  $("#imageurl").val()
           var userjs =  $("#filejs").val()
            var userid = $("#datumid").val()
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/addusertp.do",
                type:"post",
                data:{"userid":userid,"userurl":userurl,"userjs":userjs},

                success:function (){
                    location.reload();
                },
                error:function(){
                    alert("出错！！！")
                }
            })

        }

        //其他
        function qita() {
            // alert("其他")
            //,qitaid,qitazhuti,qitams
            $.ajax({
                url: "<%=request.getContextPath()%>/userdatumController/adduserqita.do",
                type: "post",
                data: $("#qtxxform").serialize(),
                success: function () {
                    location.reload();
                },
                error: function () {
                    alert("出错！！！")
                }
            })
        }
    </script>
</html>
