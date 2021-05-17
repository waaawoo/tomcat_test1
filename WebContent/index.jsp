<!-- jspに必ず必要な記述 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspファイル</title>
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
	
	<p>ログイン情報を入力してください</p>
	<form action="/tomcat_test/login" method="POST" >
		ID <input type="text" name="id">
		pass <input type="password" name="pass">
		<input type="submit" value="ログイン">
		
	</form>
</body>
</html>