<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<%
/* セッション削除 */
session.invalidate();
%>

<a href="next.jsp">前のページへ</a>
</body>
</html>