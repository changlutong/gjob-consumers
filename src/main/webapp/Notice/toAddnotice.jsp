<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="brand-form">
	    <input type="hidden" name="noticeid" value="${noticeid}"/>
		内容名称<input name="noticename" value="${noticename}"/><br/>
		发布时间<input  type="hidden" name="noticedate" value="${noticedate}"/><br/>
		公告内容<input name="noticebulletin" value="${noticebulletin}"/><br/>


	</form>
</body>
</html>