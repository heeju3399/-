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
	script.println("alert('��й�ȣ Ʋ��')");
	script.println("history.back()"); 
	script.println("</script>");
	
}else if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('���̵� �������� �ʽ��ϴ�.')");
	script.println("history.back()");
	script.println("</script>");
	
}else if(result == -2){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('�����ͺ��̽� ������ �߻��Ͽ����ϴ�.')");
	script.println("history.back()");
	script.println("</script>");
}

%>


