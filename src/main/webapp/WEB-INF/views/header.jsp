<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">

<script>
function logout() {
	document.getElementById("logoutForm").submit();
}
</script>

<style>
.header-link {font-weight: bold; font-size: large;}
</style>

<header class="header header-fixed nav-down">
	<div class="box mb-0">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/" class="header-logo-small mt-15"><img
					src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/logo.png"
					alt="store logo"></a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".js-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse row">
				<ul class="nav navbar-nav">
					<li class="header-link"><a href="travelge/main">Travelge</a></li>
					<li class="header-link"><a href="entertainment/new/enterMain">Entertainment</a></li>
					<li class="header-link"><a href="eating/newdesign">Food</a></li>
					<li class="header-link"><a href="${pageContext.request.contextPath}/user/mypage">My Page</a></li>
					<li class="header-link"><sec:authorize access="isAuthenticated()"><a href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">Blog</a></sec:authorize></li>
				</ul>

				<div class="navbar-buttons">
					<sec:authorize access="isAuthenticated()">
							<a class="btn btn-link btn-sm mt-10" style="cursor: default;"><sec:authentication property="principal.id" />님</a>
							<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
							<a href="javascript:logout();" class="btn btn-primary btn-sm mt-10">로그아웃</a>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath }/user/loginForm" class="btn btn-link btn-sm mt-10">Login</a>
						<a href="${pageContext.request.contextPath }/user/joinForm" class="btn btn-primary btn-sm mt-10"><span class="ti-plus"></span>Join</a>
					</sec:authorize>
				</div>
			</div>
		</nav>
	</div>
	
	<form id="logoutForm" action="${pageContext.request.contextPath}/user/logout"
		method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<script>
			location.href="${pageContext.request.contextPath}/admin/index";
		</script>			
	</sec:authorize>
</header>