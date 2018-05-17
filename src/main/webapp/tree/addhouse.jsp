<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="ff" method="post">
   <div  id="ll"   name="regionfid">
    </div> 
    <div>   
        <label for="name">房间号:</label>   
        <input class="easyui-validatebox" type="text" name="hno" data-options="required:true" />  
    </div>  
     <div>   
        <label for="name">层数:</label>   
        <input class="easyui-validatebox" type="text" name="hlevel" data-options="required:true" />  
    </div>  
     <div>   
        <label for="name">方向:</label>   
        <input class="easyui-validatebox" type="text" name="hposition" data-options="required:true" />  
    </div>  
 </form> 
</body>
</html>