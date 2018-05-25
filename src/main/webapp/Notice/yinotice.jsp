<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script  src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script  src="<%=request.getContextPath()%>/js/util-js.js"></script>
	<script  src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
	<script  src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
</head>
<body>
<%-- 关键词:<input id="noticename">
<input type="button" value="搜索" onclick="searchs()"/>--%>
	  <table id="gs"></table> 
	  <div id="brand-dialog"></div> 
<script type="text/javascript">
$(function(){
	searchs();
})
function searchs(){
	$('#gs').datagrid({    
	    url:'<%=request.getContextPath()%>/notice/chanoticelist.do',
	    fitColumns:true,//自动适应
	    columns:[[  

	                 

	           

	        {field:'noticeid',title:'编号',width:150},
	        {field:'noticename',title:'公告名称',width:50},
	        {field:'noticedate',title:'发布时间',width:50},
	        {field:'noticebulletin',title:'发布内容',width:50},

	        {field:'操作',title:'操作',width:100,
                formatter: function(value,notice,index){
                    return "   <input type='button' class='icon-remove' " +
						"style='width:40px;height:30px' value='' onclick='del(\""+notice.noticeid+"\")'/>  &nbsp; " +
						"<input class='icon-edit' type='button' value='' style='width:40px;height:30px'  onclick='up(\""+notice.noticeid+"\")'/>";
                }
            },
	    ]],

	    pagination:true,
	    pageNumber:1,
	    pageSize:2,
	    queryParams: {
	    	companyname: $("[noticename='noticename']").val(),
		},
	    pageList:[2,3,4,5],
	    toolbar: [{
			iconCls: 'icon-add',
			handler: function(){
				$('#brand-dialog').dialog({    
				    title: '添加品牌',    
				    width: 400,    
				    height: 200,    
				    closed: false,    
				    cache: false,    
				    href: 'toAddnotice.jsp',
				    modal: true,
				    buttons:[{
						text:'保存',
						handler:function(){
							$.ajax({
								url:"<%=request.getContextPath()%>/notice/addnotice.do",
								type:"post",
								data:$("#brand-form").serialize(),
								dataType:"text",
								success:function (data){
									if (data == 1) {
										$("#brand-dialog").dialog("close");
										$('#gs').datagrid('reload'); 
									}
								},
								error:function (){
									
								}
							})
						}
					},{
						text:'关闭',
						handler:function(){
							
						}
					}]

				});			
			}
		}]
	});
}
function   del(){
    var sss= $("#gs").datagrid("getSelections");
    var aaa= "";
    for (var i = 0; i < sss.length; i++) {
        aaa += ","+sss[i].noticeid
    }
    var str1=aaa.substring(1);
   /* alert(str1)*/
    $.ajax({
        url:'<%=request.getContextPath()%>/notice/deletenotice.do',
        data:{'ids':str1},
        type:'post',
        success:function(result){
            if (result) {
                $("#gs").datagrid("reload");
                alert("删除成功！！！！")
            }
        }
    })
}



function whereSelect(){
	  var userName=$("#companyname").textbox('getValue');
	  $('#gs').datagrid('load', {    
		    "companyname":companyname   
		  
		}); 
	   
}

function up(id){
	$('#brand-dialog').dialog({    
	    title: '修改品牌',    
	    width: 400,    
	    height: 200,    
	    closed: false,    
	    cache: false,    
	    href: "<%=request.getContextPath()%>/notice/upNotice.do?noticeid="+id,
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:function(){
				$.ajax({
					url:"<%=request.getContextPath()%>/notice/updateNotice.do?",
					type:"post",
					data:$("#brand-form1").serialize(),
					dataType:"text",
					success:function (data){
						if (data == 1) {
							$("#brand-dialog").dialog("close");
							$('#gs').datagrid('load'); 
						}
					},
					error:function (){
						
					}
				})
			}
		}]

    });		
}
function bm(ids) {
	$("#bumen").remove();
	$("#tt").tabs('add',{
		  title:"部门管理",
		  href:"<%=request.getContextPath()%>/deptList.jsp?ids="+ids,
		  closable:true,
		  
	  })
}
</script>
</body>
</html>