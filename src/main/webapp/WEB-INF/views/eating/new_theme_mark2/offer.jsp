<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Food-마시쪙</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
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

	<section class="padding">
		<div class="container">
			<div class="row">
			<div class="col-md-12 mb-30">
				<h3>Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</h3>
				<span class="offer-box-location"><span class="ti-location-pin theme-color-secondary"></span>Tower Bridge, London </span>
			</div>

			<div class="col-md-9">
		        <div class="offer-box">
					<div class="offer-box-head">
						<div class="offer-slider">
							<div class="swiper-wrapper">
								<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image"></div>
								<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image"></div>
								<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image"></div>
								<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image"></div>
							</div>

							<div class="offer-pagination-prev left-arrow">
								<span class="ti-angle-left"></span>
							</div>

							<div class="offer-pagination-next right-arrow">
								<span class="ti-angle-right"></span>
							</div>
						</div>
						<span class="offer-box-price">$350pw</span>
						<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
					</div>
					<div class="offer-content">
						<span class="h4 mb-30 col-md-12 pl-0 pr-0">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
						<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
						<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
						<div class="offer-row mt-30">
							<h4>About this offer</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
						<div class="offer-row row">
							<div class="col-md-12 pl-0">
								<ul>
									<li class="col-md-6 col-sm-6">
										<span class="col-md-6">Posted</span>
										<span class="col-md-6 bold">10 days ago</span>
									</li>
									<li class="col-md-6 col-sm-6">
										<span class="col-md-6">Seller type</span>
										<span class="col-md-6 bold">Agency</span>
									</li>
									<li class="col-md-6 col-sm-6">
										<span class="col-md-6">Date available</span>
										<span class="col-md-6 bold">13 Dec 2017</span>
									</li>
									<li class="col-md-6 col-sm-6">
										<span class="col-md-6">Property Type</span>
										<span class="col-md-6 bold">Flat</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="offer-row row">
							<div class="col-md-2 col-sm-12 mb-15">
								<span class="bold">Space</span>
							</div>
							<div class="col-md-10 col-sm-12">
								<ul>
									<li class="col-md-6 col-sm-6">Large kitchen</li>
									<li class="col-md-6 col-sm-6">2 toilets</li>
									<li class="col-md-6 col-sm-6">Bathroom</li>
									<li class="col-md-6 col-sm-6">Living-room</li>
									<li class="col-md-6 col-sm-6">Back garden</li>
								</ul>
							</div>
						</div>

						<div class="offer-row row">
							<div class="col-md-2 col-sm-12 mb-15">
								<span class="bold">Kitchen</span>
							</div>
							<div class="col-md-10 col-sm-12">
								<ul>
									<li class="col-md-6 col-sm-6">Contemporary German furniture</li>
									<li class="col-md-6 col-sm-6">Gloss finishes to cabinets</li>
									<li class="col-md-6 col-sm-6">Individually designed layouts</li>
									<li class="col-md-6 col-sm-6">Silestone worktops and glass upstand</li>
									<li class="col-md-6 col-sm-6">Stainless steel sink with chrome finish mixer tap</li>
									<li class="col-md-6 col-sm-6">LED lighting below wall units</li>
									<li class="col-md-6 col-sm-6">Fully integrated AEG stainless steel single oven</li>
									<li class="col-md-6 col-sm-6">Amtico flooring</li>
									<li class="col-md-6 col-sm-6">Dishwasher</li>
									<li class="col-md-6 col-sm-6">Fully integrated fridge freezer and slimline</li>
									<li class="col-md-6 col-sm-6">Fully integrated Electrolux extractor hood</li>
								</ul>
							</div>
						</div>
						<div class="offer-row row">
							<div class="col-md-2 col-sm-12 mb-15">
								<span class="bold">Bathroom</span>
							</div>
							<div class="col-md-10 col-sm-12">
								<ul>
								    <li class="col-md-6 col-sm-6"> Contemporary white sanitary ware</li>
								    <li class="col-md-6 col-sm-6"> Grohe chrome finish brassware</li>
								    <li class="col-md-6 col-sm-6"> Aqualisa chrome finish shower</li>
								    <li class="col-md-6 col-sm-6"> Mobiform mirror and shelves to en suite (where applicable)</li>
								    <li class="col-md-6 col-sm-6"> White finish heated towel rail (colour choice available)</li>
								    <li class="col-md-6 col-sm-6"> Johnson ceramic wall tiling </li>
								    <li class="col-md-6 col-sm-6"> Johnson ceramic floor tiling </li>
								</ul>
							</div>
						</div>
						<div class="offer-row row">
							<div class="col-md-2 col-sm-12 mb-15">
								<span class="bold">Electrical</span>
							</div>
							<div class="col-md-10 col-sm-12">
								<ul>
								    <li class="col-md-6 col-sm-6"> Free standing Zanussi washer dryer to cupboard in hallway (where applicable)</li>
								    <li class="col-md-6 col-sm-6">Recessed LED downlighters to hallway, kitchen and bathroom</li>
								    <li class="col-md-6 col-sm-6"> Video entry phone</li>
								    <li class="col-md-6 col-sm-6"> LED lighting to all balconies</li>
								    <li class="col-md-6 col-sm-6"> Slimline white sockets throughout</li>
								</ul>
							</div>
						</div>
	                </div>
				</div>
			</div><!--/ col-md-9-->
				<div class="col-md-3">
					<div class="contact-info">
		

						<div class="border pull-left text-center pb-15">
									<div class="contact-info-logo">
						<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/agency-logo.png" alt="agency logo">
						</div>
							<span class="h5 contact-info-agent">Nordman Agency</span>
								<a class="btn btn-link btn-sm theme-color-secondary" href="#">see all ads</a>
							<span class="h4">+32 454 454 4323</span>
							<span class="h6 mt-0 mb-0">Agent: Thomas Example</span>
						</div>
					</div>
	                <div class="contact-form contact-form-box border mt-30 mb-30 pull-left">
	                    <form>
	                        <div class="form-group">
	                            <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
	                        </div>

	                        <div class="form-group">
	                            <input type="text" class="form-control" id="contact-email" name="contact-email" placeholder="Email" required>
	                        </div>

	                        <div class="form-group">
	                            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
	                        </div>

	                        <div class="form-group">
	                            <textarea class="form-control" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
	                        </div>

	                        <button type="button" id="submit" name="submit" class="btn btn-default col-md-12 btn-lg text-center float-right">Send</button>
	                    </form>
	                </div>
    
                    <ul class="social-network social-circle border">
                        <li><a href="#" class="icoRss" title="Rss"><i class="ti-rss-alt"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="ti-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="ti-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="ti-google"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="ti-linkedin"></i></a></li>
                    </ul>
                    <p class="small pt-15 col-md-12 pull-left">
                    	This advertisement and the information related to it are provided and maintained by the advertiser. Please note that every advertisement for rent or for sale should at a minimum, display the energy performance rating of the property. See our Flats and Housing Posting Rules for more information. 
                    </p>
				</div>
			</div><!--/ row -->
		</div><!--/ container -->
	</section>
	<div class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" role="tablist">
						<li class="active"><a href="#rooms" data-toggle="tab">rooms</a></li>
						<li class=""><a href="#flats" data-toggle="tab">flats</a></li>
						<li class="" ><a href="#houses" data-toggle="tab">houses</a></li>
					</ul>
					<div class="tab-content relative">
	              		<div role="tabpanel" class="tab-pane fade in active" id="rooms">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>
							            
							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>

							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>

							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>

							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>
							            
							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>

							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
												</a>
											</div>
										<!-- / single offer box-->
							            </div>

							            <div class="swiper-slide">
										<!-- single offer box-->
											<div class="offer-box">
													<div class="offer-box-head">
														<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg" alt="offer image">
														<span class="offer-box-price">$350pw</span>
														<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
													</div>
													<a href="#"> 
													<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
													<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
													
													<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
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
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>
						            
						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>
						            
						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
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
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/01.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>
						            
						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/02.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>
						            
						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
											</a>
										</div>
									<!-- / single offer box-->
						            </div>

						            <div class="swiper-slide">
									<!-- single offer box-->
										<div class="offer-box">
												<div class="offer-box-head">
													<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image">
													<span class="offer-box-price">$350pw</span>
													<span class="offer-box-label"><span class="ti-star"></span>featured</span>	
												</div>
												<a href="#"> 
												<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
												<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
												
												<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
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
			</div><!--/ row -->
		</div><!--/ container -->
	</div>

	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>Support: <span>+48 123 456 789</span></p>
					</div>
					<div class="col-md-6">
				        <ul class="footer-social pull-right">
	                        <li><a href="#" class="pull-left"><span class="ti-facebook"></span></a></li>
	                        <li><a href="#" class="pull-left"><span class="ti-twitter"></span></a></li>
	                        <li><a href="#" class="pull-left"><span class="ti-instagram"></span></a></li>
	                        <li><a href="#" class="pull-left"><span class="ti-youtube"></span></a></li>
	                    </ul>
                    </div>
				</div>
			</div>	
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 smartphone-fw">
					<address>
					<strong>Main office (HQ)</strong><br>
					consectetur adipisicing elit 122<br>
					CF 55678 USA <br><br>
					Phone: +1-222-333-4444 <br>
					E-mail: office@apart.com
					</address>
				</div>
		        <div class="col-md-2 col-sm-12 smartphone-fw">
                    <h6 class="heading">ACCOUNT</h6>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>
               <div class="col-md-2 col-sm-12 smartphone-fw">
                    <h6 class="heading">INFORMATION</h6>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>

                 <div class="col-md-2 col-sm-12 smartphone-fw">
                    <h6 class="heading">ACCOUNT</h6>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>				
			</div>
		</div>	
	</footer>
	
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/wow.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery-1.11.2.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/swiper.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countTo.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.inview.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countdown.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap-select.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/main.js'/>"></script>
	</body>
</html>