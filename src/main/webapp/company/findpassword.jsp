<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap-theme.min.css"
            rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap.min.css"
            rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap/js/bootstrap.min.js"></script>


    <!-- bootstrap-treeview -->
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>

    <!-- bootstrap-fileinput
<link href="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/js/fileinput.js"></script>
<script src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/js/locales/zh.js"></script>
 -->

    <!-- new bootstrap-fileinput -->
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/css/fileinput.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/js/fileinput.js"></script>
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/js/locales/zh.js"></script>

    <!-- bootstrap-table -->
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/bootstrap-table.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/bootstrap-table.js"></script>
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>

    <!-- bootstrap-datetimepicker
<link href="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
-->

    <!-- new bootstrap-datetimepicker -->
    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"></script>
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>


    <link
            href="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/css/bootstrap-select.min.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/bootstrap-select.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i18n/defaults-zh_CN.min.js"></script>

</head>

<body style="padding:20px;background:url('images/11.jpg') no-repeat ;background-size:1540px;">


<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/verify.js" ></script>


<form id="add_form_position" class="form-horizontal">
<br><br><br>
    <div class="modal-body" style="position: absolute;margin-left: 40%">
        <div class="form-group">
             输入手机号:
            <input type="text" name="id" id="idddd" class="form-control"  placeholder="输入手机号" readonly="readonly" style="width: 300px">

        </div>
        <div class="form-group">
            输入密码:
            <input name="password" type="password" id="password" class="form-control"   placeholder="输入密码..." style="width: 300px" onblur="mimaaayk()">
            <div><span id="spantt3"></span></div>
        </div>
       <div class="form-group">
           确认密码:
            <input id="password2" type="password"  class="form-control"   placeholder="输入密码..." style="width: 300px"  onblur="mimaquer()">
           <span id="spantt4"></span>
        </div>

        <div id="mpanel2" >

        </div>
        <button class="btn btn-large btn-primary" id="check-btn" type="button">确认修改</button>&nbsp;&nbsp;
        <button class="btn btn-large" onclick="clostpositionyk()" type="button"> 取消修改 </button>

    </div>

</form>

<script type="text/javascript">

    var phone = <%=request.getParameter("id")%>

     $("#idddd").val(phone);

    function mimaaayk(){
        var password = $("#password").val();
        if(password != null && password != ""){
            $("#spantt3").html("<font color='green'>√</font>");
            return true;
        }else{
            $("#spantt3").html("<font color='red'>不能为空!</font>");
            return false;
        }
    }

  function mimaquer() {
      var password2 = $("#password2").val();
      var password1 = $("#password").val();
      if(password1 == password2){
          $("#spantt4").html("<font color='green'>√</font>");
          return true;
      }else{

          $("#spantt4").html("<font color='red'>两次输入的密码不一致!</font>");
           return false;
      }

      
  }
    $("#mpanel2").codeVerify({
        type : 1,
        width : '400px',
        height : '50px',
        fontSize : '30px',
        codeLength : 6,
        btnId : 'check-btn',
        ready : function() {
        },
        success : function() {

            addpositionyk();
        },
        error : function() {
            alert('验证码不匹配！');
        }
    });

    function clostpositionyk() {

        location.reload();

    }
  function  addpositionyk() {


      if (mimaaayk() && mimaquer()  ) {



         var id = $("#idddd").val();
         if(id==null && id ==""){

             alert("密码修改与手机号不匹配");

         }
          var password = $("#password").val();

          $.ajax({
              url:"<%=request.getContextPath()%>/companyController/updateCompanyPassword.do",
              type:"post",
              data:{"id":id,"password":password},
              async:false,
              success:function (){
                   alert("修改成功!")
                  location.href="companyLogin.jsp";
              },
              error:function(){

                  alert("修改密码出错！！！")
              }
          })



          return true;


      }else{
      alert("输入信息有误啊")
          return false;
      }
  }






</script>
</body>
</html>