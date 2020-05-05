<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.Con2"%>
<%@page import="java.util.Vector"%>
<%@page import="bean.notice_Board"%>
<%@page import="bean.user"%>
<%@page errorPage="err.jsp" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="note" class="bean.notice_Board" />

<jsp:useBean id="con" class="DAO.Con2" />

<%
	request.setCharacterEncoding("EUC-KR");
String id = (String) session.getAttribute("idKey");

out.print(id);
int num = 0;
num = Integer.parseInt(request.getParameter("Ks34S"));
out.print(num);
Vector<notice_Board> vlist = con.read_list(num);

for (int i = 0; i < vlist.size(); i++) {
	notice_Board bb = vlist.get(i);
	
	out.print(bb.getNbAvailable());
%>


<html>
<head>
<meta charset="EUC-KR">
<title>content</title>
<link rel="stylesheet" href="./css/hee.css">
<script>

function delete2() {
	location.href="delete_Action.jsp?num=<%=num%>";
	}
	
	function list3() {
		location.href = "border.jsp";
	}
	
</script>
</head>
<body>
	 
	<div class="a1">
		<div class="a2">
			<a href="main.jsp">메인페이지</a>
		</div>
		<div class="a2">
			<a href="border.jsp">게시판</a>
		</div>
		<div class="a2">
			<a href="signin.jsp">회원가입</a>
		</div>
		<div class="a2">
			<a href="login.jsp">로그인</a>
		</div>
	</div>
	<hr>

	<div class="contariner">

		<form class="login_form" method="post" action="update_Action.jsp?num=<%=num%>" >
			<div class="login_a1">
				<h1>
					(<%=bb.getUserId()%>)님의 글
				</h1>
				<div class="login_a2"></div>

				<%
					if (id != null && id.equals(bb.getUserId())) {
				%>
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="nbTitle" value="<%=bb.getNbTitle()%>"
							style="font-size: 28px;">
					</div>
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<textarea name="nbContent" rows="5" cols="auto"
							style="font-size: 28px">
						<%=bb.getNbContent()%>
						</textarea>
					</div>
				</div>
				<%
					} else {
				%>
				<div class="login_a2">
					<div class="login_idtxt">
						<h3>제목</h3>
						<span style="border: 1px solid; padding: 10px;"><%=bb.getNbTitle().replace(" ", "&nbsp;").replaceAll
									("<", "lt;").replace(">", "&gt;").replace("\n", "<br>")%></span>
					</div>
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<h3>내용</h3>
						<span style="border: 1px solid; padding: 10px;"><%=bb.getNbContent().replace(" ", "&nbsp;").replaceAll
									("<", "lt;").replace(">", "&gt;").replace("\n", "<br>")%></span>
					</div>
							
				</div>
				<%
					}
				%>
			<input type="hidden" name="userId" value="<%=id%>">
			<input type="hidden" name="num" value="<%=num%>">	
				<div style="text-align: center; margin-top: 40px;">
					<%
						if (id != null && id.equals(bb.getUserId())) {
					%>
					<input type="submit" value="수정" class="btn_color"
					
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 20%; margin: 10px;" />
					<input type="button" value="삭제" class="btn_color"
						onclick="delete2()"
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 20%; margin: 10px;" />
					<%
						}
					%>
					<input type="button" value="리스트" class="btn_color"
						onclick="list3()"
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 30%; margin: 10px;" />
				</div>
				<%
					}
				%>
			</div>
		</form>
	</div>
</body>
</html>