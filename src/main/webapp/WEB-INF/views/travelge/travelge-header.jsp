<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">


	
<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>

<header class="header header-fixed nav-down">
	<div class="box mb-0">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/"
					class="header-logo-small mt-15"><img
					src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/logo2.png"
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
					<li class="header-link"><a
						href="${pageContext.request.contextPath }/travelge/main"
						title="채널"> 채널</a>
					</li>
					<li class="header-link"><a
						href="${pageContext.request.contextPath}/travelge/travelgeList"
						title="지역별"> 지역별</a></li>
					<li class="header-link"><a
						href="${pageContext.request.contextPath}/travelge/travelgeAroundMe"
						title="내주변"> 내주변</a></li>
					<li class="header-link"><a
						href="${pageContext.request.contextPath}/travelge/searchPage"
						title="검색">검색</a></li>

					<li class="header-link dropdown mega pull-left "><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Contents <span
							class="ti-angle-down"></span></a>
						<ul class="dropdown-menu mega-menu container col-sm-12">
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/travelge/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/travelge.png"
										alt="travelge">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/entertainment/new/enterMain" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/entertainment.png"
										alt="entertainment">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/eating/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/food.jpg"
										alt="food">
									</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>

				<div class="navbar-buttons">
					<sec:authorize access="isAuthenticated()">
							<a class="btn btn-link btn-sm mt-10" style="cursor: default;"><sec:authentication property="principal.id" />님</a>
							<a class="btn btn-link btn-sm mt-10" href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">My Blog</a>
							<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
							<a href="javascript:logout();" class="btn btn-primary btn-sm mt-10">로그아웃</a>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath }/user/loginForm"
							class="btn btn-link btn-sm mt-10">Login</a>
						<a href="${pageContext.request.contextPath }/user/joinForm"
							class="btn btn-primary btn-sm mt-10"><span class="ti-plus"></span>Join</a>
					</sec:authorize>
				</div>
			</div>
		</nav>
	</div>

	<form id="logoutForm"
		action="${pageContext.request.contextPath}/user/logout" method="post"
		style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<script>
			location.href="${pageContext.request.contextPath}/admin/index";
		</script>
	</sec:authorize>
</header>