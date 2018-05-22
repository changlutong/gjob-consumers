<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form id="brand-form1">
				<input type="hidden" name="noticeid" value="${s.noticeid}"/>
				公告名称:<input name="noticename" value="${s.noticename}"/><br>
				发布时间:<input name="noticedate" disabled="true" value="${s.noticedate}"/><br>
				公告内容:<input name="noticebulletin" value="${s.noticebulletin}"/>
		</form>
</body>
</html>