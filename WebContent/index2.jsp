<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>受け取り</title>
</head>
<body>
<!-- POST送信の受け取り -->
	<%
	/* request　暗黙オブジェクト　前のページから送られてくるデータの塊 */
		request.setCharacterEncoding("UTF-8");
	/* requestオブジェクトないのパラメーターを取得する */
		String id = (String) request.getParameter("id");
		String pass = (String) request.getParameter("pass");
	%>
	
	<!-- 取得したデータを表示 -->
	ID:<%= id %><br>
	pass:<%= pass %><br>
	
	<!-- hiddenでデータ送信 -->
	<form action="index3.jsp" method="POST">
		<input type="hidden" name="id" value=<%= id %>>
		<input type="hidden" name="pass" value=<%= pass %>>
		<input type="submit" value="引き継ぎ">
	</form>
	
	<a href="index.jsp">戻る</a>
</body>
</html>