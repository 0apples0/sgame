<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${path }/resources/css/login.css" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<title>스겜GO</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="${path }/resources/images/game-control.png" />

</head>

<body>
	<header>
		<nav>
			<div class="top_navi">
				<a href="https://url.kr/4r16jk" target="_blank">홈페이지</a>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="login-wrapper">
			<div class="login-topDiv">
				<a>스겜GO</a> <a>Login</a>
			</div>

			<form method="post" action="character.jsp" id="login-form">
				<input type="text" name="userName" id="userName" placeholder="Email">
				<input type="password" name="userPassword" id="userPassword"
					placeholder="Password"> <label for="remember-check">
					<input type="checkbox" id="remember-check">아이디 저장하기
				</label> <input type="submit" id="submit" value="GAME START">
			</form>
		</div>
	</div>
<script type="text/javascript" src="assets/js/login.js"></script>
</body>

</html>