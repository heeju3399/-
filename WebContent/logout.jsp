<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<%
	session.removeAttribute("idKey");
	PrintWriter p = response.getWriter();
	p.println("<script>");
	p.println("location.href = 'main.jsp'");
	p.println("</script>");
	
%>