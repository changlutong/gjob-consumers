<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="list" method="post">
    <div>   
        <label for="name">节点名称:</label>   
         <input type="hidden" name="id">
        <input class="easyui-validatebox" type="text" name="text" data-options="required:true" />  
    </div>  
   
      
     <div>   
        <label for="name"> 节点路径:</label>   
        <input class="easyui-validatebox" type="text" name="url" data-options="required:true" />
    </div>  
 </form> 
 <script type="text/javascript">
var pp= $("#treelist").tree("getSelected");
/*alert()*/
$("[name='id']").val(pp.id);
$("[name='url']").val(pp.href);
$("[name='text']").val(pp.text);
</script>
</body>
</html>