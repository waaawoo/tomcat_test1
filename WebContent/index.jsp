<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String mongon = "IDとパスパードを入力してください";
	%>
	<%= mongon %><br>
	<form action="index2.jsp" method="POST">
	ID:<input type="text" name="id"><br>
	パスワード:<input type="text" name="pass"><br>
	<input type="submit" value="送信">
	</form>
</body>
</html>