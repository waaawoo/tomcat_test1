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
		String state = (String)request.getAttribute("state");
		if (state == null){
	%>
	<%
		String id = (String)session.getAttribute("id");
		String pass = (String)session.getAttribute("pass");
		String ste = (String)request.getAttribute("ste");
		if (id == null){
			id = "";
			pass = "";
		}
	%>
	<%= "idは" + id  %>
	<%= "passは" + pass  %>
	<a href="next.jsp">次のページ</a>
	<% }else{ %>
		<%= state %>
	<%} %>
</body>
</html>