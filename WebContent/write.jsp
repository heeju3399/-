<%@page import="java.io.PrintWriter"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <% request.setCharacterEncoding("EUC-KR"); %>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<link rel="stylesheet" href="css/hee.css">
</head>
<body>
	
<%
	String id = (String)session.getAttribute("idKey");
	if(id == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α����� �ʿ��մϴ�.')");
		script.println("location.href = 'login.jsp' ");
		script.println("</script>");
	}
%>	
	
	<div class="a1">
		<div class="a2">
			<a href="main.jsp">����������</a>
		</div>
		<div class="a2">
			<a href="border.jsp">�Խ���</a>
		</div>
		<div class="a2">
			<a href="signin.jsp">ȸ������</a>
		</div>
		<div class="a2">
			<a href="login.jsp">�α���</a>
		</div>
	</div>
	<hr>
	
	<div class="contariner">
		<form action="write_Action.jsp" class="login_form" method="post">
			<div class="login_a1">
				<h1>�Խ��� �۾���</h1>
				<div class="login_a2">
					
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<input class="placeholder" type="text" name="nbTitle" id="" value="" 
							style="font-size: 28px;" placeholder="Ÿ��Ʋ"> 
					</div>
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<textarea class="placeholder" name="nbContent" rows="5" cols="auto" style="font-size: 28px" placeholder="����"></textarea>
					</div>
				</div> 

				<div style="text-align: center; margin-top: 40px;">
					<input type="submit" value="����" class="btn_color"
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 90%;" />
				</div> 

			</div>
			
			<input type="hidden" name="nbAvailable" value="1">			
		</form>
	</div>
	
	
</body>
</html>