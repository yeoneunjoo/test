<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<form action="insertM.do" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="mid" required></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="mpw" required></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="mname" required></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="회원가입"></td>
		</tr>
	</table>
</form>

</body>
</html>

<!-- signup.jsp와 main.jsp는 서로 다른 객체이기 때문에 서로가 서로에게 윈도우창을 닫고 정보를 전달하게 할 수 없음
일단 현재는 그렇게 되어있기때문에 일단은 그냥 내가 sign.jsp를 닫고 진행 -->