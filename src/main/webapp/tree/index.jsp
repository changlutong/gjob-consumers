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
<body class="easyui-layout">   
 
    <div data-options="region:'north',split:true" style="height:100px;">
	  
	   <h1>我的玩具</h1>
		<input type="text" value="${rr}"/>
	</div>   
    <div data-options="region:'south',split:true" style="height:50px;text-align:center;">
	
		<h4>版权所有 © BPL  2018-2019 1710B</h4>
	
	</div>   
      
    <div data-options="region:'west',title:'菜单',split:true" style="width:200px;">
	
	     <div id="tree">   
			
			   
		</div>  
	</div>   
    <div data-options="region:'center'" style="padding:5px;background:#eee;">
	   <div  id="tabs"  class="easyui-tabs"   data-options="fit:true">   
	   
	   </div>
	
	</div>  


<script type="text/javascript">
//加载Tree的数据

$(function(){
	$.ajax({
		url:'<%=request.getContextPath()%>/menu/menulist.do',
		type:'get',
		success:function(result){
			$('#tree').tree({
  		    	 method:"post",
  		        parentField:'pid',
  				data:eval("("+result+")"),
				onClick: function(node){
					//判断点击的节点是否包含子节点
				   var   children=	$('#tree').tree('getChildren', node.target);
					if(children == ''){
						//没有子节点   打开选项卡
						var tabsObj=  $("#tabs").tabs("getTab",node.text);
						  if(tabsObj==null){
						$('#tabs').tabs('add',{
						    title:node.text,
						    content:"<iframe frameborder='0' scrolling='no'  width='100%'  height='100%'  src = '"+node.href+"' />",
						    closable:true,
						    tools:[{
						        iconCls:'icon-mini-refresh',
						        handler:function(){
						            alert('refresh');
						        }    
						    }]    
						});
						 
						   }else{
							  $("#tabs").tabs("select",node.text);
						   }
					}
				}
			}); 
		}
	})
})  
	</script>
</body>
	
</html>
