<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Food-마시쪙</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>
<body>

	<header class="header header-fixed nav-down">
		<div class="box mb-0">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<a href="${pageContext.request.contextPath}/"
						class="header-logo-small mt-15"><img
						src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/logo.png"
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
						<li class="header-link"><a href="newdesign">home</a></li>
						<li class="header-link"><a href="about-us">메뉴1</a></li>
						<li class="header-link"><a href="blog-post">메뉴2</a></li>
						<li class="header-link"><a href="developer">메뉴3</a></li>
						<li class="header-link"><a href="landing">메뉴4</a></li>
						<li class="header-link"><a href="offer">메뉴6</a></li>
						<li class="header-link dropdown mega pull-left "><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">쓸까말까<span
								class="ti-angle-down"></span></a>
							<ul class="dropdown-menu mega-menu container">
								<li class="col-sm-3">
									<ul>
										<li><img class="img-responsive  col-lg-12 mb-15"
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/menu-add.png"
											alt="category image"> <img
											class="img-responsive col-lg-12"
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/menu-add.png"
											alt="category image"></li>
									</ul>
								</li>

								<li class="col-sm-3 col-xs-6 smartphone-fw">
									<ul>
										<li class="dropdown-header"><a
											href="${pageContext.request.contextPath}/user/mypage">My
												Page</a></li>
										<li class="dropdown-header"><sec:authorize
												access="isAuthenticated()">
												<a
													href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">Blog</a>
											</sec:authorize></li>
									</ul>
								</li>
							</ul></li>
					</ul>

					<div class="navbar-buttons">
						<sec:authorize access="isAuthenticated()">
							<p>
							<p>
								<sec:authentication property="principal.id" />
								님 환영합니다.
								<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
								<a href="javascript:logout();">로그아웃</a>
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
				location.href = "${pageContext.request.contextPath}/admin/index";
			</script>
		</sec:authorize>
	</header>

	<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="search">
								<div class="home-search-row col-md-12">
									<div class="home-search-group pt-30 pb-30">
										<div class="form-group col-md-2">
											<select id="type" class="selectpicker"
												data-live-search="false" title="전국">
												<option>전국</option>
												<option>서울</option>
												<option>경기</option>
												<option>인천</option>
												<option>대전/충청/세종</option>
												<option>부산/대구/경상</option>
												<option>광주/전라</option>
												<option>강원</option>
												<option>제주</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="for" class="selectpicker"
												data-live-search="false" title="음식 종류">
												<option>전체</option>
												<option>한식</option>
												<option>양식</option>
												<option>중식</option>
												<option>일식</option>
												<option>아시아식</option>
												<option>컨템퍼러리</option>
												<option>뷔페</option>
												<option>술집</option>
												<option>카페/베이커리</option>
												<option>구이</option>
											</select>
										</div>

										<div class="form-group col-md-6">
											<input type="text" class="form-control"
												placeholder="지역, 식당 또는 음식" />
										</div>

										<div class="form-group col-md-2">
											<button type="submit" class="btn btn-primary">
												search <span class="ti-angle-right"></span>
											</button>
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 sidebar">
					<div class="sidebar-box">
						<h5 class="mb-15">Region</h5>
						<ul>
							<li><a href="#"><span class="ti-angle-left"></span>United
									Kingdom</a></li>
							<li><a href="#"><span class="ti-angle-left"></span>England</a></li>
						</ul>

						<h6 class="mt-30 pl-30">London</h6>
						<ul class="pl-30">
							<li><a href="#">Central London <span>29 312</span></a></li>
							<li><a href="#">East London <span>32 768</span></a></li>
							<li><a href="#">North London <span>17 412</span></a></li>
							<li><a href="#">North West London <span>16 107</span></a></li>
							<li><a href="#">South East London <span>19 397</span></a></li>
							<li><a href="#">South West London <span>17 671</span></a></li>
							<li><a href="#">West London <span>11 134</span></a></li>
						</ul>
					</div>

					<div class="sidebar-box">
						<h5 class="mb-15">Property</h5>
						<ul>
							<li><a href="#">To Rent <span>50 826</span></a></li>
							<li><a href="#">To Share <span>34 084</span></a></li>
							<li><a href="#">For Sale <span>240</span></a></li>
							<li><a href="#">Land, Farms & Estates <span>13</span></a></li>
						</ul>
					</div>

					<div class="sidebar-box">
						<h5 class="mb-15">Filters</h5>
						<ul>
							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox1" class="styled" checked="" type="checkbox">
									<label for="checkbox1"> Urgent ads <span>34</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox2" class="styled" checked="" type="checkbox">
									<label for="checkbox2"> Feature ads <span>554</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox3" class="styled" type="checkbox"> <label
									for="checkbox3"> ads with pictures <span>3432</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox4" class="styled" type="checkbox"> <label
									for="checkbox4"> Exclusive <span>55</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox5" class="styled" type="checkbox"> <label
									for="checkbox5"> new only <span>263</span>
								</label>
							</span></li>
						</ul>
					</div>
				</div>

				<div class="col-md-9">
					<div class="col-md-12 pl-0 pr-0">
						<h4 class="heading "><b>맛집 정보</b></h4> 
					</div>
					
					<c:forEach items="${requestScope.listA}"  var="list">
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
							<div class="offer-box-head">
								<div class="offer-slider">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<%-- <img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/01.jpg" --%>
											<img src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" alt="offer image">
										</div>
									</div>

									<div class="offer-pagination-prev left-arrow">
										<span class="ti-angle-left"></span>
									</div>

									<div class="offer-pagination-next right-arrow">
										<span class="ti-angle-right"></span>
									</div>
								</div>
								<!-- <span class="offer-box-price">$350pw</span> --> 
								<!-- <span class="offer-box-label"><span class="ti-star"></span>featured</span> -->
							</div>
							<a href="#"> <span class="h4 offer-box-title">${list.restaurantName} </span> 
							<span class="offer-box-location">
							<span class="ti-location-pin">
							</span>${list.restaurantAddr}</span> 
							<!-- <span class="offer-box-meta">Nordman	Agency | 30 Nov 2016 | Flat | 2 Beds</span> -->
							</a> 
									<a href="#" class="btn btn-default" data-toggle="modal"data-target="#offer-01">상세 보기</a>  
									<a href="#" class="btn btn-link btn-sm ml-0 pull-right">
									<span 	class="ti-star"></span> to favorites</a>
						</div>
					</div>
					</c:forEach>
					<!-- / single offer box-->

					<!-- / single offer box-->
					<div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
						<div class="category-pagination text-center">
							<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!--/ col-md-9-->
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
		<!-- 모달시작 -->
		<!-- OFFER CONTACT FORM-->
		<div id="offer-01" class="modal fade services-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content shadow">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image"> 
										<%-- <img src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" alt="offer image"> --%>
									</div>
									<div class="swiper-slide">
										<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw	${listA.id}</span> 
							<span class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<div class="offer-content pl-30 pr-30">
							<span class="h4 offer-box-title">Spacious 1 Bed Flat near
								Bermondsey Sq. Lovely Period property</span> <span
								class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span> <a href="#"
								class="btn btn-link btn-sm pr-0 pull-right"><span
								class="ti-star"></span> to favorites</a> <a class="close"
								data-dismiss="modal"><span class="ti-close"></span></a>
							<div class="contact-form mt-60">
								<form>
									<div class="form-group">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="Name" required>
									</div>

									<div class="form-group">
										<input type="text" class="form-control" id="contact-email"
											name="contact-email" placeholder="Email" required>
									</div>

									<div class="form-group">
										<input type="text" class="form-control" id="mobile"
											name="mobile" placeholder="Mobile Number" required>
									</div>

									<div class="form-group">
										<textarea class="form-control" id="message"
											placeholder="Message" maxlength="140" rows="7"></textarea>
									</div>

									<button type="button" id="submit" name="submit"
										class="btn btn-primary btn-lg text-center float-right">Send</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / OFFER CONTACT FORM -->
	</section>

	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>
							Support: <span>+48 123 456 789</span>
						</p>
					</div>
					<div class="col-md-6">
						<ul class="footer-social pull-right">
							<li><a href="#" class="pull-left"><span
									class="ti-facebook"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-twitter"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-instagram"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-youtube"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 smartphone-fw">
					<address>
						<strong>Main office (HQ)</strong><br> consectetur adipisicing
						elit 122<br> CF 55678 USA <br> <br> Phone:
						+1-222-333-4444 <br> E-mail: office@apart.com
					</address>
				</div>
				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">ACCOUNT</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">INFORMATION</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">ACCOUNT</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

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