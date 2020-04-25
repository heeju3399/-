<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="use" class="bean.user"></jsp:useBean>>
<jsp:useBean id="con" class="DAO.Con2"></jsp:useBean>>
<jsp:setProperty property="*" name="use" />
<%
	request.setCharacterEncoding("EUC-KR");
	boolean sign_ok = false;
	boolean log_ok = false;
	sign_ok = con.signin(use);
	log_ok = con.login(use);
	String msg = null;
	String url = null;
	
	if(!sign_ok){
		msg ="환영";
		url = "main.jsp";
	}
	if(sign_ok){
		msg ="다시입력";
		url = "signin.jsp";
	}
	 
	if(!log_ok){
		msg ="OK";
		url = "main.jsp";
	}
	if(log_ok){
		msg = "다시입력";
		url = "login.jsp";
	}
	
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
?
