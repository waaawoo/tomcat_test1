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
	
	<form action="/tomcat_test/db" method="POST">
		<input type="submit" value="DB検索">
	</form>
	
	<form action="/tomcat_test/Edit" method="POST">
		ID:<input type="text" name="id"><br>
		名前:<input type="text" name="name" ><br>
		性別:
		<select name="sei">
			<option value="" selected></option>
			<option value="男">男</option>
			<option value="女">女</option>
		</select><br>
		入社年:
		<select name="nen">
			<option value="" selected></option>
		<% for (int i = 2000; i < 2020; i++){ %>
			<option value="<%= i%>"><%= i %></option>
		<%} %><br>
		</select>
		住所:<input type="text" name="address"><br>
		<input type="hidden" name="mode" value="add">
		<input type="submit" value="登録">
	</form>
</body>
</html>