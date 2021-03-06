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

	<!-- 상단 HEADER -->
	<%-- <nav class="navbar navbar-fixed-top shadow" id="js-nav">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-target="#myNavbar" data-toggle="collapse" type="button">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				
				<a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" alt="logo"> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#home">home</a></li>
					<li><a href="#hot_deal">hot deal</a></li>
					<li><a href="#about">about us</a></li>
					<li><a href="#special">special</a></li>
					<li><a href="#review">review</a></li>
					<li><a href="#list">on air</a></li>
					<li><a href="#history">history</a></li>
					<li><a href="#contact">contact</a></li>
				</ul>
			</div>
		</div>
	</nav> --%>

	<!--  Main 슬라이더 부분 -->
	<section class="home section image-slider" id="home">
		<div class="home-slider text-center">
			<div class="swiper-wrapper">
				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main1.jpg);">

<!-- 검색 -->		<div class="box">
						<form class="form-inline" action="search.html">
							<div class="form-group col-md-2">
								<select id="type2" class="selectpicker" data-live-search="false"
									title="All ...">
									<option>all</option>
									<option>flats</option>
									<option>apartments</option>
									<option>houses</option>
									<option>semi-detached houses</option>
									<option>detached houses</option>
									<option>bungalows</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<select id="type" class="selectpicker" data-live-search="false"
									title="For sale">
									<option>for sale</option>
									<option>for rent</option>
								</select>
							</div>

							<div class="form-group col-md-6">
								<input type="text" class="form-control"
									placeholder="e.g state, discrit, country " />
							</div>

							<div class="form-group col-md-2">
								<button type="submit" class="btn btn-primary">
									search <span class="ti-angle-right"></span>
								</button>
							</div>
						</form>
					</div>

					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 1</h2>
					<div class="home-buttons text-center">
						<a href="#products" class="btn btn-lg  btn-primary">our
							products</a>
					</div>
					<a class="arrow bounce text-center" href="#products"> <span
						class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
					</a>
				</div>

				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main2.jpg);">
					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 2</h2>
					<div class="home-buttons text-center">
						<a href="#products" class="btn btn-lg  btn-primary">our
							products</a>
					</div>
					<a class="arrow bounce text-center" href="#about"> <span
						class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
					</a>
				</div>

				<div class="swiper-slide"
					style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/slide1.jpg);">
					<img
						src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
						alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 3</h2>
					<div class="home-buttons text-center">
						<a href="#products" class="btn btn-lg  btn-primary">our
							products</a>
					</div>
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

	<!-- INTERAVTIVE CART ITEM COUNTER -->
	<span id="items-counter" class="h3 cart-items-counter"
		style="display: none">0</span>
	<!-- / INTERAVTIVE CART ITEM COUNTER -->

	<!-- CART WIDGET -->
	<div class="cart-widget-container">
		<div class="cart-widget text-center">
			<a class="close" id="cart-widget-close"> <span class="ti-close"></span>
			</a> <img class="cart-logo"
				src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
				width="200" alt="store logo">
			<h3 class="section-heading">Your cart</h3>
			<!-- EMPTY CART MESSAGE -->
			<div id="cart-empty" class="cart-empty">
				<h4>
					is empty <span class="ti-face-sad icon"></span>
				</h4>
			</div>
			<!-- / EMPTY CART MESSAGE -->

			<!-- CONTAINER FOR JS INJECT CART ITEMS, DON'T CHANGE ID AND CLASS -->
			<div class="items-container" id="items"></div>
			<!-- / CONTAINER FOR JS INJECT CART ITEMS, DON'T CHANGE ID AND CLASS -->

			<!-- CART DELIVERY OPTIONS -->
			<div class="cart-delivery" id="cart-delivery">
				<h4 class="section-heading">Delivery option</h4>
				<div class="custom-radio">
					<input id="radio1" type="radio" name="delivery" value="10.00"
						checked> <label for="radio1">domestic delivery
						($10)</label>
				</div>

				<div class="custom-radio">
					<input id="radio2" type="radio" name="delivery" value="15.00">
					<label for="radio2">express domestic delivery ($15) </label>
				</div>

				<div class="custom-radio">
					<input id="radio3" type="radio" name="delivery" value="20.00">
					<label for="radio3">worldwide delivery ($20)</label>
				</div>
			</div>
			<!-- / CART DELIVERY OPTIONS -->

			<!-- CART SUMMARY CALCULATION -->
			<div class="cart-summary" id="cart-summary">
				<h4 class="section-heading">Summary</h4>
				<div class="cart-summary-row" id="cart-total">
					Total products <span class="cart-value">$<span
						id="cost_value">0.00</span></span>
				</div>
				<div class="cart-summary-row">
					Shipping <span class="cart-value">$<span id="cost_delivery"></span></span>
				</div>
				<div class="cart-summary-row cart-summary-row-total">
					Total <span class="cart-value">$<span id="total-total"></span></span>
				</div>
			</div>
			<!-- / CART SUMMARY CALCULATION -->

			<!-- HIDDEN PAYPAL FORM -->
			<form action="https://www.paypal.com/cgi-bin/webscr" method="post"
				class="cart-form" id="cart-form">
				<!-- Identify your business so that you can collect the payments. -->
				<input type="hidden" name="business" value="yourpaypal@email.com">
				<!-- Specify a Buy Now button. -->
				<input type="hidden" name="cmd" value="_xclick">
				<!-- Specify details about the item that buyers will purchase. -->
				<input type="hidden" name="item_name" value="Choco - checkout">
				<input type="hidden" name="amount" id="amount" value=""> <input
					type="hidden" name="currency_code" value="USD">
				<!-- Display the payment button. -->
				<button type="submit" name="submit" class="btn btn-default btn-lg">
					pay pal checkout <span class="ti-arrow-right"></span>
				</button>
			</form>
			<!-- / HIDDEN PAYPAL FORM -->
		</div>
		<div class="cart-widget-close-overlay"></div>
	</div>
	<!-- / CART WIDGET -->


	<section class="section-min section product" id="hot_deal">
		<div class="container overflow-hidden">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">핫딜</h3>
				</div>
				<div class="col-md-12">
					<div class="product-list-slider">
						<ul class="swiper-wrapper product-list product-list-vertical">

							<!-- 핫딜 상품 1 -->
							<li class="swiper-slide wow fadeInUp text-center"
								data-wow-delay=".2s"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/productBG2.jpg">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">드라이 에이징 스테이크</span> <span
										class="product-list-price">￦40,000원</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire" data-cost="400.00" data-id="1">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- /핫딜 상품 1 -->

							<!-- 핫딜 상품 2 -->
							<li class="swiper-slide wow fadeInUp text-center"
								data-wow-delay=".4s"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/productBG2.jpg">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">티본 스테이크</span> <span
										class="product-list-price">￦30,000</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire" data-cost="300.00" data-id="2">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- /핫딜 상품 2 -->

							<!-- 핫딜 상품 3 -->
							<li class="swiper-slide wow fadeInUp text-center"
								data-wow-delay=".6s"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/hotdeal3.jpg">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/목차.jpg">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">스끼야끼</span> <span
										class="product-list-price">60,000원</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire no. 2" data-cost="600.00"
									data-id="3">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- / 핫딜 상품 3 -->

							<!-- 핫딜 상품 4 -->
							<li class="swiper-slide wow fadeInUp text-center"
								data-wow-delay=".8s"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/목차.jpg">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">Chocolate desire no. 2</span> <span
										class="product-list-price">￦500.00</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire no. 2" data-cost="500.00"
									data-id="4">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- / 핫딜 상품 4 -->

							<!-- 핫딜 상품 5 -->
							<li class="swiper-slide text-center"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">Chocolate desire no. 3</span> <span
										class="product-list-price">￦600.00</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire no. 3" data-cost="600.00"
									data-id="5">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- / 핫딜 상품 5 -->

							<!-- 핫딜 상품 6 -->
							<li class="swiper-slide text-center"><span
								class="product-list-left pull-left"> <a href="#"
									data-target="#product-01" data-toggle="modal"> <!-- 평상시 상태 -->
										<img alt="product image" class="product-list-primary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
										<!-- 마우스 올렸을 때 -->
										<img alt="product image" class="product-list-secondary-img"
										src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
								</a>
							</span> <a href="#" data-target="#product-01" data-toggle="modal"> <span
									class="product-list-right pull-left"> <span
										class="product-list-name h3">Chocolate desire no. 3</span> <span
										class="product-list-price">￦500.00</span>
								</span>
							</a>

								<button type="button" class="btn btn-default add-item"
									data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
									data-name="Chocolate desire no. 3" data-cost="500.00"
									data-id="6">
									<span class="ti-shopping-cart"></span>add to cart
								</button></li>
							<!-- / 핫딜 상품 6 -->
						</ul>

						<!-- CAROUSEL CONTROLS -->
						<div class="product-list-pagination text-center"></div>
						<div class="product-list-slider-next right-arrow-negative">
							<span class="ti-arrow-right"></span>
						</div>

						<div class="product-list-slider-prev left-arrow-negative">
							<span class="ti-arrow-left"></span>
						</div>
						<!-- CAROUSEL CONTROLS -->
					</div>
				</div>
			</div>
			<!-- PRODUCT MODAL -->
			<div class="modal fade product-modal" id="product-01" role="dialog"
				tabindex="-1">
				<div class="modal-dialog">

					<!-- MODAL CONTENT -->
					<div class="modal-content shadow">
						<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>
						<div class="modal-body">
							<!-- Wrapper for slides -->
							<div class="carousel slide product-slide" id="product-carousel">
								<!-- CAROSUEL SLIDER -->
								<div class="carousel-inner cont-slider">
									<div class="item active">
										<img alt=""
											src="${pageContext.request.contextPath}/resources/images/eating/product3.png"
											title="">
									</div>
									<div class="item">
										<img alt=""
											src="${pageContext.request.contextPath}/resources/images/eating/product4.png"
											title="">
									</div>
									<div class="item">
										<img alt=""
											src="${pageContext.request.contextPath}/resources/images/eating/product3.png"
											title="">
									</div>
									<div class="item">
										<img alt=""
											src="${pageContext.request.contextPath}/resources/images/eating/product4.png"
											title="">
									</div>
								</div>
								<!-- / CAROSUEL SLIDER -->

								<!-- CAROUSEL INDICATORS -->
								<ol class="carousel-indicators">
									<li class="active" data-slide-to="0"
										data-target="#product-carousel"><img alt=""
										src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
									</li>

									<li class="" data-slide-to="1" data-target="#product-carousel">
										<img alt=""
										src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
									</li>

									<li class="" data-slide-to="2" data-target="#product-carousel">
										<img alt=""
										src="${pageContext.request.contextPath}/resources/images/eating/product3.png">
									</li>

									<li class="" data-slide-to="3" data-target="#product-carousel">
										<img alt=""
										src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
									</li>
								</ol>
								<!-- / CAROUSEL INDICATORS -->
							</div>

							<!-- PRODUCT DESCRIPTION -->
							<div class="container">
								<div class="row">
									<div class="col-md-8 col-md-push-2">
										<div class="row">
											<div class="col-md-12 product-modal-header">
												<h3 class="pull-left product-modal-title">Chocolate
													desire</h3>

												<span class="product-action-section"> <span
													class="price">$299.00</span>
													<button type="button" class="btn btn-default add-item"
														data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
														data-name="Chocolate desire" data-cost="299.00"
														data-id="8">
														<span class="ti-shopping-cart"></span>add to cart
													</button>
												</span>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-8 col-md-push-2 product-description">
										<h4 class="section-heading">Ut enim ad minim veniam</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam,</p>

										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in
											voluptate velit esse cillum dolore eu fugiat nulla pariatur.
											Excepteur sint occaecat cupidatat non proident, sunt in culpa
											qui officia deserunt mollit anim id est laborum. Lorem ipsum
											dolor sit amet, consectetur adipisicing elit, sed do eiusmod
											tempor incididunt ut labore et dolore magna aliqua. Ut enim
											ad minim veniam,</p>

										<div class="row">
											<div class="col-md-6">
												<img
													src="${pageContext.request.contextPath}/resources/images/eating/product3.png"
													class="img-responsive" alt="product image">
											</div>

											<div class="col-md-6">
												<h4 class="section-heading">Ut enim ad minim veniam</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in reprehenderit in
													voluptate velit esse cillum dolore eu fugiat nulla
													pariatur.</p>
											</div>
										</div>

										<div class="product-tabs">
											<ul class="nav nav-tabs">
												<li class="active"><a data-toggle="tab" href="#tab1">Details</a></li>
												<li><a data-toggle="tab" href="#tab2">Info tab</a></li>
												<li><a data-toggle="tab" href="#tab3">Other info </a></li>
											</ul>

											<div class="tab-content">
												<div id="tab1" class="tab-pane fade in active">
													<h4 class="section-heading">details</h4>

													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
												</div>

												<div id="tab2" class="tab-pane fade">
													<h4 class="section-heading">Info tab</h4>

													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
												</div>

												<div id="tab3" class="tab-pane fade">
													<h4 class="section-heading">other info</h4>

													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- / PRODUCT DESCRIPTION -->
						</div>
					</div>
					<!-- / MODAL CONTENT -->
				</div>
			</div>
		</div>
	</section>

	<section class="container-fluid about white-color no-padding"
		id="about">
		<div class="about-background about-background-1 row no-margin">
			<div class="col-md-6 about-black-box">
				<h3 class="section-heading">Cocoa!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>
				<a href="#" class="btn btn-default">click top</a>
			</div>
			<div class="col-md-6"></div>
		</div>

		<div class="about-background about-background-2 row no-margin">
			<div class="col-md-4 about-white-box col-md-offset-4">
				<h2 class="section-claim wow fadeInDown" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
					the best quality <span>cocoa bean</span>
				</h2>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>

				<a href="#" class="btn btn-default">click action</a>
			</div>
			<div class="col-md-4"></div>
		</div>

		<div class="about-background about-background-3 row no-margin">
			<div class="col-md-6 about-black-box col-md-offset-6">
				<h3 class="section-heading">Special!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>

				<a href="#" class="btn btn-default">click action</a>
			</div>
		</div>
	</section>

	<section class="countdown" id="special">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">special!</h3>
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
						<h3 class="wow fadeInDown">Chocolate desire</h3>

						<p class="wow fadeInDown">Lorem ipsum dolor sit amet,
							consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore et dolore magna aliqua. Ut enim ad minim veniam, quis
							nostrud exercitation ullamco laboris nisi ut aliquip ex ea
							commodo consequat.</p>

						<!-- DATA COUNDOWN INJECTED BY JS -->
						<ul id="countdown" class="countdown-counter wow fadeInUp"></ul>
						<!-- / DATA COUNDOWN INJECTED BY JS -->

						<span class="countdown-price h3 wow fadeInUp">$420.00</span>
						<button type="button" class="btn btn-default add-item wow swing"
							data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png"
							data-name="Chocolate desire [promo]" data-cost="420.00"
							data-id="9">
							<span class="ti-shopping-cart"></span>add to cart
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="review" id="review">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">리뷰</h3>
				</div>

				<div class="col-md-12 testimonials-slider text-center">
					<!-- CAROUSEL WRAPPER -->
					<div class="swiper-wrapper">

						<!-- SINGLE TESTIMONIALS ITEM -->
						<div class="swiper-slide">
							<div class="testimonials-container shadow">
								<img alt="user avatar" class="wow fadeInUp"
									src="${pageContext.request.contextPath}/resources/images/eating/user.png">
								<h3 class="wow fadeInUp" data-wow-delay=".4s">
									Martin Johe, Co-Founder / CEO <span>Fastcompany ltd.</span>
								</h3>
								<p class="wow fadeInUp" data-wow-delay=".6s">Lorem ipsum
									dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
									minim veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat.</p>
							</div>
						</div>
						<!-- / SINGLE TESTIMONIALS ITEM-->

						<!-- SINGLE TESTIMONIALS ITEM -->
						<div class="swiper-slide">
							<div class="testimonials-container shadow">
								<img alt="user avatar" class="wow fadeInUp"
									src="${pageContext.request.contextPath}/resources/images/eating/user.png">
								<h3 class="wow fadeInUp" data-wow-delay=".4s">
									Martin Johe, Co-Founder / CEO <span>Fastcompany ltd.</span>
								</h3>
								<p class="wow fadeInUp" data-wow-delay=".6s">Lorem ipsum
									dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
									minim veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat.</p>
							</div>
						</div>
						<!-- / SINGLE TESTIMONIALS ITEM-->

						<!-- SINGLE TESTIMONIALS ITEM -->
						<div class="swiper-slide">
							<div class="testimonials-container shadow">
								<img alt="user avatar" class="wow fadeInUp"
									src="${pageContext.request.contextPath}/resources/images/eating/user.png">
								<h3 class="wow fadeInUp" data-wow-delay=".4s">
									Martin Johe, Co-Founder / CEO <span>Fastcompany ltd.</span>
								</h3>
								<p class="wow fadeInUp" data-wow-delay=".6s">Lorem ipsum
									dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
									minim veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat.</p>
							</div>
						</div>
						<!-- / SINGLE TESTIMONIALS ITEM-->
					</div>
					<!-- / CAROUSEL WRAPPER -->

					<!-- CAROUSEL CONTROLS -->
					<div class="testimonials-pagination"></div>
					<div class="testimonials-slider-next right-arrow-negative">
						<span class="ti-arrow-right"></span>
					</div>
					<div class="testimonials-slider-prev left-arrow-negative">
						<span class="ti-arrow-left"></span>
					</div>
					<!-- / CAROUSEL CONTROLS -->
				</div>
			</div>
		</div>
	</section>

	<section class="text-center shadow section section-min">
		<div class="about-counter" id="about-counter">
			<div>
				<span class="btn btn-default"></span>
				<div class="container">
					<div class="row">
						<div class="addBtn">
							<!-- SINGLE COUNTER ITEM -->
							<div class="col-md-3 wow fadeInLeft about-counter-single"
								data-wow-delay="0.2s" data-wow-duration="1s" data-wow-offset="0">
								<div class="counter">
									<span class="ti-crown icon"></span>
									<h2 class="timer">250</h2>
									<p>Projects Finished</p>
								</div>
							</div>
						</div>
					</div>
					<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft about-counter-single"
						data-wow-delay="0.3s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-shortcode icon"></span>
							<h2 class="timer">28256</h2>
							<p>Line Of Coding</p>
						</div>
					</div>
					<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft about-counter-single"
						data-wow-delay="0.4s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-cup icon"></span>
							<h2 class="timer">42</h2>
							<p>Award Won</p>
						</div>
					</div>
					<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft" data-wow-delay="0.5s"
						data-wow-duration="1s" data-wow-offset="0">
						<div class="counter">
							<span class="ti-comments-smiley icon"></span>
							<h2 class="timer">240</h2>
							<p>Satisfied Clients</p>
						</div>
					</div>
				</div>
				<!-- / SINGLE COUNTER ITEM -->
			</div>
		</div>
	</section>

	<section class="onair-list" id="list">
		<div class="container overflow-hidden">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">방송 리스트</h3>
				</div>

				<div class="post-slider col-md-12">
					<!-- NEWS CAROSUEL -->
					<div class="swiper-wrapper">
						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#new"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#new"> 철구 먹방 </a>
									<a href="#"data-toggle="modal" data-target="#new"
									class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#post-01"> 맛있는 녀석들 </a> <a href="#"
									data-toggle="modal" data-target="#post-01"
									class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#post-01"> 삼대천왕 </a> <a href="#"
									data-toggle="modal" data-target="#post-01"
									class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#post-01"> 갓형욱 </a> <a href="#"
									data-toggle="modal" data-target="#post-01"
									class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#post-01"> Estibulum ante ipsum primis
									lobortis </a> <a href="#" data-toggle="modal"
									data-target="#post-01" class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01"> <span
									class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
								</span>
								</a> <a class="h3" href="#" data-toggle="modal"
									data-target="#post-01"> Estibulum ante ipsum primis
									lobortis </a> <a href="#" data-toggle="modal"
									data-target="#post-01" class="post-entry-more"> read more <span
									class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->
					</div>
					<!-- / NEWS CAROSUEL -->

					<!-- CAROUSEL CONTROLS -->
					<div class="post-pagination text-center"></div>
					<div class="post-slider-next right-arrow-negative">
						<span class="ti-arrow-right"></span>
					</div>

					<div class="post-slider-prev left-arrow-negative">
						<span class="ti-arrow-left"></span>
					</div>
					<!-- / CAROUSEL CONTROLS -->
				</div>
			</div>

			<!-- NEWS MODAL -->
			<div class="modal fade" id="new" role="dialog" tabindex="-1">
				<div class="modal-dialog">
					<!-- NEWS MODAL CONTENT -->
					<div class="modal-content shadow">
						<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>

						<div class="modal-body">
							<div class="post-entry post-entry-modal">
								<h3 class="section-heading">Duis aute irure dolor in
									reprehenderit in voluptate.</h3>

								<span class="post-entry-meta"> <img alt="user avatar"
									class="post-entry-author pull-left"
									src="${pageContext.request.contextPath}/resources/images/eating/user.png">
									<span class="post-entry-author-name pull-left">Alex
										Example</span> <span class="post-entry-time pull-right">6 min
										read <span class="post-entry-category">interior,
											furnitures</span>
								</span>
								</span> <span class="post-entry-cover"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);"></span>

								<p>
									<font face="궁서체">안녕하세요</font>
								</p>

								<p>
									<font face="궁서체">치킨을 먹어보겠슴다. </font>
								</p>


								<p>quis nostrud exercitation ullamco laboris nisi ut aliquip
									ex ea commodo consequat. Duis aute irure dolor in reprehenderit
									in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
									Excepteur sint occaecat cupidatat non proident, sunt in culpa
									qui officia deserunt mollit anim id est laborum. Lorem ipsum
									dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
									minim veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat. Duis aute irure dolor in
									reprehenderit in voluptate velit esse cillum dolore eu fugiat
									nulla pariatur. Excepteur sint occaecat cupidatat non proident,
									sunt in culpa qui officia deserunt mollit anim id est laborum.
								</p>

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
					</div>
					<!-- / NEWS MODAL CONTENT -->
				</div>
			</div>
			<!-- / NEWS MODAL -->
		</div>
	</section>

	<section class="timeline" id="history">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">Our history</h3>
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
	<script src="<c:url value='/resources/js/eating/tt-cart.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/main.js'/>"></script>
</body>
</html>