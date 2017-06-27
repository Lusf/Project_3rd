<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">

<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>



<style type="text/css">
.thumbnail:hover {
	opacity: 1.00;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	transition: box-shadow 0.5s;
	background-color: white
}
</style>

</head>
<body>
	<!-- 헤더 -->
	<header class="header header-fixed nav-down">
	<div class="box mb-0">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/" class="header-logo-small mt-15"><img
					src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/logo2.png"
					alt="store logo"></a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".js-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse row">
				<ul class="nav navbar-nav">
					<li class="header-link"><a
						href="${pageContext.request.contextPath}/eating/main"
						title="채널"> 채널</a>
					</li>

					<li class="header-link dropdown mega pull-left "><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Contents <span
							class="ti-angle-down"></span></a>
						<ul class="dropdown-menu mega-menu container col-sm-12">
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/travelge/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/travelge.png"
										alt="travelge">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/entertainment/new/enterMain" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/entertainment.png"
										alt="entertainment">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/eating/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/food.jpg"
										alt="food">
									</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>

				<div class="navbar-buttons">
					<sec:authorize access="isAuthenticated()">
							<a class="btn btn-link btn-sm mt-10" style="cursor: default;"><sec:authentication property="principal.id" />님</a>
							<a class="btn btn-link btn-sm mt-10" href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">My Blog</a>
							<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
							<a href="javascript:logout();" class="btn btn-primary btn-sm mt-10">로그아웃</a>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath }/user/loginForm"
							class="btn btn-link btn-sm mt-10">Login</a>
						<a href="${pageContext.request.contextPath }/user/joinForm"
							class="btn btn-primary btn-sm mt-10"><span class="ti-plus"></span>Join</a>
					</sec:authorize>
				</div>
			</div>
		</nav>
	</div>

	<form id="logoutForm"
		action="${pageContext.request.contextPath}/user/logout" method="post"
		style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<script>
			location.href="${pageContext.request.contextPath}/admin/index";
		</script>
	</sec:authorize>
