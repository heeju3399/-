<%@page import="java.util.Vector"%>
<%@page import="bean.notice_Board"%>
<%@page import="bean.user"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="note" class="bean.notice_Board" />
<jsp:useBean id="con" class="DAO.Con2" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = (String) session.getAttribute("idKey");
	out.print(session.getAttribute("idKey"));
	Vector<notice_Board> vlist = con.border_List();
	//notice_Board nb = new notice_Board();
	//out.print(vlist.size());
%>
<script>
var count = 0;
function cc(){
 var aa = count ++; 
 document.write(aa);
}
</script> 

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
			<a href="main.jsp">메인페이지</a>
		</div>
		<div class="a2">
			<a href="">게시판</a>
		</div>
		<%
			if (id == null) {
		%>
		<div class="a2">
			<a href="signin.jsp">회원가입</a>
		</div>
		<div class="a2">
			<a href="login.jsp">로그인</a>
		</div>
		<%
			} else {
		%>
		<div class="a2">
			<a href="">회원관리</a>
		</div>
		<div class="a2">
			<a href="logout.jsp">로그아웃</a>
		</div>
		<%
			}
		%>
	</div>
	<hr>
	<div style="margin-left: 80%; padding: 10px; width: 100px;">

		<form action="write.jsp">
			<input type="submit" value="글쓰기" style="font-size: 50px;">
		</form>
	
	</div>
	<form>
	<table
		style="font-size: 40px; border: solid 2px; width: 80%; margin: auto; margin-top: 1%; text-align: center;">
		<th style="border: solid 1px;">번호</th>
		<th style="border: solid 1px;">ID</th> 
		<th style="border: solid 1px;">제목</th>
		<th style="border: solid 1px;"><a style="font-size: 40px;">내용</a></th>
		<th style="border: solid 1px;">날짜</th>
		<th style="border: solid 1px;">조회</th>
		<%
			for(int i = 0; i<vlist.size(); i++){ 
				notice_Board bb = vlist.get(i); 
			
		%>
		<tr style="font-size: 30px;" >
			<td style="border: solid 1px;"><%= bb.getNum() %></td> 
			<td style="border: solid 1px;"><%=bb.getUserId().replace(" ", "&nbsp;").replaceAll
									("<", "lt;").replace(">", "&gt;").replace("\n", "<br>")%></td>
			<td style="border: solid 1px;"><%=bb.getNbTitle().replace(" ", "&nbsp;").replaceAll
									("<", "lt;").replace(">", "&gt;").replace("\n", "<br>")%></td>
			<td style="border: solid 1px;"> 
			<a href = "read.jsp?Ks34S=<%=bb.getNum()%>" id="s1" onclick="cc()"><%=bb.getNbContent().replace(" ", "&nbsp;").replaceAll
									("<", "lt;").replace(">", "&gt;").replace("\n", "<br>")%></a> 
			</td>
			<td style="border: solid 1px;"><%=bb.getNbDate() %></td>
				<td style="border: solid 1px;"></td>

			</tr>
			
	<%} %>
	
	</table>
	</form>
	
</body>
</html>