<%@page import="java.util.Vector"%>
<%@page import="bean.notice_Board"%>
<%@page import="bean.user"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="note" class="bean.notice_Board" />
<jsp:useBean id="con" class="DAO.Con2" />
<%
	String id = (String) session.getAttribute("idKey");
out.print(session.getAttribute("idKey"));
out.print(id);

Vector<notice_Board> vlist = con.border_List(note.getNbId());
out.print(vlist.size());
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./css/hee.css">
</head>
<body>
	<div class="a1">
		<div class="a2">
			<a href="main.jsp">����������</a>
		</div>
		<div class="a2">
			<a href="">�Խ���</a>
		</div>
		<div class="a2">
			<a href="signin.jsp">ȸ������</a>
		</div>
		<div class="a2">
			<a href="login.jsp">�α���</a>
		</div>
	</div>
	<hr>
	<div style="margin-left: 80%; padding: 10px; width: 100px;">

		<form action="write.jsp">
			<input type="submit" value="�۾���" style="font-size: 50px;">
		</form>

	</div>
	<table
		style="font-size: 80px; border: solid 2px; width: 60%; margin: auto; margin-top: 1%; text-align: center;">

		<th style="border: solid 1px;">ID</th>
		<th style="border: solid 1px;">����</th>
		<th style="border: solid 1px;">��¥</th>
		<th style="border: solid 1px;">��ȸ</th>

		<%
			
		%>

		<tr>
			<td style="border: solid 1px;">7</td>
			<td style="border: solid 1px;">7</td>
			<td style="border: solid 1px;">7</td>
			<td style="border: solid 1px;">7</td>

		</tr>

	</table>





</body>
</html>