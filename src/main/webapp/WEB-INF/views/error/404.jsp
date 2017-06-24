<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
<head>

<style type="text/css">
.nb-error {
	margin: 0 auto;
	text-align: center;
	max-width: 480px;
	padding: 60px 30px;
}

.nb-error .error-code {
	color: #2d353c;
	font-size: 96px;
	line-height: 100px;
}

.nb-error .error-desc {
	font-size: 12px;
	color: #647788;
}

.nb-error .input-group {
	margin: 30px 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="nb-error">
		<div class="error-code">Error</div>
		<h3 class="font-bold">We couldn't find the page..</h3>

		<div class="error-desc">

			죄송합니다. 찾으려는 페이지가 없거나 존재하지 않습니다.<br /> 
			페이지를 새로 고치거나 아래 버튼을 클릭하여 홈페이지로 돌아가십시오.

			<ul class="list-inline text-center text-sm">
				<li class="list-inline-item"><a href="${pageContext.request.contextPath }/"
					class="text-muted">Go to Home</a></li>
				<li class="list-inline-item"><a href="${pageContext.request.contextPath }/user/loginForm"
					class="text-muted">Login</a></li>
				<li class="list-inline-item"><a href="${pageContext.request.contextPath }/user/joinForm"
					class="text-muted">Register</a></li>
			</ul>
			<div class="text-center">
				<span>©</span> <span>2017</span> <span>-</span> <span>오지랖
				</span> <br>
				
			</div>
		</div>
	</div>
	</div>
</body>
</html>