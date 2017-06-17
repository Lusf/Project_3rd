<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="zxx">
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
	
	<!-- inline background image style is necessary here to allow integrate with your cms -->
	<div class="developer-header" style="background-image: url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/developer/nordman.jpg);">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="contact-info">
					<div class="border pull-left text-center pb-15">
						<div class="contact-info-logo">
						<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/agency-logo.png" alt="agency logo">
					</div>
						<span class="h5 contact-info-agent">Nordman Agency</span>
						<span class="h4">+32 454 454 4323</span>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	<section class="padding  developer-property light-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="mb-30">Nordman's investment</h4>	
					<div class="row">
					<!-- single offer box-->
						<div class="col-md-4">
							<div class="offer-box">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image"></div>
										</div>

										<div class="offer-pagination-prev left-arrow">
											<span class="ti-angle-left"></span>
										</div>

										<div class="offer-pagination-next right-arrow">
											<span class="ti-angle-right"></span>
										</div>
									</div>
								</div>
								<a href="#"> 
									<span class="h4 offer-box-title">Nordman Plaza Appartement</span>
									<span class="offer-status">Move-in now | 12 Properties</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									
									<span class="offer-box-meta">2 & 3 bedroom apartments, studio suite</span>
								</a>
								<a class="btn btn-default mt-30">Property site</a>
							</div>
						</div>
					<!-- / single offer box-->
					<!-- single offer box-->
						<div class="col-md-4">
							<div class="offer-box">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image"></div>
										</div>

										<div class="offer-pagination-prev left-arrow">
											<span class="ti-angle-left"></span>
										</div>

										<div class="offer-pagination-next right-arrow">
											<span class="ti-angle-right"></span>
										</div>
									</div>
								</div>
								<a href="#"> 
									<span class="h4 offer-box-title">Nordman Plaza Appartement</span>
									<span class="offer-status">Move-in now | 12 Properties</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									
									<span class="offer-box-meta">2 & 3 bedroom apartments, studio suite</span>
								</a>
								<a class="btn btn-default mt-30">Property site</a>
							</div>
						</div>
					<!-- / single offer box-->
					<!-- single offer box-->
						<div class="col-md-4">
							<div class="offer-box">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image"></div>
										</div>

										<div class="offer-pagination-prev left-arrow">
											<span class="ti-angle-left"></span>
										</div>

										<div class="offer-pagination-next right-arrow">
											<span class="ti-angle-right"></span>
										</div>
									</div>
								</div>
								<a href="#"> 
									<span class="h4 offer-box-title">Nordman Plaza Appartement</span>
									<span class="offer-status">Move-in now | 12 Properties</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									
									<span class="offer-box-meta">2 & 3 bedroom apartments, studio suite</span>
								</a>
								<a class="btn btn-default mt-30">Property site</a>
							</div>
						</div>
					<!-- / single offer box-->

					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="contact-info">
						<div class="border pull-left text-center pb-15">
						<div class="contact-info-logo">
							<img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/agency-logo.png" alt="agency logo">
						</div>
						<span class="h5 contact-info-agent">Nordman Agency</span>
						<span class="h4">+32 454 454 4323</span>
						</div>
					</div>

	                <div class="contact-form contact-form-box border mt-30 mb-30 pull-left">
	                	<div class="col-md-12">
						<h4 class="heading">Contact with developer</h4>
						</div>
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
				<div class="col-md-9"> 
					<div class="box">
								<h4 class="mb-30">Nordman's add</h4>
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/01.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/02.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/03.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/04.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/05.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->
				<!-- / single offer box-->
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/06.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/07.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->

				<!-- / single offer box-->
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->

				<!-- / single offer box-->	
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
								<div class="offer-box-head">
									<div class="offer-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/10.jpg" alt="offer image"></div>
											<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/1.jpg" alt="offer image"></div>
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
								<a href="#"> 
									<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
									<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
									<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
								</a>
								<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-01">contact</a>
								<a href="#" class="btn btn-link btn-sm ml-0 pull-right"><span class="ti-star"></span> to favorites</a>
						</div>
					</div>
				<!-- / single offer box-->
			        <div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
	                    <div class="category-pagination text-center">
	                        <nav aria-label="Page navigation">
	                            <ul class="pagination">
	                                <li>
	                                    <a href="#" aria-label="Previous">
	                                        <span aria-hidden="true">&laquo;</span>
	                                    </a>
	                                </li>
	                                <li class="active"><a href="#">1</a></li>
	                                <li><a href="#">2</a></li>
	                                <li><a href="#">3</a></li>
	                                <li><a href="#">4</a></li>
	                                <li><a href="#">5</a></li>
	                                <li>
	                                    <a href="#" aria-label="Next">
	                                        <span aria-hidden="true">&raquo;</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </nav>
	                    </div>
	                </div>
				</div><!--/ col-md-9-->
			</div><!--/ row -->
		</div><!--/ container -->

		<!-- OFFER CONTACT FORM-->
		<div id="offer-01" class="modal fade services-modal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content shadow">
            		<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/08.jpg" alt="offer image"></div>
									<div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/09.jpg" alt="offer image"></div>
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
						<div class="offer-content pl-30 pr-30">
							<span class="h4 offer-box-title">Spacious 1 Bed Flat near Bermondsey Sq. Lovely Period property</span>
							<span class="offer-box-location"><span class="ti-location-pin"></span>Tower Bridge, London </span>
							<span class="offer-box-meta">Nordman Agency | 30 Nov 2016 | Flat | 2 Beds</span>
							<a href="#" class="btn btn-link btn-sm pr-0 pull-right"><span class="ti-star"></span> to favorites</a>
							<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
	                        <div class="contact-form mt-60">
	                            <form>
	                                <div class="form-group">
	                                    <input type="text" class="form-control" id="modal-name" name="modal-name" placeholder="Name" required>
	                                </div>

	                                <div class="form-group">
	                                    <input type="text" class="form-control" id="modal-contact-email" name="modal-contact-email" placeholder="Email" required>
	                                </div>

	                                <div class="form-group">
	                                    <input type="text" class="form-control" id="modal-mobile" name="modal-mobile" placeholder="Mobile Number" required>
	                                </div>

	                                <div class="form-group">
	                                    <textarea class="form-control" id="modal-message" placeholder="Message" maxlength="140" rows="7"></textarea>
	                                </div>

	                                <button type="button" id="modal-submit" name="modal-submit" class="btn btn-primary btn-lg text-center float-right">Send</button>
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