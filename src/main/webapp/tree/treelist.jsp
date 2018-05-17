<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入 JQuery -->
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/jquery.min.js"></script>
<!-- 引入 EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
<!-- 引入 EasyUI 的中文国际化 js，让 EasyUI 支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/easyui/util-js.js"></script>
<!-- 引入 EasyUI 的风格样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/black/easyui.css" type="text/css"/>
<!-- 引入 EasyUI 的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/icon.css" type="text/css"/>
</head>
<body>
<!-- 增加 -->
<div  id="dd"></div>
    <div id="treelist">
       
    </div> 
  <div id="mm" class="easyui-menu" style="width:120px;">
	<div onclick="append()" data-options="iconCls:'icon-add'">追加</div>
	<div onclick="remove()" data-options="iconCls:'icon-remove'">移除</div>
	<div onclick="edit()" data-options="iconCls:'icon-edit'">修改</div>
</div>
<script type="text/javascript">
//加载Tree的数据
$(function(){
	$.ajax({
		url:'<%=request.getContextPath()%>/menu/menulist.do',
		type:'get',
		success:function(result){
			 $('#treelist').tree({
				 method:"post",
	  		     parentField:'pid',
				data: eval("("+result+")"),
				 onContextMenu: function(e, node){
				 		e.preventDefault();
				 		// 查找节点
				 		$('#powe_tree').tree('select', node.target);
				 		// 显示快捷菜单
				 		$('#mm').menu('show', {
				 			left: e.pageX,
				 			top: e.pageY
				 		});
				 	}
			}); 
		}
	})
})  

function   remove(){
	var pp= $("#treelist").tree("getSelected");
	$.ajax({
  		 url:"<%=request.getContextPath() %>/menu/deletelist.do",
  			type:"post",
  		    data:{"id":pp.id},
  		    success:function(result){
  		    	if (result) {
  		    		history.go(0)
				}
  		 }
	}) 
}
function append(){
	  $('#dd').dialog({    
		    title: '增加节点',    
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'addtreelist.jsp',    
		    modal: true ,
		    buttons:[{
				text:'增加',
				handler:function(){
					alert($("#list").serialize())
					$.ajax({
				   		 url:"<%=request.getContextPath() %>/menu/savelist.do",
				   			type:"post",
				   		    data:$("#list").serialize(),
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
function edit(){
	  $('#dd').dialog({    
		    title: '修改节点',    
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'updatetreelist.jsp',    
		    modal: true ,
		    buttons:[{
				text:'修改',
				handler:function(){
					$.ajax({
				   		 url:"<%=request.getContextPath() %>/menu/updatelist.do",
				   			type:"post",
				   		    data:$("#list").serialize(),
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

	</script>
</body>
</html>