<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>公司注册</title>

<!-- CSS -->
<link rel="stylesheet" href="http://fonts.useso.com//css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
	<link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and touch icons -->

<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

	<link
			href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap-theme.min.css"
			rel="stylesheet">
	<link
			href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">
	<script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>

	<script
			src="${pageContext.request.contextPath}/jquery/bootstrap/js/bootstrap.min.js"></script>

	<!-- bootstrap.addtabs -->
	<link
			href="${pageContext.request.contextPath}/jquery/bootStrap-addTabs/bootstrap.addtabs.css"
			rel="stylesheet">
	<script
			src="${pageContext.request.contextPath}/jquery/bootStrap-addTabs/bootstrap.addtabs.js"></script>

	<!-- bootstrap-treeview -->
	<link
			href="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.css"
			rel="stylesheet">
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>

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

	<!-- bootstrap-dialog -->
	<link
			href="${pageContext.request.contextPath}/jquery/bootstrap-dialog/dist/css/bootstrap-dialog.min.css"
			rel="stylesheet">
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrap-dialog/dist/js/bootstrap-dialog.min.js"></script>

	<!-- bootstrap-select ������-->
	<link
			href="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/css/bootstrap-select.min.css"
			rel="stylesheet">
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/bootstrap-select.min.js"></script>
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i18n/defaults-zh_CN.min.js"></script>

	<link
			href="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/css/bootstrapValidator.min.css"
			rel="stylesheet">
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/js/bootstrapValidator.min.js"></script>
	<script
			src="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/js/language/zh_CN.js"></script>


</head>

