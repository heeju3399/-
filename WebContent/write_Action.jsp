<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="mgr" class="DAO.Con2" />
<jsp:useBean id="note" class="bean.notice_Board" />
<jsp:setProperty property="*" name="note" />

<%
	
	String id = (String) session.getAttribute("idKey");
	PrintWriter script = response.getWriter();
	if (id != null) {
	note.setUserId(id);
	mgr.boder_insert(note);

	script.println("<script>");

	script.println("location.href = 'border.jsp' ");
	script.println("</script>");

	} else {
	
	script.println("<script>");
	script.println("alert('로그인이 필요합니다.')");
	script.println("location.href = 'login.jsp' ");
	script.println("</script>");
}
%>
