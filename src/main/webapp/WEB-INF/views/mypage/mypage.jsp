<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>

<script>
	$().function()
</script>


<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
				<div class="well profile">
					<div class="col-sm-12">
						<div class="col-xs-12 col-sm-8">
							<h2>${userInfo.id}</h2>
							<p>
								<strong>Tell : </strong>${userInfo.tell}
							</p>
							<p>
								<strong>Point : </strong>${userInfo.point}
							</p>
							<p>
								<!--<strong>Skills: </strong> <span class="tags">html5</span> <span
									class="tags">css3</span> <span class="tags">jquery</span> <span
									class="tags">bootstrap3</span> -->
							<div class="btn-group dropup btn-block">
								<a href="#" class="btn btn-default" data-toggle="modal"
									data-target="#offer-01" id="test">정보 수정</a>
							</div>
							</p>
						</div>
						<div class="col-xs-12 col-sm-4 text-center">
							<figure> <img
								src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg"
								alt="" class="img-circle img-responsive"></figure>
						</div>
					</div>
					<div class="col-xs-12 divider text-center">
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong> 20,7K </strong>
							</h2>
							<button class="btn btn-success btn-block">
								<span class="fa fa-plus-circle">리뷰 확인</span>
							</button>
						</div>
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong>245</strong>
							</h2>
							<button class="btn btn-info btn-block">
								<span class="fa fa-user">관심 분야</span>
							</button>
						</div>
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong>43</strong>
							</h2>
							<div class="btn-group dropup btn-block">
								<button type="button" class="btn btn-primary">
									<span class="fa fa-gear">찜한 목록</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 수정 -->
	<div id="offer-01" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="textinput">Name</label>
					<div class="col-md-4">
						<input id="textinput" name="textinput" placeholder=""
							class="form-control input-md" required="" type="text">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="textinput">Phrase</label>
					<div class="col-md-4">
						<input id="textinput" name="textinput" placeholder=""
							class="form-control input-md" required="" type="text">

					</div>
				</div>

				<!-- Textarea -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="textarea">Description</label>
					<div class="col-md-4">
						<textarea class="form-control" id="textarea" name="textarea"></textarea>
					</div>
				</div>

				<!-- Button (Double) -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="btnCancel">Save
						Marker</label>
					<div class="col-md-8">
						<button id="btnCancel" name="btnCancel" class="btn btn-primary">Cancel</button>
						<button id="btnSave" name="btnSave" class="btn btn-success">Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/wow.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery-1.11.2.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/swiper.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countTo.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.inview.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countdown.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap-select.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/main.js'/>"></script>

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript"></script>
</body>
</html>