<body >

		
<!-- Top content -->
<div class="top-content">

	<div class="inner-bg">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<h1><strong>龙盾招聘,</strong> 为你解决用人难题!</h1>
					<div class="description">
						<p><br>
							<h2><font color="white">公司用户的注册</font></h2>
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">

					<form id="companyform" class="registration-form">

						<fieldset>
							<div class="form-top">
								<div class="form-top-left">
									<h3>账户信息 1 / 4</h3>
									<p>基本账户信息:</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-user"></i>
								</div>
							</div>
							<div class="form-bottom">
								<div class="form-group">
									<label  for="username">用户名</label>
									<input type="text" name="username" placeholder="输入用户名..." class="form-first-name form-control"  >
								</div>
								<div class="form-group">
									<label  for="password">密码</label>
									<input type="password" name="password" placeholder="密码..." class="form-last-name form-control" >
								</div>
								  <div class="form-group">
									<label for="password_again">确认密码</label>
									<input type="password" name="password_again" placeholder="确认密码..." class="form-last-name form-control" >
								</div>
								<div class="form-group">
									<label  for="email">电子邮箱</label>

								   <input type="text" name="email" placeholder="电子邮箱..."  class="form-last-name form-control" >
								</div>
								<button type="button" class="btn btn-next">下一步</button>
							</div>
						</fieldset>

						<fieldset>
							<div class="form-top">
								<div class="form-top-left">
									<h3>公司信息 2 / 4</h3>
									<p>公司有关信息:</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-key"></i>
								</div>
							</div>
							<div class="form-bottom">
								<div class="form-group">
									<label  for="form-facebook">公司名称</label>
									<input type="text" name="companyname" placeholder="公司名称..." class="form-facebook form-control" >
								</div>
								 <div class="form-group">
									<label for="companycity">公司地址</label>
									<input type="text" name="companycity" placeholder="地址..." class="form-twitter form-control" >
								</div>
								<div class="form-group">
									<label for="contacts">公司联系人</label>
									<input type="text" name="contacts" placeholder="联系人..." class="form-twitter form-control" >
								</div>
                                <div class="form-group">
									<label for="companyfixedphone">固定电话</label>
									<input type="text" name="companyfixedphone" placeholder="固定电话..." class="form-twitter form-control" >
								</div>

								        <div class="form-group">
									<label  for="category">公司类别</label>
								<select id="category" name="category" class="category form-control">
							<option value="1" selected>IT互联网</option>
							<option value="2">房地产</option>
							<option value="3">教育培训</option>
							<option value="4">加工制造</option>
								 </select>

								</div>
								<button type="button" class="btn btn-previous">上一步</button>
								<button type="button" class="btn btn-next">下一步</button>
							</div>
						</fieldset>

						<fieldset>
							<div class="form-top">
								<div class="form-top-left">
									<h3>证件信息 3 /4</h3>
									<p>证件信息:</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-twitter"></i>
								</div>
							</div>
							<div class="form-bottom">
								<div class="form-group">
									<label  for="legalpersonname">法人名称</label>
									<input type="text" name="legalpersonname" placeholder="法人名称..." class="legalpersonname form-control" >
								</div>
								<div class="form-group">
									<label for="legalpersionidcardnum">法人身份证号</label>
									<input type="text" name="legalpersionidcardnum" placeholder="身份证号..." class="legalpersionidcardnum form-control" >
								</div>
								<div class="form-group">
									<label for="tradinglicense">上传营业执照和身份证正反面</label>
									<!--  设置multiple为多选，data-live-search="true"显示模糊搜索框  -->
									<input id="file-0a" class="file" name="file" type="file" multiple data-min-file-count="1">

							     <input type="hidden" name="tradinglicense" id="tradinglicense" /><div id="show1"></div>
								</div>

								<input type="hidden" name="checkstatus" value="1" />
								<button type="button" class="btn btn-previous">上一步</button>
								 <button type="button" class="btn btn-next">下一步</button>

							</div>
						</fieldset>
						 <fieldset>
							<div class="form-top">
								<div class="form-top-left">
									<h3>手机验证 4 / 4</h3>
									<p>验证手机号:</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-twitter"></i>
								</div>
							</div>
							<div class="form-bottom">
								<div class="form-group">
									<label for="id">手机号</label>
									 <input  name="id" id="cphone" placeholder="输入手机号" type="text" AUTOCOMPLETE=ON class="form-twitter form-control"  />
								</div>
								<div class="form-group">
									<label for="ycode">验证码</label>
									 <input id="phone" name="ycode"  placeholder="收到的验证码" type="tel"   class="form-twitter form-control" width="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" id="anniu" onclick="fasongyz()" class="btn btn-sm" >发验证码(<strong class="a">60</strong>秒 )</button>

								</div>

								<button type="button" class="btn btn-previous">上一步</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-lg" onclick="tijiao()" type="button">点&nbsp;击&nbsp;注&nbsp;册</button>
							</div>
						</fieldset>

					</form>

				</div>
			</div>
		</div>
	</div>

</div>


<!-- Javascript -->
<%--<script src="assets/js/jquery-1.11.1.min.js"></script>--%>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/scripts.js"></script>

<!--[if lt IE 10]>
	<script src="assets/js/placeholder.js"></script>
