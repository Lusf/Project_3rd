<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
</head>
<body>

	<header class="header header-fixed nav-down">
		<div class="box mb-0">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<a href="#" class="header-logo-small mt-15"><img
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
						<li class="header-link"><a href="#">메뉴1</a></li>
						<li class="header-link"><a href="#">메뉴2</a></li>
						<li class="header-link"><a href="#">메뉴3</a></li>
						<li class="header-link"><a href="#">메뉴4</a></li>
						<li class="header-link"><a href="#">메뉴5</a></li>
						<li class="header-link"><a href="#">메뉴6</a></li>
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
										<li class="dropdown-header">Excepteur s cupidatat</li>
										<li><a href="#">lorem ipsum dolor </a></li>
										<li><a href="#">laboris nisi ut aliquip</a></li>
										<li><a href="#">int occaecat</a></li>
										<li><a href="#">Newsletter Form</a></li>
										<li><a href="#">fugiat nulla pariatur</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Reprehenderit</li>
										<li><a href="#">ullamco ex ea commodo</a></li>
										<li><a href="#">incididunt ut labore </a></li>
										<li><a href="#">fugiat nulla pariatur</a></li>
									</ul>
								</li>

								<li class="col-sm-3 col-xs-6 smartphone-fw">
									<ul>
										<li class="dropdown-header">Culpa qui officia deserunt</li>
										<li><a href="#">laboris nisi ut aliquip</a></li>
										<li><a href="#">int occaecat</a></li>
										<li><a href="#">nostrud exercitation </a></li>
										<li><a href="#">fugiat nulla pariatur</a></li>
										<li class="divider"></li>

										<li class="dropdown-header">Consectetur adipisicing</li>
										<li><a href="#">enim ad minim veniam</a></li>
										<li><a href="#">dolore magna aliqua</a></li>
										<li><a href="#"> aute irure dolor</a></li>
									</ul>
								</li>

								<li class="col-sm-3 col-xs-6 smartphone-fw">
									<ul>
										<li class="dropdown-header">Aute irure dolor</li>
										<li><a href="#">mollit anim id est</a></li>
										<li><a href="#">enim ad minim veniam</a></li>
										<li><a href="#">dolore magna aliqua</a></li>
										<li class="divider"></li>
									</ul>
								</li>
							</ul></li>

					</ul>

					<div class="navbar-buttons">
						<a class="btn btn-link btn-sm mt-10">your account</a> <a
							class="btn btn-primary btn-sm mt-10"><span class="ti-plus"></span>place
							a free ad</a>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<section class="home">
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card1Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card1.recommadationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp">browse <span
						class="ti-arrow-right light"></span></a>
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card2Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card2.recommadationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp">browse <span
						class="ti-arrow-right light"></span></a>
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card3Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card3.recommadationTitle }</h1>
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
							<form class="form-inline" action="search.html">
								<div class="form-group col-md-2">
									<!-- 진하게 바꾸기 -->
									<select id="type2" class="selectpicker"
										data-live-search="false" title="전국">
										<!-- 진하게 바꾸기 -->
										<option>전국</option>
										<!-- 진하게 바꾸기 -->
										<option>서울</option>
										<!-- 진하게 바꾸기 -->
										<option>경기</option>
										<!-- 진하게 바꾸기 -->
										<option>인천</option>
										<!-- 진하게 바꾸기 -->
										<option>대전/충청/세종</option>
										<!-- 진하게 바꾸기 -->
										<option>부산/대구/경상</option>
										<!-- 진하게 바꾸기 -->
										<option>광주/전라</option>
										<!-- 진하게 바꾸기 -->
										<option>강원</option>
										<!-- 진하게 바꾸기 -->
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
								<div class="swiper-slide">
									<img src="${card4Thumbnail }" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card4view"><span class="h4 offer-box-title">${card4.recommadationTitle }</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-slide">
									<img src="${card5Thumbnail }" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card5view"><span class="h4 offer-box-title">${card5.recommadationTitle }</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-slide">
									<img src="${card6Thumbnail }" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card6view"> <span class="h4 offer-box-title">${card6.recommadationTitle }</span>
						</a>
					</div>
				</div>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>

	<div id="card4view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card4.recommadationTitle }</span> <span
							class="offer-box-location"><i class="material-icons">visibility</i>${card4.readNum }
							</span> <span class="offer-box-meta">${card4.recommandationDate}</span> 
							${card4.recommadationDescription }
							 <a class="close"
							data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="card5view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card5.recommadationTitle }</span> <span
							class="offer-box-location"><i class="material-icons">visibility</i>${card5.readNum }
							</span> <span class="offer-box-meta">${card5.recommandationDate}</span> 
							${card5.recommadationDescription }
							 <a class="close"
							data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="card6view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card6.recommadationTitle }</span> <span
							class="offer-box-location"><i class="material-icons">visibility</i>${card6.readNum }
							</span> <span class="offer-box-meta">${card6.recommandationDate}</span> 
							${card6.recommadationDescription }
							 <a class="close"
							data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / OFFER CONTACT FORM -->

	<section class="padding post-list" id="news">
		<div class="container">
			<h5 class="mt-0 mb-30">Latest Review</h5>
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/01.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a class="dark" href="#"> <span class="h6 mt-0">Post
							title</span> <span class="post-list-sidebar-item-description">최신
							리뷰1</span>
					</a>
				</div>
			</div>
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/02.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a class="dark" href="#"> <span class="h6 mt-0">Post
							title</span> <span class="post-list-sidebar-item-description">최신
							리뷰2</span>
					</a>
				</div>
			</div>
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/01.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a class="dark" href="#"> <span class="h6 mt-0">Post
							title</span> <span class="post-list-sidebar-item-description">최신
							리뷰3</span>
					</a>
				</div>
			</div>
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/02.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a class="dark" href="#"> <span class="h6 mt-0">Post
							title</span> <span class="post-list-sidebar-item-description">최신
							리뷰4</span>
					</a>
				</div>
			</div>
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/02.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a class="dark" href="#"> <span class="h6 mt-0">Post
							title</span> <span class="post-list-sidebar-item-description">최신
							리뷰5</span>
					</a>
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