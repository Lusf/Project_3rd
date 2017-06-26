<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />

<meta charset="utf-8">
<title>오지랖 - travelge AroundMe</title>
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


<script>

$(document).ready(function(){

	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");

	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 5
	// 지도의 확대 레벨 
	};

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {

		// GeoLocation을 이용해서 접속 위치를 얻어옵니다
		navigator.geolocation.getCurrentPosition(function(position) {

			lat = position.coords.latitude, // 위도
			lon = position.coords.longitude; // 경도
			var locPosition = new daum.maps.LatLng(lat, lon)
			var arr = new Array();
			$
			.ajax({
				url : "${pageContext.request.contextPath}/travelge/searchAroundMe",
				type : "post",
				dataType : "json",
				data : "lat=" + lat + "&lon="
						+ lon,
				beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
					xhr.setRequestHeader(header, token)
				},
				success : function(result) {
					$.each(result, function(index, item) {
						createMarker(index, item);
					})

				},
				error : function(err) {
					alert("오류 발생 : " + err);
				}
			});
			
			map.setCenter(locPosition);
		});

	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

		var locPosition = new daum.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

		displayMarker(locPosition, message);
	} 
	// 이동 이벤트 등록
		daum.maps.event.addListener(map, 'dragend', function() {        
	    
	    // 지도 중심좌표를 얻어옵니다 
	    var latlng = map.getCenter(); 
	  
		$.ajax({
			url : "${pageContext.request.contextPath}/travelge/searchAroundMe",
			type : "post",
			dataType : "json",
			data : "lat=" + latlng.getLat() + "&lon="
					+ latlng.getLng(),
			beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
				xhr.setRequestHeader(header, token)
			},
			success : function(result) {
				$.each(result, function(index, item) {
					
					createMarker(index, item);
					/* alert(item+"는"+index); */
				})

			},
			error : function(err) {
				alert("오류 발생 : " + err);
			}
		});
		
		map.setCenter(latlng);
	    
	});
		
	
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	
	function createMarker(index, item)
	{
	    var positions = {title:item.travelgeName,latlng: new daum.maps.LatLng(item.x, item.y)}

		// 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions.latlng, // 마커를 표시할 위치
	        title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });
	    
	    
	    
 	var iwContent = "<div style='padding:5px;'>"+item.travelgeName+"<br><a href='${pageContext.request.contextPath}/travelge/detailView/"+item.contentCode+"'>상세 보기</a></div>" // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwPosition = new daum.maps.LatLng(item.x, item.y); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new daum.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker); 	    
	  
	}	
	
})
 
</script>

</head>
<body>

	<%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>
	<div id="map" style="width: 100%; height: 500px;"></div>

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

