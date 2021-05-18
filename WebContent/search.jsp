<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>実行結果</h1>
<!-- 実行結果を出力 -->
<%
ResultSet rset = (ResultSet) request.getAttribute("kekka");
 while (rset.next()){
%>
<%= rset.getString(1) %>
<%= rset.getString(2) %>
<%= rset.getString(3) %>
<%= rset.getString(4) %>
<%= rset.getString(5) %>
<!-- URLパターンEditを呼び出しでいる -->
<a href="Edit?&mode=delete&id=<%= rset.getString(1) %>"><button>削除</button></a>
<form action="/tomcat_test/Edit" method="POST">
	<input type="hidden" name="mode" value="change">
	<input type="hidden" name="id" value="<%= rset.getString(1) %>">
	<input type="hidden" name="name" value="<%= rset.getString(2) %>">
	<input type="hidden" name="sei" value="<%= rset.getString(3) %>">
	<input type="hidden" name="nen" value="<%= rset.getString(4) %>">
	<input type="hidden" name="address" value="<%= rset.getString(5) %>">
	<input type="submit" value="変更">
</form>
<br>
<% } %>

<a href="index.jsp">戻る</a>
</body>
</html>