<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>travelge main - 오지랖</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>


</head>
<body>

	<%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-panel" style="text-align: center">
				<img src="${info.travelgePhotos}">
				<h2>${info.travelgeName }</h2>
				<span>${info.travelgeDescription } </span>

			</div>
			<div id="map" style="width: 500px; height: 400px;"></div>

			<script>
			
			var container = document.getElementById('map');
			var options = {
				center : new daum.maps.LatLng${info.travelgeCoordinates},
				level : 3
			};

			var map = new daum.maps.Map(container, options);
			</script>

			<hr>
			<!-- Blog Post Content Column -->
			<div class="cont">
				<h1>리뷰 좀 적어봐!!</h1>
				<a href="#" data-toggle="modal" data-target="#insertReview"
					class="post-entry-more"> Review </a>

				<!-- detail MODAL -->
				<div class="modal fade" id="insertReview" role="dialog"
					tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content shadow">
							<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>
							<div class="modal-body">
								<%@include file="/WEB-INF/views/blog/blogReviewInsert.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<!-- /detail modal 끝 -->
				<hr>
				<c:forEach var="comment" items="${commentList }">
				<a href="${pageContext.request.contextPath}/blog/selectBlogCont">
					<span> ${comment.id } </span>
					<br>
					<span>${comment.blogTitle }</span>
					<br>
				</a>	
				</c:forEach>
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
</body>
</html>