</header>

	<section class="home">
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/강민경.jpg)">
					<h4 class="light wow fadeInDown mb-30">
						맛있는 발견의 즐거움 최고의 미식 가이드, <br><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						오지랖이 당신을 관여합니다.  
					</h4>
					<!-- <a class="btn btn-primary wow fadeInUp">browse</a> -->
				</div>
			</div>

			<!-- Add Pagination -->
			<div class="home-slider-pagination"></div>
			<div class="home-slider-prev left-arrow">
				<span class="ti-angle-left"></span>
			</div>
			<div class="home-slider-next right-arrow">
				<span class="ti-angle-right"></span>
			</div>
		</div>
	</section>
	<!-- 검색바 -->
	<%@include file="/WEB-INF/views/eating/searchView.jsp"%>

	<section class="padding">
		<div class="container">
			<div class="row">

				<!-- single offer box-->
				<c:forEach items="${requestScope.listA}" var="list"
					varStatus="state">
					<div class="col-md-4">
						<div class="offer-box">
							<div class="offer-box-head">
								<div class="offer-slider">
									<div class="swiper-wrapper">
										<div class="swiper-slide">

											<img
												src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}"
												<%-- src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" --%>
												alt="offer image">
										</div>
									</div>
								</div>
							</div>
							<a href="#" data-toggle="modal"
							data-target="#old-${state.count }"> <span class="h4 offer-box-title">${list.restaurantName}</span>
								<span class="offer-box-location"><span
									class="ti-location-pin"></span>${list.restaurantAddr} </span> <span
								class="offer-box-meta">${list.restaurantCoordinates}</span>
							</a>
						</div>
					</div>
				</c:forEach>
				<!-- / single offer box-->
				<div class="col-md-12 text-center">
					<sec:authorize access="isAuthenticated()">
						<a class="btn btn-default" href="#" data-toggle="modal"
							data-target="#new"><strong>맛집 등록</strong></a>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<a class="btn btn-default"
							href="${pageContext.request.contextPath }/user/loginForm"><strong>맛집 등록</strong></a>
					</sec:authorize>
					<a class="btn btn-default" href="${pageContext.request.contextPath}/eating/restaurantSearch?category=AL&category2=AL&keyWord=" ><strong>전체 맛집 보기</strong></a>
				</div>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>
	
	<!-- footer -->
	<%@include file="/WEB-INF/views/eating/footer.jsp"%>
	<!-- footer끝 -->


	<!-- NEWS MODAL -->
	<div class="modal fade" id="new" role="dialog" tabindex="-1">
		<div class="modal-dialog">
			<!-- NEWS MODAL CONTENT -->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">
						<h3 class="section-heading"></h3>
						<span class="post-entry-meta"> <img alt="user avatar"
							class="post-entry-author pull-left"
							src="${pageContext.request.contextPath}/resources/images/eating/user.png">
							<span class="post-entry-author-name pull-left"> <sec:authorize
									access="isAuthenticated()">
									<sec:authentication property="principal.id" />님 로그인중
								</sec:authorize>
						</span>
						</span>
						<div class="form-group " id="holder"
							style="width: 738; height: 400;">
							<%-- <img src="${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg" > --%>
							<span id="holder" class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);"></span>
						</div>
						<form
							action="${pageContext.request.contextPath}/eating/insertRestaurant"
							method="post" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<div>
								<label for="category">지역별</label> <select class="form-control"
									name="category">
									<option disabled="disabled">지역을 고르세요</option>
									<option value="SU">서울</option>
									<option value="DJ">대전</option>
									<option value="DG">대구</option>
									<option value="BS">부산</option>
									<option value="KW">강원도</option>
								</select>
							</div>
							<div>
								<label for="category2">음식별</label> <select class="form-control"
									name="category2">
									<option disabled="disabled">음식종류를 고르세요</option>
									<option value="KR">한식</option>
									<option value="CN">중식</option>
									<option value="EN">양식</option>
								</select>
							</div>
							<div class="form-group">
								<label for="restaurantName">맛집 이름</label> <input type="text"
									class="form-control" id="restaurantName" name="restaurantName"
									placeholder="상호명을 입력하세요">
							</div>
							<div class="form-group">
								<label for="restaurantInfo">맛집 정보</label>
								<textarea class="form-control" rows="5" id="restaurantInfo"
									placeholder="정보를 입력하세요" name="restaurantInfo"></textarea>
								<!-- <input type="text" class="form-control" id="restaurantInfo" placeholder="정보를 입력하세요"> -->
							</div>
							<!-- 주소검색 -->
							<div class="form-group" style="vertical-align: bottom;">
								<label for="restaurantAddr">주소 등록</label> <input type="text"
									class="form-control" name="restaurantAddr" id="restaurantAddr"
									placeholder="restaurantAddr">
								<button type="button" onclick="DaumPostcode()"
									class="btn btn-default" style="margin-top: 25px">주소검색</button>
								<br>
							</div>

							<div class="row">
								<div class="form-group col-xs-6">
									<label for="travelgeDescription">주소 상세 입력</label> <input
										type="text" id="restaurantCoordinates"
										placeholder="주소검색 후 상세입력해 주세요" name="restaurantCoordinates"
										class="form-control">
									<div id="map"
										style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
								</div>
							</div>

							<div class="form-group">
								<label for="file">사진 올리기</label> <input type="file" name="file"
									id="upload" class="upload-name" value="파일선택">
							</div>
							<div align="center">
								<button type="submit" class="btn btn-default">등록하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- / NEWS MODAL CONTENT -->
		</div>
	</div>
	<!-- / NEWS MODAL -->
	
	<!-- OLD MODAL -->
		<c:forEach  items="${requestScope.listA}"  var="list" varStatus="state">
		<div id="old-${state.count }" class="modal fade services-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content shadow">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
									
										<img src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" alt="offer image">
									</div>
								</div>
							</div>
						</div>
						<div class="offer-content pl-30 pr-30">
							<span class="h4 offer-box-title">${list.restaurantName }</span> 
							<span class="offer-box-location">
							
								<span class="ti-location-pin"></span>${list.restaurantAddr } </span><br>
								<span 	class="descriptionImg"> ${list.restaurantInfo }</span>
								<a href="#" class="btn btn-link btn-sm pr-0 pull-right"></a>
								<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
							<div class="contact-form mt-60">
					
						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		
	<!-- / NEWS MODAL CONTENT -->
		</div>
	</div>
	<!-- / NEWS MODAL -->
	
	
	
	
	
	




	<div class="container">
		<div class="row">
			<!-- pagenation -->
			<div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
				<div class="category-pagination text-center"></div>
			</div>
		</div>
	</div>


	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script
		src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>


	<!-- 주소검색 -->
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(37.537187, 127.005476),
			map : map
		});

		function DaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = data.address; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수

							// 기본 주소가 도로명 타입일때 조합한다.
							if (data.addressType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 주소 정보를 해당 필드에 넣는다.
							document.getElementById("restaurantAddr").value = fullAddr;

							// 주소로 좌표를 검색
							geocoder
									.addr2coord(
											data.address,
											function(status, result) {
												// 정상적으로 검색이 완료됐으면
												if (status === daum.maps.services.Status.OK) {
													// 해당 주소에 대한 좌표를 받아서
													var coords = new daum.maps.LatLng(
															result.addr[0].lat,
															result.addr[0].lng);
													// 지도를 보여준다.
													mapContainer.style.display = "block";
													map.relayout();
													// 지도 중심을 변경한다.
													map.setCenter(coords);
													// 마커를 결과값으로 받은 위치로 옮긴다.
													marker.setPosition(coords)
													// 좌표 정보를 해당 필드에 넣는다.
													document
															.getElementById("restaurantCoordinates").value = coords;

												}
											});
						}
					}).open();
		}
	</script>

	<script type="text/javascript">
		var upload = document.getElementById('upload'), holder = document
				.getElementById('holder');

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[0], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.width = 738;
				img.height = 400;
				img.src = event.target.result;
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		};
	</script>

	<script type="text/javascript">
		var upload = document.getElementById('upload'), holder = document
				.getElementById('holder');

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[0], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.width = 738;
				img.height = 400;
				img.src = event.target.result;
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		};
	</script>


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