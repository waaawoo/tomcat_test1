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
<br>
<% } %>
</body>
</html>