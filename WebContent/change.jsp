<%@page import="Beans.ShainBeans"%>
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
 ShainBeans shain = (ShainBeans)request.getAttribute("shain");
%>


<form action="/tomcat_test/Edit" method="POST">
		ID:<%= shain.getId() %>（変更不可） <input type="hidden" name="id" value="<%= shain.getId() %>"><br> 
		名前:<input type="text" name="name" value="<%= shain.getName() %>" ><br>
		性別:
		<select name="sei">
			<option value="<%=  shain.getSei() %>" selected><%= shain.getSei() %></option>
			<option value="男">男</option>
			<option value="女">女</option>
		</select><br>
		入社年:
		<select name="nen">
			<option value="<%= shain.getNen() %>" selected><%= shain.getNen() %></option>
		<% for (int i = 2000; i < 2020; i++){ %>
			<option value="<%= i%>"><%= i %></option>
		<%} %>
		</select>
		住所:<input type="text" name="address" value="<%= shain.getAddress() %>"><br>
		<input type="hidden" name="mode" value="del_add">
		<input type="submit" value="登録">
</form>

</body>
</html>