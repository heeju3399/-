<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
   		String id = (String)session.getAttribute("idKey");
   		out.print(session.getAttribute("idKey"));
   		out.print(id);
   %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
 <link rel="stylesheet" href="css/hee.css">
</head>
<body>
	
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
<hr><br>

	 <div>
        <div> <img src="https://c.wallhere.com/photos/f0/52/big_cats_animals_lion-1262589.jpg!d" width="100%" height="100%"></div>
    </div>
	
</body>
</html>