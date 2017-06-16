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
								InsertForm</li>
						</ol>
						
							<!-- 검색 옵션 -->
							<form
								action="${pageContext.request.contextPath }/travelge/travelgeInfoInsert"
								method="post" role="form" >
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}">
								<div class="row">
								<div class="form-group col-xs-3">
									<label for="travelgeTheme" class="sr-only">travelgeTheme</label>
									<select class="form-control" name="travelgeTheme"
										id="travelgeTheme"
										>
										<option>선택</option>
										<option value="TD">관광지</option>
										<option value="LM">숙박</option>
										<option value="CT">문화</option>
										<option value="LP">레포츠</option>
									</select>
								</div>
								<div class="form-group col-xs-3">
									<label for="travelgeRegion" class="sr-only">travelgeRegion</label>
									<select class="form-control" name="travelgeRegion"
										id="travelgeRegion">
										<option>선택</option>
										<option value="SU">서울</option>
										<option value="GG">경기/인천</option>
										<option value="CB">충북/대전</option>
										<option value="CN">충남/세종</option>
										<option value="BS">부산</option>
										<option value="KB">경북/대구</option>
										<option value="KN">경남/울산</option>
										<option value="JB">전북</option>
										<option value="JN">전남/광주</option>
										<option value="JJ">제주</option>
									</select>
								</div>
								<button type="submit" class="btn btn-default">등록</button>
								<button type="reset" class="btn btn-default">다시쓰기</button>
								
								</div>
								
								<div class="form-group">
									<label for="travelgeName">travelgeName</label>
									<input type="text" class="form-control" name="travelgeName" id="travelgeName" placeholder="travelgeName">
								</div>
								<div class="form-group">
									<label for="travelgeAddr">travelgeAddr</label>
									<input type="text" class="form-control" name="travelgeAddr" id="travelgeAddr" placeholder="travelgeAddr">
								</div>
								<div class="form-group">
									<label for="travelgeDescription">travelgeDescription</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
								<div class="form-group">
									<label for="travelgeDescription">travelgeCoordinates</label>
									<span>여기를 어떻게해야하나</span>
								</div>

							</form>
						
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container-fluid -->


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
