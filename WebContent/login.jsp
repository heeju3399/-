<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
<link rel="stylesheet" href="css/hee.css">

</head>
<body>

	<div class="a1">
		<div class="a2">
			<a href="main.jsp">����������</a>
		</div>
		<div class="a2">
			<a href="main.jsp">�Խ���</a>
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
		<form action="Login_Action.jsp" class="login_form">
			<div class="login_a1">
				<h1>Login</h1>
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="userId" id="" value=""
							style="font-size: 28px;" placeholder="���̵�">
					</div>
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<input type="password" name="userPass" id="" value=""
							style="font-size: 28px;" placeholder="��й�ȣ">
					</div>
				</div>


				<div style="text-align: center; margin-top: 40px;">
					<input type="submit" value="�α���" class="btn_color"
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 90%;" />
				</div>

			</div>

		</form>
	</div>

</body>
</html>