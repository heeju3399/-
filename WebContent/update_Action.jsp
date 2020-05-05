<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="con" class="DAO.Con2"></jsp:useBean>
<jsp:useBean id="note" class="bean.notice_Board"></jsp:useBean>
<jsp:setProperty property="*" name="note"/>
 
<%
		con.update(note);
%>
<script>
	location.href="border.jsp";
</script>
