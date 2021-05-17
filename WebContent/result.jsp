<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<h1>ログイン画面</h1>
	<%
		String id = (String)request.getAttribute("id");
		String pass = (String)request.getAttribute("pass");
		String ste = (String)request.getAttribute("ste");
	%>
	<%= ste %>

	
</body>
</html>