<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<!-- 增加 -->
<div  id="ddq"></div>
    <div id="treelist">
       
    </div> 
  <div id="mmasd" class="easyui-menu" style="width:120px;">
	<div onclick="appendqwe()" data-options="iconCls:'icon-add'">追加</div>
	<div onclick="removeasd()" data-options="iconCls:'icon-remove'">移除</div>
	<div onclick="editzxc()" data-options="iconCls:'icon-edit'">修改</div>
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
				 		$('#mmasd').menu('show', {
				 			left: e.pageX,
				 			top: e.pageY
				 		});
				 	}
			}); 
		}
	})
})  

function   removeasd(){
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
function appendqwe(){
	  $('#ddq').dialog({
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
function editzxc(){
	  $('#ddq').dialog({
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