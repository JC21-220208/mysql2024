<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B 15</title>
</head>

<%
	ArrayList<String[]> result =
		(ArrayList<String[]>) request.getAttribute("result");
%>
<body>
<form method="get" action"./index4">
<select NAME="ITEM_NO">

	<% for (String[] ss : result) { %>
		<option VALUE="<%= ss[1]  %>">
		<%=ss[0]%>			
		</option>
	<% } %>
</select>
<input type="submit" value="送信">
</form>
</body>
</html>