<![endif]-->
<script type="text/javascript">
    var aa="";
    $('#file-0a').fileinput({
        language: 'zh',
        //uploadAsync:false,
        uploadUrl: '<%=request.getContextPath()%>/companyController/upfile.do',
        allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash'],
        dropZoneTitle: "上传清晰正确的照片能提高审核通过率",

    });

    $('#file-0a').on('fileuploaded', function(event, data, previewId, index) {

        aa+=data.response.url+",";
    });
    $('#file-0a').on('fileerror', function(event, data) {
        alert("失败");
    })


    $(function () {
        $("#companyform").bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 3,

                            message: '用户名长度>3位'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: '邮箱不能为空'
                        },
                        emailAddress: {
                            message: '邮箱地址格式有误'
                        }
                    }
                }  ,
                password: {
                    validators: {

                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {//相同
                            field: 'password_again',
                            message: '两次密码不一致'
                        },
                        stringLength: {
                            min: 3,
                            message: '密码长度要超过3位'
                        },
                    }
                } ,
                password_again: {
                    validators: {

                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {   //相同
                            field: 'password', //需要进行比较的input name值
                            message: '两次密码不一致'
                        },

                    }
                } ,
                id: {

                    validators: {
                        notEmpty: {
                            message: '手机号码不能为空'
                        },
                        stringLength: {
                            min: 11,
                            max: 11,
                            message: '请输入11位手机号码'
                        },
                        regexp: {
                            regexp: /^1[3|5|8|6|7]{1}[0-9]{9}$/,
                            message: '请输入正确的手机号码'
                        }
                    }


                },
                ycode: {

                    validators: {
                        notEmpty: {
                            message: '验证码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 8,
                            message: '验证码为6-位'
                        },

                    }


                },
                companyname: {
                    message: '公司名称名验证失败',
                    validators: {
                        notEmpty: {
                            message: '公司名称不能为空'
                        },
                        stringLength: {
                            min: 3,
                            message: '用户名长度>3位'
                        },
                        regexp: {
                            regexp: /^[\u4e00-\u9fa5]+$/,
                            message: '用户名只能中文'
                        }
                    }
                },
                companycity: {
                    message: '验证失败',
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        },
                        stringLength: {
                            min: 3,
                            message: '用户名长度>3位'
                        },
                        regexp: {
                            regexp: /^[\u4e00-\u9fa5]+$/,
                            message: '用户名只能中文'
                        }
                    }
                },
                companyfixedphone: {
                    message: '电话名称验证失败',
                    validators: {
                        notEmpty: {
                            message: '电话名称不能为空'
                        },

                        regexp: {
                            regexp:  /^(\d{1,4}-)?(\d{1,4}-)?\d{7,9}$/,
                            message: '输入正确的区号+电话'
                        }
                    }
                },
                legalpersionidcardnum: {
                    message: '身份证号验证失败',
                    validators: {
                        notEmpty: {
                            message: '身份证号不能为空'
                        },
                        stringLength: {
                            min: 18,
                            max:18,
                            message: '长度18位'
                        },
                        regexp: {
                            regexp: /(^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$)|(^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}$)/,
                            message: '请填写正确身份证号'
                        }
                    }
                },


                contacts: {
                    validators: {

                        notEmpty: {
                            message: '联系人不能为空'
                        },
                        regexp: {
                            regexp: /^[\u4e00-\u9fa5]+$/,
                            message: '用户名只能中文'
                        }

                    }
                } ,
                legalpersonname: {
                    validators: {

                        notEmpty: {
                            message: '法人姓名不能为空'
                        },
                        regexp: {
                            regexp: /^[\u4e00-\u9fa5]+$/,
                            message: '姓名只能中文'
                        }

                    }
                } ,
                category: {
                    validators: {

                        notEmpty: {
                            message: '公司类别不能为空'
                        },

                    }
                } ,




            }
        });
    });

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

        if( aa==""){
          alert("必须上传相关证件")
		}else{

        $("#tradinglicense").val(aa);

        if (!$('#companyform').data('bootstrapValidator').isValid()) {//判断校检是否通过
            alert("验证不通过");
            return false;
        }else {

            $.ajax({
                url:"<%=request.getContextPath()%>/companyController/tosavecompany.do",
                type:"post",
                data:$("#companyform").serialize(),
                dataType:"json",
                async:false,
                success:function (result){

                    if(result=="1"){
                        alert("恭喜您,注册成功")

                        location.href="companyLogin.jsp";
                    }
                    if(result=="3"){
                        alert("手机号不符合规则")
                    }
                    if(result=="4"){
                        alert("手机号已存在")
                    }
                    if(result=="5"){
                        alert("验证码超时或输错了")
                    } if(result=="6"){
                        alert("用户名已存在")
                    }
                },

                error:function(){
                    alert("出错了,亲,原因不详！！！")
                }
            })

        }
        }
    }

</script>

</body>

</html>