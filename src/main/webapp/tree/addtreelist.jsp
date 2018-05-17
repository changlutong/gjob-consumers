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
<form id="list" method="post">
    <div>   
        <label for="name">节点名称:</label>   
        
        <input class="easyui-validatebox" type="text" name="text" data-options="required:true" />  
    </div>  
     <div>   
        <label for="name">父级节点:</label>   
        <input class="easyui-validatebox" type="text" name="pid"  readonly="readonly"/>  
    </div> 
     <div>   
        <label for="name">父级节点名称:</label>   
        <input class="easyui-validatebox" type="text" name="ww"  readonly="readonly"/>  
    </div>   
     <div>   
        <label for="url"> 节点路径:</label>
        <input class="easyui-validatebox" type="text" name="url" data-options="required:true" />
    </div>  
 </form> 
<script type="text/javascript">
var pp= $("#treelist").tree("getSelected");
$("[name='pid']").val(pp.id);
$("[name='ww']").val(pp.text);
</script>
</body>
</html>