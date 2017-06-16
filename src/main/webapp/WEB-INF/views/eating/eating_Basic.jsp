<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<script type="text/javascript">

/* function fnMove(seq){
    var offset = $("#div" + seq).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
} */
</script>
<style type="text/css">
.textblk	{
		width:100px;
	}
</style>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Choco - micro store </title>
	<meta content="" name="description">
	<meta content="width=device-width, initial-scale=1" name="viewport">
	<meta content="width=device-width" name="viewport">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<link href="${pageContext.request.contextPath}/resources/images/eating/favicon.png" rel="icon" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script%7CLato:300,400,700" rel="stylesheet">
	<link href="<c:url value='/resources/css/eating/bootstrap-eating.css'/>" rel="stylesheet">
	<link id="pagestyle" href="<c:url value='/resources/css/eating/theme-eating.css'/>" rel="stylesheet">
</head>

<body data-offset="50" data-spy="scroll" data-target=".navbar" class="dark-theme">
	
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
				<div class="swiper-slide" style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main1.jpg);">
					<img src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 1</h2>
					<div class="home-buttons text-center"> <a href="#products" class="btn btn-lg  btn-primary">our products</a> </div>
					<a class="arrow bounce text-center" href="#products"> <span class="ti-mouse"></span> <span class="ti-angle-double-down"></span> </a>
				</div>

				<div class="swiper-slide" style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main2.jpg);">
					<img src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 2</h2>
					<div class="home-buttons text-center"> <a href="#products" class="btn btn-lg  btn-primary">our products</a> </div>
					<a class="arrow bounce text-center" href="#about"> <span class="ti-mouse"></span> <span class="ti-angle-double-down"></span> </a>
				</div>
				
				<div class="swiper-slide" style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/slide1.jpg);">
					<img src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" alt="store logo">
					<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 3</h2>
					<div class="home-buttons text-center"> <a href="#products" class="btn btn-lg  btn-primary">our products</a> </div>
					<a class="arrow bounce text-center" href="#about"> <span class="ti-mouse"></span> <span class="ti-angle-double-down"></span> </a>
				</div>

			</div>
			<div class="home-pagination"></div>
			<div class="home-slider-next right-arrow-negative"> <span class="ti-arrow-right"></span> </div>
			<div class="home-slider-prev left-arrow-negative"> <span class="ti-arrow-left"></span> </div>
		</div>
	</section>

	<!-- INTERAVTIVE CART ITEM COUNTER -->
	<span id="items-counter" class="h3 cart-items-counter" style="display: none">0</span>
	<!-- / INTERAVTIVE CART ITEM COUNTER -->

	<!-- CART WIDGET -->
	<div class="cart-widget-container">
		<div class="cart-widget text-center">
			<a class="close" id="cart-widget-close">
				<span class="ti-close"></span>
			</a>

			<img class="cart-logo" src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" width="200" alt="store logo">
			<h3 class="section-heading">Your cart</h3>
			<!-- EMPTY CART MESSAGE -->
			<div id="cart-empty" class="cart-empty">
				<h4>is empty <span class="ti-face-sad icon"></span></h4>
			</div>
			<!-- / EMPTY CART MESSAGE -->

			<!-- CONTAINER FOR JS INJECT CART ITEMS, DON'T CHANGE ID AND CLASS -->
			<div class="items-container" id="items"></div>
			<!-- / CONTAINER FOR JS INJECT CART ITEMS, DON'T CHANGE ID AND CLASS -->

			<!-- CART DELIVERY OPTIONS -->
			<div class="cart-delivery" id="cart-delivery">
				<h4 class="section-heading">Delivery option</h4>
				<div class="custom-radio">
					<input id="radio1" type="radio" name="delivery" value="10.00" checked> 
					<label for="radio1">domestic delivery ($10)</label>
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
				<div class="cart-summary-row" id="cart-total">Total products <span class="cart-value">$<span id="cost_value">0.00</span></span></div>
				<div class="cart-summary-row">Shipping <span class="cart-value">$<span id="cost_delivery"></span></span></div>
				<div class="cart-summary-row cart-summary-row-total">Total <span class="cart-value">$<span id="total-total"></span></span></div>
			</div>
			<!-- / CART SUMMARY CALCULATION -->

			<!-- HIDDEN PAYPAL FORM -->
			<form action="https://www.paypal.com/cgi-bin/webscr" method="post" class="cart-form" id="cart-form">
				<!-- Identify your business so that you can collect the payments. -->
				<input type="hidden" name="business" value="yourpaypal@email.com">
				<!-- Specify a Buy Now button. -->
				<input type="hidden" name="cmd" value="_xclick">
				<!-- Specify details about the item that buyers will purchase. -->
				<input type="hidden" name="item_name" value="Choco - checkout">
				<input type="hidden" name="amount" id="amount" value="">
				<input type="hidden" name="currency_code" value="USD">
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
							<li class="swiper-slide wow fadeInUp text-center" data-wow-delay=".2s"> 
								<span class="product-list-left pull-left">
									<a href="#" data-target="#product-01" data-toggle="modal">
					<!-- 평상시 상태 --><img alt="product image" class="product-list-primary-img" src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg"> 
			   <!-- 마우스 올렸을 때 --><img alt="product image" class="product-list-secondary-img" src="${pageContext.request.contextPath}/resources/images/eating/productBG2.jpg">
									</a>
								</span> 

								<a href="#" data-target="#product-01" data-toggle="modal">
									<span class="product-list-right pull-left">
										<span class="product-list-name h3">드라이 에이징 스테이크</span>
										<span class="product-list-price">￦40,000원</span>
									</span>
								</a> 

								<button type="button" class="btn btn-default add-item" data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png" data-name="Chocolate desire" data-cost="400.00" data-id="1" >
									<span class="ti-shopping-cart"></span>add to cart
								</button> 		
							</li>
							<!-- /핫딜 상품 1 -->
							
							<!-- 핫딜 상품 2 -->
							<li class="swiper-slide wow fadeInUp text-center" data-wow-delay=".4s"> 
								<span class="product-list-left pull-left">
									<a href="#" data-target="#product-01" data-toggle="modal">
					<!-- 평상시 상태 --><img alt="product image" class="product-list-primary-img" src="${pageContext.request.contextPath}/resources/images/eating/productBG2.jpg"> 
			   <!-- 마우스 올렸을 때 --><img alt="product image" class="product-list-secondary-img" src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg">
									</a>
								</span> 

								<a href="#" data-target="#product-01" data-toggle="modal">
									<span class="product-list-right pull-left">
										<span class="product-list-name h3">티본 스테이크</span>
										<span class="product-list-price">￦30,000</span>
									</span>
								</a>

								<button type="button" class="btn btn-default add-item" data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png" data-name="Chocolate desire" data-cost="300.00" data-id="2" >
									<span class="ti-shopping-cart"></span>add to cart
								</button> 	
							</li>
							<!-- /핫딜 상품 2 -->

							<!-- 핫딜 상품 3 -->
							<li class="swiper-slide wow fadeInUp text-center" data-wow-delay=".6s"> 
								<span class="product-list-left pull-left">
									<a href="#" data-target="#product-01" data-toggle="modal">
					<!-- 평상시 상태 --><img alt="product image" class="product-list-primary-img" src="${pageContext.request.contextPath}/resources/images/eating/hotdeal3.jpg"> 
			   <!-- 마우스 올렸을 때 --><img alt="product image" class="product-list-secondary-img" src="${pageContext.request.contextPath}/resources/images/eating/목차.jpg">
									</a>
								</span> 

								<a href="#" data-target="#product-01" data-toggle="modal">
									<span class="product-list-right pull-left">
										<span class="product-list-name h3">스끼야끼</span>
										<span class="product-list-price">60,000원</span>
									</span>
								</a> 

								<button type="button" class="btn btn-default add-item" data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png" data-name="Chocolate desire no. 2" data-cost="600.00" data-id="3" >
									<span class="ti-shopping-cart"></span>add to cart
								</button> 		
							</li>
							<!-- / 핫딜 상품 3 -->
							
							<!-- 핫딜 상품 4 -->
							<li class="swiper-slide wow fadeInUp text-center" data-wow-delay=".8s"> 
								<span class="product-list-left pull-left">
									<a href="#" data-target="#product-01" data-toggle="modal">
					<!-- 평상시 상태 --><img alt="product image" class="product-list-primary-img" src="${pageContext.request.contextPath}/resources/images/eating/목차.jpg"> 
			   <!-- 마우스 올렸을 때 --><img alt="product image" class="product-list-secondary-img" src="${pageContext.request.contextPath}/resources/images/eating/product4.png">
									</a>
								</span> 

								<a href="#" data-target="#product-01" data-toggle="modal">
									<span class="product-list-right pull-left">
										<span class="product-list-name h3">Chocolate desire no. 2</span>
										<span class="product-list-price">￦500.00</span>
									</span>
								</a>

								<button type="button" class="btn btn-default add-item" data-image="${pageContext.request.contextPath}/resources/images/eating/product3.png" data-name="Chocolate desire no. 2" data-cost="500.00" data-id="4" >
									<span class="ti-shopping-cart"></span>add to cart
								</button> 	
							</li>
							<!-- / 핫딜 상품 4 -->
					</div>
				</div>
			</div>
			<!-- PRODUCT MODAL -->
		</div>
	</section>

	<section class="review" id="review">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-heading">맛집</h3>
				</div>

				<div class="col-md-12 testimonials-slider text-center">
					<!-- CAROUSEL WRAPPER -->
					<div class="swiper-wrapper">



						<!-- SINGLE TESTIMONIALS ITEM -->
						<div class="swiper-slide">
							<div class="testimonials-container shadow"> <img alt="user avatar" class="wow fadeInUp" src="${pageContext.request.contextPath}/resources/images/eating/user.png">
								<h3 class="wow fadeInUp" data-wow-delay=".4s"> Martin Johe, Co-Founder / CEO <span>Fastcompany ltd.</span> </h3>
								<p class="wow fadeInUp" data-wow-delay=".6s"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
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
			<!-- <div><span class="btn btn-default"  onclick="addBtn()">등록하기 </span> -->
			<div>
				<div>
					<div>
				<span class="h3" href="#post-01" data-toggle="modal" data-target="#new">등록하기</span> 
				<span class="h3" href="#" data-toggle="modal" data-target="#new">맛집리스트</span>
			<div class="container">
				<div class="row">
					<div class="addBtn" >
							</div>
						</div>
					</div>
				</div>
					<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft about-counter-single" data-wow-delay="0.3s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter"> <span class="ti-shortcode icon"></span>
							<h2 class="timer">28256</h2>
							<p> Line Of Coding </p>
						</div>
					</div>
					<!-- / SINGLE COUNTER ITEM -->
					
					<!-- SINGLE COUNTER ITEM -->
						<div class="col-md-3 wow fadeInLeft about-counter-single" data-wow-delay="0.2s" data-wow-duration="1s" data-wow-offset="0">
							<div class="counter">
								<span class="ti-crown icon"></span>
								<h2 class="timer">250</h2>
								<p> Projects Finished </p>
							</div>
						</div>
						<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft about-counter-single" data-wow-delay="0.4s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter"> <span class="ti-cup icon"></span>
							<h2 class="timer">42</h2>
							<p> Award Won </p>
						</div>
					</div>
					<!-- / SINGLE COUNTER ITEM -->

					<!-- SINGLE COUNTER ITEM -->
					<div class="col-md-3 wow fadeInLeft" data-wow-delay="0.5s" data-wow-duration="1s" data-wow-offset="0">
						<div class="counter"> <span class="ti-comments-smiley icon"></span>
							<h2 class="timer">240</h2>
							<p> Satisfied Clients </p>
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
								<a href="#" data-toggle="modal" data-target="#post-01">
									<span class="post-entry-cover" style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
									</span>
								</a>

								<a class="h3" href="#" data-toggle="modal" data-target="#post-01">
									철구 먹방
								</a>
								<a href="#" data-toggle="modal" data-target="#post-01" class="post-entry-more">
									read more 
									<span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01">
									<span class="post-entry-cover" style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
									</span>
								</a>

								<a class="h3" href="#" data-toggle="modal" data-target="#post-01">
									맛있는 녀석들
								</a>
								<a href="#" data-toggle="modal" data-target="#post-01" class="post-entry-more">
									read more 
									<span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="review">
									<span class="post-entry-cover" style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
									</span>
								</a>

								<a class="h3" href="#" data-toggle="modal" data-target="#post-01">
									삼대천왕
								</a>
								<a href="#" data-toggle="modal" data-target="#post-01" class="post-entry-more">
									read more 
									<span class="ti-arrow-right icon"></span>
								</a>
							</div>
						</div>
						<!-- / SINGLE NEWS ITEM -->

						<!-- SINGLE NEWS ITEM -->
						<div class="swiper-slide">
							<div class="post-entry wow fadeInUp">
								<a href="#" data-toggle="modal" data-target="#post-01">
									<span class="post-entry-cover" style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
									</span>
								</a>

								<a class="h3" href="#" data-toggle="modal" data-target="#post-01">
									갓형욱
								</a>
								<a href="#" data-toggle="modal" data-target="#post-01" class="post-entry-more">
									read more 
									<span class="ti-arrow-right icon"></span>
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
								<h3 class="section-heading">
									<input type="text"  id=textBlk width="100px" style="color : black">
								</h3> 
								
								<span class="post-entry-meta">
									<img alt="user avatar" class="post-entry-author pull-left" src="${pageContext.request.contextPath}/resources/images/eating/user.png">
									<span class="post-entry-author-name pull-left"></span> 
									<span class="post-entry-time pull-right">6 min read
										<span class="post-entry-category">interior, furnitures</span>
									</span>
								</span>
