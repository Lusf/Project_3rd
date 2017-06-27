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

<title>Food Info</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet"
	href="<c:url value='/resources/js/table/css/style.css'/>">
<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>

<!-- TABLE SORT -->
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.metadata.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.min.js"></script>
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
							Food <small>Food Info</small>
						</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="../index.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-file"></i> Food Info</li>
						</ol>
						<div class="panel panel-default">
							<!-- 검색 옵션 -->
							<form
								action="${pageContext.request.contextPath }/eating/adminRestaurantSearch"
								method="post" class="form-inline form-horizontal" role="form">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}">
								<div class="form-group"
									style="margin-left: 12px; margin-right: 10px; margin-top: 12px">
									<label for="category" class="sr-only">category</label> <select
										class="form-control" name="category" id="category"
										style="margin-left: 3px; margin-right: 10px">
										<option value="AL">전체</option>
										<option value="SU">서울</option>
										<option value="DJ">대전</option>
										<option value="DG">대구</option>
										<option value="BS">부산</option>
										<option value="KW">강원도</option>
									</select> <label for="category2" class="sr-only">category2</label> <select
										class="form-control" name="category2" id="category2"
										style="margin-left: 3px; margin-right: 10px">
										<option value="AL">전체</option>
										<option value="KR">한식</option>
										<option value="CN">중식</option>
										<option value="EN">양식</option>
									</select>
								</div>
								<!-- <div class="form-group col-md-5">
									<input type="text" class="form-control"	placeholder="지역, 식당 또는 음식"  name="keyWord"/>
								</div> -->	
								<!-- ////////// -->
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
												<th>contentCode</th>
												<th>맛집 이름</th>
												<th>맛집 정보</th>
												<th>옵션1</th>
												<th>옵션2</th>
												<th>주소</th>
												<th>상세정보</th>
												<th>restaurantPic</th>
												<th>id</th>
											</tr>
										</THEAD>
										<c:forEach items="${listA}" var="list" varStatus="state">
											<Tr>

												<td><a data-toggle="collapse"
													data-target="#${state.count}">${list.contentCode }</a>
													<div id="${state.count}" class="collapse">
														<a href="${pageContext.request.contextPath }/eating/restaurantUpdateForm?contentCode=${list.contentCode}">수정</a>
													</div></td>
												<td width="120px">${list.restaurantName }</td> 
												<td width="300px">${list.restaurantInfo }</td>
												<td width="50px">${list.category }</td>
												<td width="50px">${list.category2 }</td>
												<td>${list.restaurantAddr }</td>
												<td width="80px">${list.restaurantCoordinates }</td>
												<td width="80px">${list.restaurantPic }</td>
												<td width="80px">${restaurantVo.id }</td>
												<%-- <td>${list.cnt }</td> --%>
												<td width="40px"><a href="${pageContext.request.contextPath }/eating/deleteRestaurant?contentCode=${list.contentCode}">삭제</a></td>

											</Tr>

										</c:forEach>
									</table>
								</div>

								<div id="pageForm" style="text-align: center;">

									<ul class="center-align pagination">
										<!-- < 버튼 -->
										<c:if test="${startPage != 1 and startPage != null}">
											<li><a
												href="${pageContext.request.contextPath }/eating/restaurantSearch?currentPage=${startPage-1}&category=${category}&category2=${category2}&keyWord=${keyWord}">
													<i class="material-icons">chevron_left</i>
											</a></li>
										</c:if>
										<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
											<c:if test="${pageNum == spage and pageNum != null}">
												<!-- 선택페이지 -->
												<li class="active"><a>${pageNum}</a></li>
											</c:if>
											<!-- 선택되지 않은 페이지 -->
											<c:if test="${pageNum != spage and pageNum != 0}">
												<li><a
													href="${pageContext.request.contextPath }/eating/adminRestaurantSearch?currentPage=${pageNum}&category=${category}&category2=${category2}&keyWord=${keyWord}">${pageNum}&nbsp;</a></li>

											</c:if>
										</c:forEach>
										<!-- > 버튼 -->
										<c:if test="${endPage != maxPage }">
											<li><a
												href="${pageContext.request.contextPath }/eating/restaurantSearch?currentPage=${endPage+1 }"><i
													class="material-icons">chevron_right</i></a></li>
											<i class="material-icons">chevron_right</i>
										</c:if>
										<!--  -->
									</ul>
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
	<%@ include file="/WEB-INF/views/admin/modal.jsp"%>
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