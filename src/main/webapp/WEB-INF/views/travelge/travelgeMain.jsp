<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Choco - micro store</title>
<meta content="" name="description">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="width=device-width" name="viewport">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<link
	href="${pageContext.request.contextPath}/resources/images/eating/favicon.png"
	rel="icon" type="image/png">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script%7CLato:300,400,700"
	rel="stylesheet">
<link href="<c:url value='/resources/css/eating/bootstrap-eating.css'/>"
	rel="stylesheet">
<link id="pagestyle"
	href="<c:url value='/resources/css/eating/theme-eating.css'/>"
	rel="stylesheet">
</head>

<body data-offset="50" data-spy="scroll" data-target=".navbar"
	class="dark-theme">

	<!-- header -->
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<!--  Main 슬라이더 부분 -->
	<section class="home section image-slider" id="home">
		<div class="home-slider text-center">


			<div class="swiper-wrapper">
				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/travelge/recommand/slider/recommand1.jpg);">
					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">${card1.recommadationTitle }</h2>
					<a class="arrow bounce text-center" href="#products"> <span
						class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
					</a>
				</div>

				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/travelge/recommand/slider/recommand2.jpg);">
					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">${card2.recommadationTitle }</h2>
					<a class="arrow bounce text-center" href="#about"> <span
						class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
					</a>
				</div>

				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/travelge/recommand/slider/recommand3.jpg);">
					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">${card3.recommadationTitle }</h2>
					<a class="arrow bounce text-center" href="#about"> <span
						class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
					</a>
				</div>

			</div>
			<div class="home-pagination"></div>
			<div class="home-slider-next right-arrow-negative">
				<span class="ti-arrow-right"></span>
			</div>
			<div class="home-slider-prev left-arrow-negative">
				<span class="ti-arrow-left"></span>
			</div>
		</div>
	</section>



	<section class="countdown" id="special">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">여름에 가볼 만한 곳</h3>
				</div>

				<div class="col-md-5">
					<ul class="product-list product-list-vertical">
						<li class="wow fadeInUp" data-wow-delay=".2s"><span
							class="product-list-left pull-left"> <a href="#"
								data-target="#product-01" data-toggle="modal"> <img
									alt="product image" class="product-list-primary-img"
									src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
									<img alt="product image" class="product-list-secondary-img"
									src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
							</a>
						</span></li>
					</ul>
				</div>

				<div class="col-md-7 text-center">
					<div class="countdown-container">
						<h3 class="wow fadeInDown">${card4.recommadationTitle }</h3>

						<p class="wow fadeInDown">${card4.recommadationDescription }</p>

					</div>
				</div>


			</div>
		</div>
	</section>
	<section class="countdown" id="special">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">아이들과 주말 나들이</h3>
				</div>

				<div class="col-md-5">
					<ul class="product-list product-list-vertical">
						<li class="wow fadeInUp" data-wow-delay=".2s"><span
							class="product-list-left pull-left"> <a href="#"
								data-target="#product-01" data-toggle="modal"> <img
									alt="product image" class="product-list-primary-img"
									src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
									<img alt="product image" class="product-list-secondary-img"
									src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
							</a>
						</span></li>
					</ul>
				</div>

				<div class="col-md-7 text-center">
					<div class="countdown-container">
						<h3 class="wow fadeInDown">${card5.recommadationTitle }</h3>

						<p class="wow fadeInDown">${card5.recommadationDescription }</p>

					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="countdown" id="special">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">연인과 함께</h3>
				</div>

				<div class="col-md-5">
					<ul class="product-list product-list-vertical">
						<li class="wow fadeInUp" data-wow-delay=".2s"><span
							class="product-list-left pull-left"> <a href="#"
								data-target="#product-01" data-toggle="modal"> <img
									class="product-list-primary-img"
									src="${card6Thumbnail }">
									<img alt="product image" class="product-list-secondary-img"
									src="${card6Thumbnail }">
							</a>
						</span></li>
					</ul>
				</div>

				<div class="col-md-7 text-center">
					<div class="countdown-container">
						<h3 class="wow fadeInDown">${card6.recommadationTitle }</h3>

						<p class="wow fadeInDown">${card6.recommadationDescription }</p>

					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- PRODUCT MODAL -->
	<div class="modal fade product-modal" id="product-01" role="dialog"
		tabindex="-1">
		<div class="modal-dialog">

			<!-- MODAL CONTENT -->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>
				<div class="modal-body">
					<%@include file="/WEB-INF/views/travelge/singlePage.jsp"%>
				</div>
			</div>
			<!-- / MODAL CONTENT -->
		</div>
	</div>


	<section class="timeline" id="history">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">리뷰</h3>
					<div id="timeline" class="timeline-container">
						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-1">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInLeft">
								<span class="timeline-date"> <span class="timeline-month">May</span>
									<span class="timeline-year">2016</span>
								</span>
								<h2>Envelope title</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-2">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInRight">
								<span class="timeline-date"> <span class="timeline-month">March</span>
									<span class="timeline-year">2016</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-3">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInLeft">
								<span class="timeline-date"> <span class="timeline-month">July</span>
									<span class="timeline-year">2015</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-4">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInRight">
								<span class="timeline-date"> <span class="timeline-month">May</span>
									<span class="timeline-year">2009</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-5">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInLeft">
								<span class="timeline-date"> <span class="timeline-month">August</span>
									<span class="timeline-year">2008</span>
								</span>
								<h2>Envelope title</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-6">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInRight">
								<span class="timeline-date"> <span class="timeline-month">October</span>
									<span class="timeline-year">2006</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-7">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInLeft">
								<span class="timeline-date"> <span class="timeline-month">December</span>
									<span class="timeline-year">2004</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
						<!-- / TIMELINE ITEM -->

						<!-- TIMELINE ITEM -->
						<div class="timeline-block timeline-block-image-8">
							<div class="timeline-point"></div>

							<div class="timeline-content wow fadeInRight">
								<span class="timeline-date"> <span class="timeline-month">May</span>
									<span class="timeline-year">2000</span>
								</span>
								<h2>Lecce, Magnificat Lupiae</h2>
								<p>Lorem ipsm dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
					</div>
					<!-- / TIMELINE ITEM -->
				</div>
			</div>
		</div>
	</section>


	<script src="<c:url value='/resources/js/eating/vendor/wow.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/jquery-1.11.2.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/swiper.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/jquery.countTo.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/jquery.inview.js'/>"></script>
	<script
		src="<c:url value='/resources/js/eating/vendor/jquery.countdown.js'/>"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_6m6Glf1-P7jvVdHZ00e3Ue_EoUNe39g"></script>
	<script src="<c:url value='/resources/js/eating/tt-cart.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/main.js'/>"></script>

	<%@ include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>