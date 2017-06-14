<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Travelge Info</title>
<link
	href="<c:url value= '/resources/assets/admin/css/dataTables.bootstrap4.css'/>"
	rel="stylesheet">
</head>

<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/admin/nav.jsp"%>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Travelge <small>Travelge Info</small>
						</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-file"></i> Travelge Info
							</li>
						</ol>

						<div class="panel panel-default">
							<div class="panel-body">
								<a
									href="${pageContext.request.contextPath }/travelge/travelgeInfoSearch">test</a>
								<div class="card mb-3">
									<div class="card-header">
										<i class="fa fa-table"></i> Data Table Example
									</div>
									<div class="card-block">
										<div class="table-responsive">
											<table class="table table-bordered" width="100%"
												id="dataTable" cellspacing="0">

												<c:forEach items="${list }" var="list" varStatus="state">
												<Tr>
												<td>
												${list.contentCode }
												</td>
												<td>
												${list.travelgeAddr }
												</td>
												</Tr>
                        						
                        						</c:forEach>
											</table>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/dataTables.bootstrap4.js"></script>
</body>

</html>
