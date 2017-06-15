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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>Travelge Info</title>

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


							<!-- 검색 옵션 -->
							<form action="${pageContext.request.contextPath }/travelge/travelgeInfoSearch" method="post">
							<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}">
							<div class="form-group" style="width: 20%">
									<select class="form-control" name="keyField">
									<option value="all">All</option>
									<option value="contentCode">Content_Code</option>
									<option value="travelgeName">travelgeName</option>
									<option value="travelgeAddr">travelgeAddr</option>
									<option value="travelgeDescription">travelgeDescription</option>
									<option value="travelgeTheme">travelgeTheme</option>
									<option value="travelgeRegion">travelgeRegion</option>
								</select>
							</div>


							<!-- 서치바 -->
							<div class="form-group input-group" style="width: 50%">
								<input type="text" class="form-control" name="keyWord"> <span
									class="input-group-btn">
									<button class="btn btn-default"type="submit" ><i class="fa fa-search"></i>
									</button></span>
							</div>
							</form>


							<div class="panel-body">

								<div class="table-responsive">
									<table class="table table-bordered table-hover table-striped">
										<tr>
											<th>CONTENT_CODE</th>
											<th>NAME</th>
											<th>ADDR</th>
											<th>DESCRIPTION</th>
											<th>THEME</th>
											<th>REGION</th>
											<th>COORDINATES</th>

										</tr>
										<c:forEach items="${list }" var="list" varStatus="state">
											<Tr>
												<td>${list.contentCode }</td>
												<td>${list.travelgeAddr }</td>
												<td>${list.travelgeAddr }</td>
												<td>${list.travelgeAddr }</td>
												<td>${list.travelgeAddr }</td>
												<td>${list.travelgeAddr }</td>
												<td>${list.travelgeAddr }</td>
											</Tr>

										</c:forEach>
									</table>
									<div id="pageForm">
										<div class="container">
											<ul class="center-align pagination">
												<!-- < 버튼 -->
												<c:if test="${startPage != 1 and startPage != null}">
													<li class="waves-effect">
													<a href='${pageContext.request.contextPath }/travelge/travelgeInfoSearch?currentPage=${startPage-1}&keyField=${ketField}&keyWord=${keyWord}'><i
															class="material-icons">chevron_left</i></a></li>
												</c:if>
												<c:forEach var="pageNum" begin="${startPage}"
													end="${endPage}">
													<c:if test="${pageNum == spage and pageNum != null}">
														<!-- 선택페이지 -->
														<li class="waves-effect active"><a>${pageNum}</a></li>
													</c:if>
													<!-- 선택되지 않은 페이지 -->
													<c:if test="${pageNum != spage and pageNum != 0}">
														<li class="waves-effect"><a
															href='${pageContext.request.contextPath }/travelge/travelgeInfoSearch?keyField=${keyField}&keyWord=${keyWord}&currentPage=${pageNum}'>${pageNum}&nbsp;</a></li>

													</c:if>
												</c:forEach>
												<!-- > 버튼 -->
												<c:if test="${endPage != maxPage }">
													<li class="waves-effect"><a
														href='${pageContext.request.contextPath }/travelge/travelgeInfoSearch&currentPage=${endPage+1 }'><i
															class="material-icons">chevron_right</i></a></li>
												</c:if>

											</ul>
										</div>
									</div>
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


	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>

</body>

</html>
