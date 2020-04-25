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
			<a href="main.jsp">메인페이지</a>
		</div>
		<div class="a2">
			<a href="main.jsp">게시판</a>
		</div>
		<div class="a2">
			<a href="main.jsp">회원가입</a>
		</div>
		<div class="a2">
			<a href="login.jsp">로그인</a>
		</div>
	</div>
	<hr>

	<div class="contariner">
		<form action="Sign_Action.jsp" class="login_form">
			<div class="login_a1">
				<h1>Sign_in</h1>
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="userId" id="" value=""
							style="font-size: 28px;" placeholder="아이디">
					</div>
				</div>

				<div class="login_a2">
					<div class="login_idtxt">
						<input type="password" name="userPass" id="" value=""
							style="font-size: 28px;" placeholder="비밀번호">
					</div>
				</div>
				
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="userName" id="" value=""
							style="font-size: 28px;" placeholder="이름">
					</div>
				</div>
				
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="userGender" id="" value=""
							style="font-size: 28px;" placeholder="성별">
					</div>
				</div>
				
				<div class="login_a2">
					<div class="login_idtxt">
						<input type="text" name="userEmail" id="" value=""
							style="font-size: 28px;" placeholder="생일">
					</div>
				</div>
	

				<div style="text-align: center; margin-top: 40px;">
					<input type="submit" value="회원가입" class="btn_color"
						style="font-size: 28px; border-radius: 10px 10px 10px 10px; width: 90%;" />
				</div>

			</div>

		</form>
	</div>

</body>
</html>