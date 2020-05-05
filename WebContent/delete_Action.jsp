
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR");  %>

<jsp:useBean id="con" class="DAO.Con2"/>
<jsp:useBean id="mgr" class="bean.notice_Board"/>

<%
	int num = Integer.parseInt( request.getParameter("num"));
	con.delete(num);
	
	
%>
<script>
	location.href="border.jsp";
</script>