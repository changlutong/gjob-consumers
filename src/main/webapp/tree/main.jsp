<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>666</title>
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





</head>
<!-- 这是jquery的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 这是easyui的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- jqeuy默认的css样式 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">

<!-- 上传图片 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">


<body  class="easyui-layout">

<!-- 滚动插件 -->
<script type="text/javascript" src="js/jquery.js"></script>
<script>
    $(document).ready(function() {
        var marginTop = 0;
        var bool = false;
        setInterval(function() {
            if (bool)
                return;//判断运行和停止
            $(".text li:first").animate({
                marginTop : marginTop--
            }, 10, function() {
                if (!($(this).is(":animated"))) { //判断是否有一个动画节点
                    if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
                        $(this).css("margin", "0");
                        $(this).appendTo($(".text")); //把第一个节点移到ul后面
                        marginTop = 0; //重新设置移动数值
                    }
                }
            });
        }, 100);
        $(".text").mouseover(function() { //li鼠标移入，停止移动
            bool = true;
        });
        $(".text").mouseout(function() {
            bool = false;
        });

    });
    $(document).ready(function() {
        var marginTop = 0;
        var bool = false;
        setInterval(function() {
            if (bool)
                return;//判断运行和停止
            $(".textt li:first").animate({
                marginTop : marginTop--
            }, 10, function() {
                if (!($(this).is(":animated"))) { //判断是否有一个动画节点
                    if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
                        $(this).css("margin", "0");
                        $(this).appendTo($(".textt")); //把第一个节点移到ul后面
                        marginTop = 0; //重新设置移动数值
                    }
                }
            });
        }, 100);
        $(".textt").mouseover(function() { //li鼠标移入，停止移动
            bool = true;
        });
        $(".textt").mouseout(function() {
            bool = false;
        });

    });
    $(document).ready(function() {
        var marginTop = 0;
        var bool = false;
        setInterval(function() {
            if (bool)
                return;//判断运行和停止
            $(".texttt li:first").animate({
                marginTop : marginTop--
            }, 10, function() {
                if (!($(this).is(":animated"))) { //判断是否有一个动画节点
                    if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
                        $(this).css("margin", "0");
                        $(this).appendTo($(".texttt")); //把第一个节点移到ul后面
                        marginTop = 0; //重新设置移动数值
                    }
                }
            });
        }, 100);
        $(".texttt").mouseover(function() { //li鼠标移入，停止移动
            bool = true;
        });
        $(".texttt").mouseout(function() {
            bool = false;
        });

    });
    $(document).ready(function() {
        var marginTop = 0;
        var bool = false;
        setInterval(function() {
            if (bool)
                return;//判断运行和停止
            $(".texttt4 li:first").animate({
                marginTop : marginTop--
            }, 10, function() {
                if (!($(this).is(":animated"))) { //判断是否有一个动画节点
                    if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
                        $(this).css("margin", "0");
                        $(this).appendTo($(".texttt4")); //把第一个节点移到ul后面
                        marginTop = 0; //重新设置移动数值
                    }
                }
            });
        }, 100);
        $(".texttt4").mouseover(function() { //li鼠标移入，停止移动
            bool = true;
        });
        $(".texttt4").mouseout(function() {
            bool = false;
        });

    });
</script>
<!-- 上边时滚动咨询和热门招聘的脚本 -->




<div data-options="region:'north',title:'龙盾技术开发项目组',split:true" style="height:150px;" >
	<!-- 头部中间 -->
	<div style="height:100%; width: 50%; float: left;">
		<iframe allowtransparency="true" frameborder="0" width="875" height="98" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=0&d=5&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=875&h=98&align=center"></iframe>
	</div>
	<!-- 头部左侧 -->
	<div style="height:100%; width: 40%; float: left;">



	</div>

	<!-- 头部右侧 -->
	<div style="height:100%; width:10%; float: left;">

		<div  class="easyui-linkbutton" data-options="plain:true">欢迎你,<font size="3" color="#ffa07a">${rr.name}!</font></div><br>
		<div  class="easyui-linkbutton" onclick="zhuxiao()" data-options="iconCls:'icon-remove',plain:true">注销用户</div><br>

	</div>



</div>
<div style="height:100px; width: 50%; float: left;margin-left: -100px;">
	<iframe allowtransparency="true"
			src="http://i.tianqi.com/index.php?c=code&id=2" width="100%"
			height="100%" marginwidth="0" marginheight="0" hspace="0" vspace="0"
			frameborder="0" scrolling="no" charset="GBK"></iframe>
</div>
</div>
<div data-options="region:'west',title:'操作',split:true" style="width:200px;" >
	<div id="aa" data-options="fit:true" class="easyui-accordion" style="width:300px;height:200px;">
		<div title="系统管理" data-options="selected:false" style="overflow: auto; padding: 10px;">
			<div id="tt1" class="easyui-tree">
			</div>
		</div>
	</div>
</div>
<div  data-options="region:'center',title:'浏览页面'" style="padding:5px" ><!-- "src/main/webapp/timg.jpg" -->

	<div id="tabs" class="easyui-tabs" fit="true">
		<div title="首页" data-options="iconCls:'icon-filter'" style="padding:20px;background:url('<%=request.getContextPath() %>/tree/112000.jpg') no-repeat ;background-size:1450px 545px"><%--style="padding:20px;background:url('<%=request.getContextPath() %>/timg.jpg') no-repeat ;background-size:1250px;"--%>
			<div style="height:25%;width:100%;">


		</div>


	</div>



	<script type="text/javascript">
        $("#tt1").tree({

            url:"<%=request.getContextPath()%>/menu/menulist.do",
            method:"post",
            // checkbox:true,
            parentField:'pid',//实体类定义的pid一致
            onSelect:function(node){
                //alert(node.url)
                if(node.href!="" && node.href!=null){
                    // alert(node.text);
                    var flag=$("#tabs").tabs('exists',node.text);
                    if(flag){
                        $("#tabs").tabs('select',node.text);
                    }else{
                        $('#tabs').tabs('add',{
                            title:node.text,
                            href:"<%=request.getContextPath()%>/"+node.href,
                            closable:true,
                            tools:[{
                                //iconCls:'icon-mini-refresh',
                                handler:function(){
                                    // alert('refresh');
                                }
                            }]
                        });
                    }
                }
            }
        })

        function zhuxiao(){
            if(confirm("确认要注销么?")){

                location.href="<%=request.getContextPath()%>/tree/login.jsp"
            }
        }

        function chaxunshouji(){
            var shouji=$("#shoujiguishu").val()
          /*  alert(shouji)*/
            location.href="http://guishu.showji.com/search.htm?m="+shouji;
        }
	</script>
</body>
</html>