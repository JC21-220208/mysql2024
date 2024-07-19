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
ArrayList<String[]> maker1 = (ArrayList<String[]>) request.getAttribute("maker1");
ArrayList<String[]> product3 = (ArrayList<String[]>) request.getAttribute("product3");
%>

<body>
	<h1>メーカー一覧</h1>

	<form method="get" action="./product">
		<select name="ID">

		<% for (String[] ss : maker1) {%>
			<option value="<%=ss[0]%>">
			<%=ss[1]%>
			</option>
			<% } %>
	</select>
	<input type="submit" value="絞り込む" />
	</form>

	<h1>プロダクト一覧表</h1>
	
	<table>
	<% for (String[] ss : product3) { %>
		<tr>
			<td><%=ss[0]%></td>
			<td><%=ss[1]%></td>
			<td><%=ss[2]%></td>
		</tr>
		<% } %>
	</table>