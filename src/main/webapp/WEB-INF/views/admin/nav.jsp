<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Admin</title>

<!-- Bootstrap Core CSS -->
<link
	href="<c:url value= '/resources/assets/admin/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value= '/resources/assets/admin/css/sb-admin.css'/>"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="<c:url value= '/resources/assets/admin/css/plugins/morris.css'/>"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url value= '/resources/assets/admin/font-awesome/css/font-awesome.min.css'/>"
	rel="stylesheet" type="text/css">


</head>
<body>
	<!-- Navigation -->

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/admin/index">Admin</a>

		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			
			
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-user"></i> <sec:authentication
						property="principal.id" /> <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="javascript:logout();"><i
							class="fa fa-fw fa-power-off"></i> Log Out</a></li>
				</ul></li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="${pageContext.request.contextPath }/admin/index">
						<i class="fa fa-fw fa-dashboard"></i> Dashboard
				</a></li>
				<li><a href="javascript:;" data-toggle="collapse" data-target="#travelge"> <i class="fa fa-fw fa-map-signs"></i>Travelge
						<i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="travelge" class="collapse">

						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeInfoSearch">조회</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeInfoInsertForm">추가</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeReSearch">추천조회</a></li>
					</ul>
				</li>
				<!-- Entertainment nav -->
				<li><a href="javascript:;" data-toggle="collapse" data-target="#enter"> <i class="fa fa-fw fa-sitemap"></i>Entertainment <i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="enter" class="collapse">
						<li><a href="${pageContext.request.contextPath}/admin/enter/enterInfoSearch">조회</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/enter/enterInfoInsertForm">추가</a></li>
					</ul>
				</li>
				
				
				<!-- Food nav -->
				<li><a href="javascript:;" data-toggle="collapse" data-target="#food"> <i class="fa fa-fw fa-sitemap"></i>Food <i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="food" class="collapse">
						<li><a href="${pageContext.request.contextPath}/admin/eating/restaurantSearch">조회</a></li>
						<%-- <li><a href="${pageContext.request.contextPath}/admin/eating/restaurantInsertForm">추가</a></li> --%>
					</ul>
				</li>
			</ul>

			
		</div>
		<!-- /.navbar-collapse -->
	</nav>
	<form id="logoutForm"
		action="${pageContext.request.contextPath}/user/logout" method="post"
		style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script type="text/javascript">
		function logout() {
			document.getElementById("logoutForm").submit();
		}
	</script>

</body>
</html>