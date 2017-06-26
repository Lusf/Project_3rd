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

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet"
	href="<c:url value= '/resources/js/table/css/style.css'/>">
<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>

<!-- TABLE SORT -->
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.js"></script>
<%-- <script
	src="${pageContext.request.contextPath}/resources/js/table/jquery-latest.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.metadata.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.min.js"></script>



<style>
<!--
img {
	width: 200px;
	height: 200px;
}
-->
</style>

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
							<form
								action="${pageContext.request.contextPath }/travelge/travelgeRecommandSearch"
								method="post" class="form-inline form-horizontal" role="form">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}">
								<div class="form-group"
									style="margin-left: 12px; margin-right: 10px; margin-top: 12px">
									<label for="keyField" class="sr-only">keyField</label> <select
										class="form-control" name="keyField" id="keyField"
										style="margin-left: 3px; margin-right: 10px">
										<option value="all">All</option>
										<option value="contentCode">CONTENT_CODE</option>
									</select>
								</div>


								<!-- 서치바 -->
								<div class="form-group input-group" style="margin-top: 12px">

									<input type="text" class="form-control" name="keyWord"
										id="keyWord"> <span class="input-group-btn">
										<button class="btn btn-default" type="submit"
											style="height: 34px">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</form>


							<div class="panel-body">

								<div class="table-responsive">
									<table
										class="table table-bordered table-hover table-striped tablesorter"
										id="myTable">
										<THEAD>
											<tr>
												<th>CONTENT_CODE</th>
												<th>TITLE</th>
												<th>DESCRIPTION</th>
												<th>DATE</th>
												<th>DELETE</th>
											</tr>
										</THEAD>
										<tbody>
											<c:forEach items="${list }" var="list" varStatus="state">

												<tr>
													<td><a data-toggle="collapse"
														data-target="#${state.count}">${list.contentCode }</a>
														<div id="${state.count}" class="collapse">
															<a href="${pageContext.request.contextPath }/travelge/travelgeReUpdateForm?contentCode=${list.contentCode}&title=${list.recommandationTitle}">수정</a>							
														</div></td>
													<td>${list.recommandationTitle }</td>
													<td><div style='width:300px; height: 30px;text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'>${list.recommandationDescription }</div></td>
													<td>${list.recommandationDate }</td>
													<td><a
														href="${pageContext.request.contextPath }/travelge/travelgeRecommandDelete?contentCode=${list.contentCode}&title=${list.recommandationTitle}">삭제</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

								<div id="pageForm" style="text-align: center;">

									<ul class="center-align pagination">
										<!-- < 버튼 -->
										<c:if test="${startPage != 1 and startPage != null}">
											<li><a
												href='${pageContext.request.contextPath }/travelge/travelgeRecommandSearch?currentPage=${startPage-1}&keyField=${ketField}&keyWord=${keyWord}'><i
													class="material-icons">chevron_left</i></a></li>
										</c:if>
										<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
											<c:if test="${pageNum == spage and pageNum != null}">
												<!-- 선택페이지 -->
												<li class="active"><a>${pageNum}</a></li>
											</c:if>
											<!-- 선택되지 않은 페이지 -->
											<c:if test="${pageNum != spage and pageNum != 0}">
												<li><a
													href='${pageContext.request.contextPath }/travelge/travelgeRecommandSearch?keyField=${keyField}&keyWord=${keyWord}&currentPage=${pageNum}'>${pageNum}&nbsp;</a></li>

											</c:if>
										</c:forEach>
										<!-- > 버튼 -->
										<c:if test="${endPage != maxPage }">
											<li><a
												href='${pageContext.request.contextPath }/travelge/travelgeRecommandSearch&currentPage=${endPage+1 }'><i
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
		<!-- /.row -->

	</div>
	<%@ include file="/WEB-INF/views/admin/modal.jsp"%>
	<!-- /.container-fluid -->


	<!-- /#page-wrapper -->


	<!-- /#wrapper -->



	<script>
		$(document).ready(function() {

			$("#myTable").tablesorter();

			var msg = "${msg}";
			if (msg != null) {
				if (msg != "") {
					$("#myModal").modal();
				}
			}
		});
	</script>


</body>

</html>
