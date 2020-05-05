<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<%	request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="con" class="DAO.Con2" />
<jsp:useBean id="use" class="bean.user" />
<jsp:setProperty property="*" name="use" />

<%
	int result = con.login(use);
	out.print(result);

if (result == 1) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('ok')");
	script.println("location.href = 'main.jsp' ");
	script.println("</script>");
	session.setAttribute("idKey", use.getUserId());
	
} else if(result == 0 ) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('비밀번호 틀림')");
	script.println("history.back()"); 
	script.println("</script>");
	
}else if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('아이디가 존재하지 않습니다.')");
	script.println("history.back()");
	script.println("</script>");
	
}else if(result == -2){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('데이터베이스 오류가 발생하였습니다.')");
	script.println("history.back()");
	script.println("</script>");
}

%>


