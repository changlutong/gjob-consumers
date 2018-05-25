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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<div id="role_quanxian"></div><!--要展示的 权限页面  -->
	
	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="addguanggao()">新增</div>
	
	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="romaveguanggao()">删除</div>

	<div href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="updateguanggaostatus()">审核</div>

	<div><table id="guanggaotwotables"></table></div><!-- 查询到的广告所有 -->
	
	<div id="updateDiv"></div><!-- 修改的div -->
	
	<div id="dialog_addguanggaotow"></div><!-- 新增的div -->
	
<script type="text/javascript">

$(function(){
	pageUtil();
});
function pageUtil(){
	$('#guanggaotwotables').datagrid({
	    url:'<%=request.getContextPath()%>/guanggaoController/queryguanggaotwo.do',
        fitColumns:true,
        striped:true,
        ctrlSelect:true,
        pagination:true,
        resizable:true,//是否能拖动表格宽度
        nowrap: false,
        pageNumber:1,
	    pageSize:6,
	    pageList:[6,10,15],

	    columns:[[
	        {field:'id',title:'编号',width:100},
	        {field:'',title:'图片',width:100,
                formatter: function(value,row,index){
                    return "<img  src='"+row.imageurl+"' class='img-rounded' width='105px' height='74px'>";
                }
			},
            {field:'info',title:'简介',width:100},
            {field:'companyid',title:'公司',width:100},
            {field:'status',title:'状态',width:100,
				formatter:function (value,row,index) {
					if (row.status==1){
					    return "未审核"
					}
                    return "已审核"
                }
			}
	    ]]    
	});  

}



//修改
function backShow(id){
		$.ajax({
			url:"<%=request.getContextPath()%>/roleController/selectRoleUpdate.do",
			type:"post",
			data:{"id":id},
			datatype:"json",
			success:function(results){
				//修改
				$('#updateDiv').dialog({
				    title: '修改',
				    width: 250,
				    height: 150, 
				    closed: false,
				    modal: true,
				    href:"<%=request.getContextPath()%>/roleController/updateRole.do",
				    buttons:[{
						text:'保存',
						handler:function(){
							$('#updateRole').form('submit', {
							    url:"<%=request.getContextPath()%>/roleController/RoleUpdate.do",    
							    onSubmit: function(){    
							    	return $('#updateRole').form('validate');
							    },
							    success:function(data){
							        alert(123)
							    	   $('#updateDiv').dialog("close");
										$("#guanggaotables").datagrid("reload");
							    }
							});
						}
					},{
						text:'关闭',
						handler:function(){
							$('#updateDiv').dialog("close");
						},
					}]
				});  
			},
			error:function(){
				alert("回显出错!");
			}
		});
	}
	
	//add
	function addguanggao(){
		 $("#dialog_addguanggaotow").dialog({
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
                                $("#dialog_addguanggaotow").dialog("close");
                                $("#guanggaotwotables").datagrid("reload");

                            },error:function(){
                                $.messager.alert('警告','报错');
                            }
                        })

                    }
                },{
	   				text:'取消',
	   				iconCls:'icon-cancel',
	   				handler:function(){
						$("#dialog_addguanggaotow").dialog("close");
	   				}
	   			}]
	   	 })
	}
	
	
	//批量删
	
	function romaveguanggao(){
        var id=$("#guanggaotwotables").datagrid("getSelections");
        var ids=[];
        if(id.length>0){
            $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
                if (r){
                    for (var i = 0; i < id.length; i++) {
                        ids+=id[i].id+",";
                    }
                    //alert(ids)
                    $.ajax({
                        url:"<%=request.getContextPath()%>/guanggaoController/deleteguanggao.do",
                        data:{"ids":ids},
                        type:"post",
                        success:function(){
                            alert("删除成功")
                            $("#guanggaotwotables").datagrid("reload");
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
function updateguanggaostatus() {
    var id=$("#guanggaotwotables").datagrid("getSelections");
    var ids=[];
    if(id.length>0){
        $.messager.confirm('确认','您确认想要通过审核？',function(r){
            if (r){
                for (var i = 0; i < id.length; i++) {
                    ids+=id[i].id+",";
                }
                //alert(ids)
                $.ajax({
                    url:"<%=request.getContextPath()%>/guanggaoController/updateguanggaoStatus.do",
                    data:{"ids":ids},
                    type:"post",
                    success:function(){
                        alert("修改成功")
                        $("#guanggaotwotables").datagrid("reload");
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