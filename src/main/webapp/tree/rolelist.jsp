<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<table  border=1   class="easyui-datagrid"   id="aajbdg" fit="true">
    <thead>   
        <tr>   
          <th data-options="field:'   ww ',checkbox:true"  align="center"    width="100"  height="100"></th> 
              <th data-options="field:'roid'"   align="center"    width="100"  height="100">角色ID</th>   
              <th data-options="field:'roname'"    align="center"  width="100"  height="100">角色名</th>   
              <th data-options="field:'',formatter:ffbbs"    align="center"  width="100" height="100">操作</th>
        </tr>   
    </thead>   
    <tbody>   
    </tbody>   
</table> 
<!-- 新增 -->
<div   id="ddjbdg">
</div>

<!-- 修改 -->
<div  id="qwwejdbg">
</div>

<!--  分配权限-->
<div  id="hjhjjbdg">
</div>

<script type="text/javascript">
$("#aajbdg").datagrid({
    url:'<%=request.getContextPath()%>/role/addcharolelist.do',
    pagination:true,
    pageNumber:0,
    pageSize:3,
    pageList:[2,3,4,5],
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
 function  ffbbs(val,row){
	return   "<button  onclick='dells("+row.roid+")'>分配权限</button>";
} 
  function  dells   (roid){
	  $('#hjhjjbdg').dialog({
		    title: '分配权限',    
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'addrolemenu.jsp',    
		    modal: true ,
		    buttons:[{
				text:'新增',
				handler:function(){
					var node=$("#roletree").tree("getChecked");
  					var ids ="";
  					 for (var i = 0; i < node.length; i++) {
						ids+=","+node[i].id;
					}
  					 idss=ids.substring(1);
					$.ajax({
				   		 url:"<%=request.getContextPath()%>/role/updaterolemenulist.do",
				   			type:"post",                                         
				   		    data:{"ids":idss,"roid":roid},
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