<%-- style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);" --%>
								<div>
									<form action="eatingMain" >
								<span  id="holder"></span></div>
								<p><div>
									<textarea rows="" cols="" style="color : black"></textarea>
									<p> <font face="궁서체">테스트입니다.</font> </p> 
	
									<p> <font face="궁서체">치킨을 먹어보겠슴다. </font></p>
									<div class="filebox">
										<label for="upload">사진 업로드</label>
										<input type="file" id="upload" class="upload-hidden" name="file">
									</div>
									<p><div>
										<input type="submit" value="등록하기"  >
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- / NEWS MODAL CONTENT -->
				</div>
			</div>
			<!-- / NEWS MODAL -->
		</div>
	</section>



	<div class="section section-min">
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4 col-md-push-4 text-center"> <img class="footer-logo" src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png" alt="footer-logo">
								<div class="social">
									<ul>
										<li><a href="http://facebook.com/" target="_blank"><span class="ti-facebook"></span></a></li>
										<li><a href="https://twitter.com/" target="_blank"><span class="ti-twitter-alt"></span></a></li>
										<li><a href="http://linkedin.com/" target="_blank"><span class="ti-linkedin"></span></a></li>
										<li><a href="https://vimeo.com/" target="_blank"><span class="ti-vimeo-alt"></span></a></li>
										<li><a href="http://youtube.com/" target="_blank"><span class="ti-youtube"></span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script src="<c:url value='/resources/js/eating/vendor/wow.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery-1.11.2.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/swiper.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.countTo.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.inview.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.countdown.js'/>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_6m6Glf1-P7jvVdHZ00e3Ue_EoUNe39g"></script>
	<script src="<c:url value='/resources/js/eating/tt-cart.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/main.js'/>"></script>
	<script type="text/javascript">

var upload = document.getElementById('upload'),
holder = document.getElementById('holder');

upload.onchange = function(e) {
e.preventDefault();

var file = upload.files[0],
   reader = new FileReader();
   reader.onload = function(event) {
   var img = new Image();
   img.src = event.target.result;
   /*
   img.width = 200;
   img.height = 200; 
   img.className="img-circle"; */
   holder.innerHTML = '';
   holder.appendChild(img);
};
reader.readAsDataURL(file);

return false;
};

</script>
</body>
</html>