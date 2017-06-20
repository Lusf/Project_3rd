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
				 <span><img style="width:100%;" src="${pageContext.request.contextPath }/resources/travelge/${info.contentCode }/photos/${info.travelgePhotos}"></span>
				<h2>${info.travelgeName }</h2>
				<span>${info.travelgeDescription } </span>

			</div>
			<div id="map" style="width: 500px; height: 400px;"></div>

			<script>

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new daum.maps.LatLng(${info.x}, ${info.y}), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };


		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

 		// 마커가 표시될 위치입니다 
		var markerPosition  =new daum.maps.LatLng(${info.x}, ${info.y}); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map); 

		 var iwContent = "<div style='padding:5px;'>${info.travelgeName }</div>" // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		iwPosition = new daum.maps.LatLng(${info.x}, ${info.y}); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 	
		
		</script>

			<hr>
			<!-- Blog Post Content Column -->
			<div class="cont">
				<h1>Review</h1>
				<br>
				<sec:authorize access="isAuthenticated()">
				<a style="cursor:pointer;"data-toggle="modal" data-target="#insertReview"
					class="post-entry-more"> 리뷰 작성 </a>
				</sec:authorize>	

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
					<span>
						<img style="width:100px; height: 100px" class="img-circle" src="${pageContext.request.contextPath }/resources/user/${comment.id }/profile/${comment.userPic}"></span>
						<span> ${comment.id } </span> <span style="color: red">${comment.blogTitle }</span>
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

