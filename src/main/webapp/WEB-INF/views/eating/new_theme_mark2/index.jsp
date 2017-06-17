<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/강민경.jpg)">
					<h1 class="light wow fadeInDown mb-30">
						over 430 000<br /> flats, houses, plots
					</h1>
					<a class="btn btn-primary wow fadeInUp">browse</a>
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/slider/slide5.jpg)">
					<h1 class="light wow fadeInDown mb-30">
						over 430 000<br /> flats, houses, plots
					</h1>
					<a class="btn btn-primary wow fadeInUp">browse <span
						class="ti-arrow-right light"></span></a>
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
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="search">
								<div class="form-group col-md-2">
									<select id="type2" class="selectpicker"
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
									<select id="type" class="selectpicker" data-live-search="false"
										title="음식 종류">
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
				<div class="col-md-12">
					<h4 class="heading">Featured adds</h4>
				</div>
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/02.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg"
											alt="offer image">
									</div>
									<div class="swiper-slide">
										<img
											src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/11.jpg"
											alt="offer image">
									</div>
								</div>

								<div class="offer-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="offer-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
							<span class="offer-box-price">$350pw</span> <span
								class="offer-box-label"><span class="ti-star"></span>featured</span>
						</div>
						<a href="#"> <span class="h4 offer-box-title">Spacious
								1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
							class="offer-box-location"><span class="ti-location-pin"></span>Tower
								Bridge, London </span> <span class="offer-box-meta">Nordman
								Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<div class="col-md-12 text-center">
					<a class="btn btn-default" href="#">view all <span
						class="ti-angle-right"></span></a>
				</div>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>


	<div class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" role="tablist">
						<li class="active"><a href="#rooms" data-toggle="tab">rooms</a></li>
						<li class=""><a href="#flats" data-toggle="tab">flats</a></li>
						<li class=""><a href="#houses" data-toggle="tab">houses</a></li>
					</ul>
					<div class="tab-content relative">
						<div role="tabpanel" class="tab-pane fade in active" id="rooms">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>
								</div>
								<div class="rooms-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="rooms-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
								<!-- Add Pagination -->
								<div class="rooms-pagination text-center"></div>
							</div>
						</div>

						<div role="tabpanel" class="tab-pane fade" id="flats">
							<div class="flats-slider overflow-hidden">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

								</div>
								<div class="flats-pagination text-center"></div>
								<div class="flats-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="flats-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
							</div>
						</div>

						<div role="tabpanel" class="tab-pane fade" id="houses">
							<div class="houses-slider overflow-hidden">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/01.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/02.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>

									<div class="swiper-slide">
										<!-- single offer box-->
										<div class="offer-box">
											<div class="offer-box-head">
												<img
													src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg"
													alt="offer image"> <span class="offer-box-price">$350pw</span>
												<span class="offer-box-label"><span class="ti-star"></span>featured</span>
											</div>
											<a href="#"> <span class="h4 offer-box-title">Spacious
													1 Bed Flat near Bermondsey Sq. Lovely Period property</span> <span
												class="offer-box-location"><span
													class="ti-location-pin"></span>Tower Bridge, London </span> <span
												class="offer-box-meta">Nordman Agency | 30 Nov 2016 |
													Flat | 2 Beds</span>
											</a>
										</div>
										<!-- / single offer box-->
									</div>
								</div>
								<div class="houses-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="houses-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
								<div class="houses-pagination text-center"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</div>
	<section class="text-center padding light-bg">
		<div class="about-counter" id="about-counter">

			<div class="container">
				<div class="row">
					<div class="col-md-3 wow fadeInLeft about-counter-single"
						data-wow-delay="0.2s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-crown icon"></span>
							<h2 class="timer">250</h2>
							<p>Projects Finished</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInLeft about-counter-single"
						data-wow-delay="0.3s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-shortcode icon"></span>
							<h2 class="timer">28256</h2>
							<p>Line Of Coding</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInLeft about-counter-single"
						data-wow-delay="0.4s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-cup icon"></span>
							<h2 class="timer">42</h2>
							<p>Award Won</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInLeft" data-wow-delay="0.5s"
						data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-comments-smiley icon"></span>
							<h2 class="timer">240</h2>
							<p>Satisfied Clients</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="padding post-list" id="news">
		<div class="container overflow-hidden">
			<div class="row">
				<div class="col-md-12">
					<h4 class="heading">Latest post</h4>
				</div>
				<div class="post-slider col-md-12">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#"> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg);">
								</span>
								</a> <a class="h4 white-color" href="#">Estibulum ante ipsum
									primis lobortis</a> <a href="#" class="post-entry-more">read
									more <span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
					</div>
					<div class="post-pagination text-center"></div>
					<div class="post-slider-next right-arrow">
						<span class="ti-angle-right"></span>
					</div>
					<div class="post-slider-prev left-arrow">
						<span class="ti-angle-left"></span>
					</div>
				</div>
			</div>
		</div>
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
						elit 122<br> CF 55678 USA <br>
						<br> Phone: +1-222-333-4444 <br> E-mail:
						office@apart.com
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