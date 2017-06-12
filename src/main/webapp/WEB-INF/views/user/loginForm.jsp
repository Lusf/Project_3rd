<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="<c:url value='/resources/assets/materialize/css/materialize.css' />"
	type="text/css" rel="stylesheet" media="screen,projection" />
<link
	href="<c:url value='/resources/assets/materialize/css/style.css' />"
	type="text/css" rel="stylesheet" media="screen,projection" />

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/materialize/js/materialize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/materialize/js/init.js"></script>

</head>

<nav>
	<div class="nav-wrapper teal darken-4">
		<a href="${pageContext.request.contextPath}/"
			class="brand-logo center"><i class="large material-icons">thumb_up</i></a>
	</div>
</nav>

<div class="container">

	<div class="row">
		<form class="col s12"
			action="${pageContext.request.contextPath}/user/login" method="post"
			name="f">
			<div class="row">
				<div class="input-field col s4 offset-s4">
					<input id="id" type="text" class="validate" name="id"> <label
						for="id">User ID</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s4 offset-s4">
					<input id="password" type="password" class="validate"
						name="password"> <label for="password">Password</label>
				</div>
			</div>

			<div class="row">
				<div align="center">
					<button class="btn waves-effect waves-light teal darken-4"
						type="submit">로그인</button>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
		<hr width="300">
		<div align="center">


			<span><a href="joinForm" style="color: #004d40">회원가입</a></span><br>
			<c:if test="${not empty requestScope.errorMessage}">
				<span style="color: red">${requestScope.errorMessage}</span>
			</c:if>
		</div>
	</div>
</div>
</body>
</html>