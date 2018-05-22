<%--
  Created by IntelliJ IDEA.
  User: yuankang
  Date: 2018/5/20
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/sliding.form.js"></script>

        <title>注册页面</title>
</head>
<style>
    span.reference{
        position:fixed;
        left:5px;
        top:5px;
        font-size:10px;
        text-shadow:1px 1px 1px #fff;
    }
    span.reference a{
        color:#555;
        text-decoration:none;
        text-transform:uppercase;
    }
    span.reference a:hover{
        color:#000;

    }
    h1{
        color:#ccc;
        font-size:36px;
        text-shadow:1px 1px 1px #fff;
        padding:20px;
    }
</style>
<body >



<div id="content">



    <h1>龙盾招聘注册信息</h1>
    <div id="wrapper">
        <div id="steps">
            <form id="tosavecompanyform" >
                <fieldset class="step">
                    <legend>账户信息</legend>
                    <p>
                        <label for="username">用户名</label>
                        <input id="username" onblur="yonghuming()" name="username" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span1"></span>
                    </p>
                    <p>
                        <label for="email">电子邮箱</label>
                        <input  onblur="youxiang()" id="email" name="email" placeholder="输入邮箱" type="text" AUTOCOMPLETE=ON />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2"></span>
                    </p>
                    <p>
                        <label for="password">输入密码</label>
                        <input id="password"  name="password" type="password" AUTOCOMPLETE=OFF />
                    </p>
                    <p>
                        <label for="password_again">确认密码</label>
                        <input id="password_again" onblur="mimayanzheng()" placeholder="确认密码" type="password" AUTOCOMPLETE=OFF />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span3"></span>
                    </p>

                </fieldset>
                <fieldset class="step">

                    <legend>公司信息</legend>
                    <p>
                        <label for="companyname">公司名称</label>
                        <input  name="companyname" onblur="companynameykquery()" id="companyname" placeholder="输入正确公司名称"  />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span4"></span>
                    </p>
                    <p>

                        <label for="companyname">公司所在地</label>
                        <input  name="companyaddress" onblur="chengshi()" id="companycity" placeholder="输入正确公司所在地"  />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span5"></span>
                    </p>


                    <p>
                        <label for="category">公司类别</label>
                        <select id="category" name="newsletter" >
                            <option value="1" selected>IT互联网</option>
                            <option value="2">房地产</option>
                            <option value="3">教育培训</option>
                            <option value="4">加工制造</option>
                        </select>
                    </p>

                </fieldset>
                <fieldset class="step">
                    <legend>证件信息</legend>
                    <p>

                        <label for="tradinglicense">营业执照</label>
                        <input type="file" id="file1" name="image" >
                        <input type="hidden" name="tradinglicense" id="imageurl" />

                    </p>
                    <p>
                        <label for="legalpersonname">法人名称</label>
                        <input id="legalpersonname" name="legalpersonname"  placeholder="法人名称" type="tel" AUTOCOMPLETE=ON />
                    </p>
                    <p>
                        <label for="legalpersionidcardnum">法人身份证号</label>
                        <input id="legalpersionidcardnum" name="legalpersionidcardnum"  placeholder="法人名称" type="text" AUTOCOMPLETE=ON />
                    </p>
                    <p>
                        <label for="idcardpicture">身份证图片</label>

                        <input type="file" id="file2" name="imgFile" >
                        <input type="hidden" name="idcardpicture" id="image11" />

                    </p>

                </fieldset>
                <fieldset class="step">
                    <legend>联系人信息</legend>
                    <p>
                        <label for="contacts">联系人姓名</label>
                        <input  name="contacts" placeholder="输入联系人姓名" type="text" AUTOCOMPLETE=ON />
                    </p>
                    <p>
                        <label for="updates">性别</label>
                        <input type="radio"  name="sex" value="1" />男
                        <input type="radio"  name="sex" value="2" />女
                    </p>
                    <p>
                        <label for="companyfixedphone">公司固话</label>
                        <input id="tagname" name="companyfixedphone" type="text" AUTOCOMPLETE=OFF />

                    </p>
                </fieldset>
                <fieldset class="step">
                    <legend>手机验证</legend>
                    <input  name="checkstatus" value="1" type="hidden"  />
                    <p>
                        <label for="id">手机号</label>
                        <input  name="id" id="cphone" onblur="shoujihao()" placeholder="输入手机号" type="text" AUTOCOMPLETE=ON />&nbsp;&nbsp;&nbsp;&nbsp;<span id="span"></span>
                    </p>
                    <p>
                        <label for="phone">手机验证码</label>
                        <input  name="ycode" id="ycode" placeholder="收到的验证码"  AUTOCOMPLETE=OFF />
                    </p>
                    <p>
                        <button type="button" id="anniu" onclick="fasongyz()" class="btn btn-sm" >发验证码(<strong class="a">60</strong>秒 )</button>
                    </p>

                    <p>

                        <button class="btn btn-lg" onclick="tijiao()" >点击注册</button>
                    </p>
                </fieldset>
            </form>
        </div>
        <div id="navigation" style="display:none;">
            <ul>
                <li class="selected">
                    <a href="#">账户信息</a>
                </li>
                <li>
                    <a href="#">公司信息</a>
                </li>
                <li>
                    <a href="#">证件信息</a>
                </li>
                <li>
                    <a href="#">联系人信息</a>
                </li>
                <li>
                    <a href="#">手机验证</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<script type="text/javascript">




    function yonghuming(){


        var username = $("#username").val();
        if((/^[A-Za-z0-9\u4e00-\u9fa5]+$/).test(username)){
            $("#span1").html("<font color='green'>正确</font>");
            return true;
        }else{
            $("#span1").html("<font color='red'>注意格式</font>");
            return false;
        }

    }
    function youxiang() {
        var email = $("#email").val();
        if((/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/).test(email)){
            $("#span2").html("<font color='green'>正确</font>");
            return true;
        }else{
            $("#span2").html("<font color='red'>注意格式</font>");
            return false;
        }

    }
    function mimayanzheng(){
        var password = $("#password").val();
        var password_again = $("#password_again").val();

        if(password==password_again && password && password_again){
            $("#span3").html("<font color='green'>正确</font>");
            return true;
        }else{
            $("#span3").html("<font color='red'>两次密码不一样</font>");
            return false;
        }

    }
    /*function companynameykquery(){


       var company = $("#companyname").val();

       if((/^[\u4E00-\u9FA5]{3,15}$/).test(company)){
           $("#span4").html("<font color='green'>正确</font>");
           return true;
       }else{
           $("#span4").html("<font color='red'>只能是中文要超过三个字</font>");
           return false;
       }

   }
    function chengshi() {

      var companycity = $("#companycity").val();
     if(companycity!=null && companycity !=""){
         $("#span5").html("<font color='green'>正确</font>");
         return true;

     }else{
         $("#span5").html("<font color='red'>不能为空</font>");
         return false;
     }

  }*/
    function shoujihao(){
    var cphone = $("#cphone").val();
    if((/^1[3|5|8|6|7]{1}[0-9]{9}$/).test(cphone)){

        $("#span").html("<font color='green'>正确</font>");
        return true;

    }else{
        $("#span").html("<font color='red'>输入正确的手机号</font>");
        return false;
    }



}
    function fasongyz(){

        var phone = $("#cphone").val();

        if(!(/^1[3|5|8|6|7]{1}[0-9]{9}$/).test(phone)){

            alert("请输入合法的手机号码")
            return false;

        }else{

            var phone=$("#cphone").val();
            $("#anniu").prop("disabled",true);
            $("#anniu").html("再次发送"+"(<strong class='a'>60</strong>秒 )")
            $(document).ready(function() {
                var times = 60 * 100; // 60秒
                countTime = setInterval(function() {
                    times = --times < 0 ? 0 : times;
                    var ms = Math.floor(times / 100).toString();

                    if(ms.length <= 1) {
                        ms = "0" + ms;
                    }
                    var hm = Math.floor(times % 100).toString();
                    if(hm.length <= 1) {
                        hm = "0" + hm;
                    }
                    if(times == 0) {

                        $("#anniu").removeAttr("disabled");
                        $("#anniu").html("再次发送"+"(<strong class='a'>60</strong>秒 )")



                        clearInterval(countTime);
                    }
                    // 获取分钟、毫秒数
                    $(".a").html(ms);
                    $(".b").html(hm);
                }, 10);
            });



            $.ajax({
                url:"<%=request.getContextPath()%>/companyController/getyanzhengma.do",
                type:"post",
                data:{"phone":phone},
                dataType:"json",
                async:false,
                success:function (){

                },
                error:function(){
                    alert("验证码发送出错！！！")
                }
            })
        }}
    function tijiao(){


           var code =  $("#ycode").val();
        if(youxiang() && mimayanzheng()   && shoujihao() ) {
            alert(11111111)

            if(code !=null && code != ""){
                alert(222222)

            $.ajax({
                url: "<%=request.getContextPath()%>/companyController/tosavecompany.do",
                type: "post",
                data: $("#tosavecompanyform").serialize(),
                dataType: "json",
                async: false,
                success: function (result) {

                    if (result == "1") {
                        alert("恭喜您,注册成功")

                        location.href = "../index.jsp"
                    }
                    if (result == 3) {
                        alert("手机号不符合规则")
                    }
                    if (result == 4) {
                        alert("手机号已存在")
                    }
                    if (result == 5) {
                        alert("验证码超时或输错了")
                    }
                    if (result == 6) {
                        alert("用户名已存在")
                    }
                },

                error: function () {
                    alert("出错了,亲,原因不详！！！")
                }
            })
        }

        }


        alert("检查你的输入项是否正确")

        return false;


    }






</script>







</body>
</html>