<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<table  border=1   class="easyui-datagrid"   id="aabcs">
    <thead>   
        <tr>   
          <th data-options="field:'   ww ',checkbox:true"  align="center"    width="90"  height="100"></th>
              <th data-options="field:'rid'"   align="center"    width="90"  height="100">用户ID</th>
              <th data-options="field:'name'"    align="center"  width="90"  height="100">用户名</th>
              <th data-options="field:'password'"    align="center"  width="90"  height="100">用户密码</th>
              <th data-options="field:'',formatter:ffbb"     width="100" height="90">操作</th>
        </tr>   
    </thead>   
    <tbody>   
    </tbody>   
</table> 
<!-- 新增 -->
<div   id="addbcs">
</div>

<!-- 修改 -->
<div  id="qwwebcs">
</div>

<!--  分配角色-->
<div  id="hjhjbcs">
</div>

<script type="text/javascript">
$("#aabcs").datagrid({
    url:'<%=request.getContextPath()%>/userController/getUserAll.do',
    pagination:true,
    ctrlSelect:true,
    pageNumber:1,
    pageSize:3,
    pageList:[3,6,9],
	checkbox:true,
	fitColumns:true,
    striped:true,
    ctrlSelect:true,
	onLoadSuccess:function(){
		$('.delete').linkbutton({    
		    iconCls: 'icon-search',
		    plain:true
		});
		
		$('.delete').linkbutton({    
		    iconCls: 'icon-remove',
		    plain:true
		}); 
		
		$('.editor').linkbutton({    
		    iconCls: 'icon-edit',
		    plain:true
		}); 
	}
});
 function  ffbb(val,row){
	return   "<button  onclick='qqqqdellqqq()'>分配角色</button>";
} 
  function  qqqqdellqqq   (){
	  $('#hjhjbcs').dialog({
		    title: '分配角色',    
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'addroleren.jsp',    
		    modal: true ,
		    buttons:[{
				text:'新增',
				handler:function(){
					/*alert($("#wert").serialize())*/
					$.ajax({
				   		 url:"<%=request.getContextPath()%>/userController/updaterolelist.do",
				   			type:"post",
				   		    data:$("#werts").serialize(),
				   		    success:function(result){
				   		    	if (result) {
				   		    		history.go(0)
								}
				   		 }
					}) 
				}
			},{
				text:'取消',
				handler:function(){
				}
			}]
		}); 
}
	  
  
    
function addGoods(){
	  $('#addbcs').dialog({
		    title: '增加用户',
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'addhouse.jsp',    
		    modal: true ,
		    buttons:[{
				text:'增加',
				handler:function(){
					
					$.ajax({
				   		 url:"<%=request.getContextPath() %>/shop/savelist.do",
				   			type:"post",
				   		    data:$("#ff").serialize(),
				   		    success:function(result){
				   		    	if (result) {
				   		    		history.go(0)
								}
				   		 }
					}) 
				}
			},{
				text:'取消',
				handler:function(){
				}
			}]
		}); 
}
function   gai(regionid){
	 var pp= $("#aabcs").datagrid("getSelected");
	$('#qwwebcs').dialog({
	    title: '修改用户',
	    width: 400,    
	    height: 200,    
	    closed: false,    
	    cache: false,    
	    href: 'updatehouse.jsp',    
	    modal: true ,
	    onLoad:function(){
	    },
	    buttons:[{
			text:'修改',
			handler:function(){
				 $.ajax({
			   		 url:"<%=request.getContextPath() %>/shop/updatelist.do",
			   			type:"post",
			   		    data:$("#ff").serialize(),
			   		    success:function(result){
			   		    	if (result) {
			   		    		history.go(0)
							}
			   		 }
				}) 
			}
		},{
			text:'取消',
			handler:function(){
			}
		}]
	}); 
}
function   addshan(){
	var sss= $("#aabcs").datagrid("getSelections");
	var aaa= "";
		for (var i = 0; i < sss.length; i++) {
			aaa += ","+sss[i].hid
		}
		 var str1=aaa.substring(1); 
	   /*    alert(str1)*/
		 $.ajax({
			 url:'<%=request.getContextPath()%>/shop/deletelist.do',
		     data:{'ids':str1},
		     type:'post',
		     success:function(result){
		    	 if (result) {
		 			$("#aabcs").datagrid("reload");
		 			alert("删除成功！！！！")
		 		 }
		     }
		 })
	}
	
function  cha(){
	 $('#aabcs').datagrid({
			queryParams: {
				hno: $('[name="hno"]').val(),
			}
	 });
	 $('#aabcs').datagrid("load");
}  
</script>
</body>
</html>