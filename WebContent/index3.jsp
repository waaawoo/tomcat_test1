<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hiddenデータ受け取り</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) request.getParameter("id");
	String pass = (String) request.getParameter("pass");
%>
ID:<%= id %>
pass:<%= pass %>

</body>
</html>