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
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/admin/index">Admin</a>

		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-envelope"></i> <b
					class="caret"></b></a>
				<ul class="dropdown-menu message-dropdown">
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">

									<h5 class="media-heading">
										<strong><sec:authentication property="principal.id" />
										</strong>

									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">

									<h5 class="media-heading">
										<strong><sec:authentication property="principal.id" />
										</strong>

									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">

									<h5 class="media-heading">
										<strong><sec:authentication property="principal.id" />
										</strong>

									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-footer"><a href="#">Read All New
							Messages</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-bell"></i> <b
					class="caret"></b></a>
				<ul class="dropdown-menu alert-dropdown">
					<li><a href="#">Alert Name <span
							class="label label-default">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-primary">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-success">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span class="label label-info">Alert
								Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-warning">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-danger">Alert Badge</span></a></li>
					<li class="divider"></li>
					<li><a href="#">View All</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-user"></i> <sec:authentication
						property="principal.id" /> <b class="caret"></b></a>

				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-fw fa-user"></i> Profile</a></li>
					<li><a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
					</li>
					<li><a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
					</li>
					<li class="divider"></li>

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
				<li><a href="javascript:;" data-toggle="collapse"
					data-target="#travelge"> <i class="fa fa-fw fa-sitemap"></i>Travelge
						<i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="travelge" class="collapse">

						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeInfoSearch">조회</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeInfoInsertForm">추가</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeReSearch">추천조회</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeReInsertForm">추천추가</a>
						</li>
					</ul>
				</li>
				<!-- Entertainment nav -->
				<li><a href="javascript:;" data-toggle="collapse"
					data-target="#enter"> <i class="fa fa-fw fa-sitemap"></i>Entertainment
						<i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="enter" class="collapse">
						<li><a href="${pageContext.request.contextPath}/admin/enter/enterInfoSearch">조회</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/enter/enterInfoInsertForm">추가</a></li>
					</ul>
				</li>
			</ul>
			<%-- <li><a
							href="${pageContext.request.contextPath}/admin/travelgeInfo">TravelgeInfo</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/admin/travelgeRecommandation">TravelgeRecommandation</a>
						</li> --%>
			</ul>
			</li>
			<!--                   
 

                    <li>
                        <a href="${pageContext.request.contextPath }/admin/charts"><i class="fa fa-fw fa-bar-chart-o"></i> Charts</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/tables"><i class="fa fa-fw fa-table"></i> Tables</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/forms"><i class="fa fa-fw fa-edit"></i> Forms</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/bootstrap-elements"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/bootstrap-grid"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>

                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                    </li>
                    <li>
                        <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                    </li> -->

			<%--                     <li class="active">
                        <a href="${pageContext.request.contextPath }/admin/blank-page"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/index-rtl"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                    </li> --%>

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