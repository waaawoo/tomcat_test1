<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>次の画面</h1>
	<%
		String id = (String)session.getAttribute("id");
		String pass = (String)session.getAttribute("pass");
		String ste = (String)request.getAttribute("ste");
		if (id == null){
			ste = "すでにログアウトしています。";
		}
	%>
	<%= "idは" + id  %>
	<%= "passは" + pass  %>
	<a href="logout.jsp">ログアウト</a>
</body>
</html>