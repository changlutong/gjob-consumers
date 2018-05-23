<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- 这是jquery的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 这是easyui的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<!--dialog弹框-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/plugins/jquery.dialog.js"></script>
<!-- jqeuy默认的css样式 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
<link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<div id="role_quanxian"></div><!--要展示的 权限页面  -->
	
	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="addguanggao()">新增</div>
	
	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="romaveguanggao()">删除</div>

	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="updatestatus()">审核</div>

	<div><table id="companytwotablestwo"></table></div><!-- 查询到的广告所有 -->
	

	<div id="dialog_addguanggao"></div><!-- 新增的div -->
	
<script type="text/javascript">

$(function(){
	pageUtil();
});
function pageUtil(){
	$('#companytwotablestwo').datagrid({
	    url:'<%=request.getContextPath()%>/companyController/selectCompanyTwoList.do',
        fitColumns:true,
        striped:true,
        ctrlSelect:true,
        pagination:true,
        nowrap: false,
        pageNumber:1,
	    pageSize:6,
	    pageList:[6,10,15],

	    columns:[[
	        {field:'id',title:'编号',width:100},
            {field:'companyname',title:'公司名称',width:100},
            {field:'companyprovince',title:'所在省份',width:100},
            {field:'companycity',title:'所在城市',width:100},
            {field:'contacts',title:'联系人',width:100},
            {field:'companyfixedphone',title:'固定电话',width:100},
            {field:'email',title:'邮箱',width:100},
            {field:'',title:'营业执照',width:100,
                formatter: function(value,row,index){
                    //alert(row.imageurl)
                    return "<img  src='"+row.tradinglicense+"' class='img-rounded' width='105px' height='74px'>";
                }
			},
            {field:'legalpersonname',title:'法人姓名',width:100},
            {field:'legalpersionidcardnum',title:'法人身份证号',width:100},
            {field:'checkstatus',title:'状态',width:100,
                formatter:function (value,row,index) {
                    if (row.checkstatus==1){
                        return "未审核"
                    }
                    return "已审核"
                }
			},
            {field:'companyaddress',title:'地址',width:100},
            {field:'category',title:'公司类型',width:100},
            {field:'',title:'身份证照片',width:100,
                formatter: function(value,row,index){
                    //alert(row.imageurl)
                    return "<img  src='"+row.idcardpicture+"' class='img-rounded' width='105px' height='74px'>";
                }
			},
	    ]]
	});  

}


	
	//add
	function addguanggao(){
		 $("#dialog_addguanggao").dialog({
	   		    title: '新增广告',
	   		    width: 600,
	   		    height: 600,
	   		    closed: false,    
	   		    cache: false,
	   		    href:"<%=request.getContextPath()%>/guanggao/addguanggao.jsp",
	   		    modal: true ,
	   		    toolbar:[{
                    text:'保存',
                    iconCls:'icon-edit',
                    handler:function(){
                        //alert($("#add_form").serialize());
                        $.ajax({
                            url:"<%=request.getContextPath()%>/guanggaoController/saveguanggao.do",
                            data:$("#addguanggao").serialize(),
                            type:"post",
                            success:function(){

                                alert("新增成功");
                                $("#dialog_addguanggao").dialog("close");
                                $("#companytwotablestwo").datagrid("reload");

                            },error:function(){
                                $.messager.alert('警告','报错');
                            }
                        })

                    }
                },{
	   				text:'取消',
	   				iconCls:'icon-cancel',
	   				handler:function(){
						$("#dialog_addguanggao").dialog("close");
	   				}
	   			}]
	   	 })
	}
	
	
	//批量删
	
	function romaveguanggao(){
        var id=$("#companytwotablestwo").datagrid("getSelections");
        var ids=[];
        if(id.length>0){
            $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
                if (r){
                    for (var i = 0; i < id.length; i++) {
                        ids+=id[i].id+",";
                    }
                    alert(ids)
                    $.ajax({
                        url:"<%=request.getContextPath()%>/companyController/deletecompany.do",
                        data:{"ids":ids},
                        type:"post",
                        success:function(){
                            alert("删除成功")
                            $("#companytwotables").datagrid("reload");
                        },error:function(){
                            $.messager.alert('警告','报错');
                        }


                    })
                }
            });
        }else{
            $.messager.alert('警告','请选择要删除的项');
        }
   }

   //修改状态
   function updatestatus() {
       var id=$("#companytwotablestwo").datagrid("getSelections");
       var ids=[];
       if(id.length>0){
           $.messager.confirm('确认','您确认想要通过审核？',function(r){
               if (r){
                   for (var i = 0; i < id.length; i++) {
                       ids+=id[i].id+",";
                   }
                   alert(ids)
                   $.ajax({
                       url:"<%=request.getContextPath()%>/companyController/updateCompanyStatus.do",
                       data:{"ids":ids},
                       type:"post",
                       success:function(){
                           alert("修改成功")
                           $("#companytwotablestwo").datagrid("reload");
                       },error:function(){
                           $.messager.alert('警告','报错');
                       }


                   })
               }
           });
       }else{
           $.messager.alert('警告','请选择要删除的项');
       }
   }
	
	
	</script>



</body>
</html>