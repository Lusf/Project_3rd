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

	<section class="padding-medium about">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
				<h3>About us</h3>
				<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                </p>

                <p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
				<div class="row mt-30">
	  				<div class="col-md-4 wow fadeInLeft">
	                    <div class="services-box text-center shadow">
	                        <span class="icon ti-video-clapper"></span>
	                        <h4>consectet adipiscing</h4>
	                        <p class="fixed-height">Lorem ipsum dolor sit amet, consectet adipiscing elit. Cras est urna, imperd eget sem at, pellentes que cursus elit.
	                        </p>
	                        <a href="#" class="btn btn-margin btn-default btn-lg" data-toggle="modal" data-target="#service-01">more</a>
	                    </div>
	                </div>

	                <div class="col-md-4 wow fadeInDown">
	                    <div class="services-box text-center shadow">
	                        <span class="icon ti-video-camera"></span>
	                        <h4>Lorem ipsum dolor</h4>
	                        <p class="fixed-height">Lorem ipsum dolor sit amet, consectet adipiscing elit. Cras est urna, imperd eget sem at, pellentes que cursus elit.
	                        </p>
	                        <a href="#" class="btn btn-margin btn-default btn-lg" data-toggle="modal" data-target="#service-01">more</a>
	                    </div>
	                </div>

	                <div class="col-md-4 wow fadeInRight">
	                    <div class="services-box text-center shadow">
	                        <span class="icon ti-eraser"></span>
	                        <h4>pellentes que cursus</h4>
	                        <p class="fixed-height">Lorem ipsum dolor sit amet, consectet adipiscing elit. Cras est urna, imperd eget sem at, pellentes que cursus elit.
	                        </p>
	                        <a href="#" class="btn btn-margin btn-default btn-lg" data-toggle="modal" data-target="#service-01">more</a>
	                    </div>
	                </div>
                </div>
                <!-- / SERVICE MODAL -->
                <div id="service-01" class="modal fade services-modal" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content shadow">
                            <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
                            <div class="modal-body">
                                <div class="post-entry post-entry-modal">

                                    <div class="services-box text-center">
                                        <span class="icon ti-music-alt"></span>
                                        <h4>Music</h4>
                                        <h3>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</h3>
                                        <p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Cras est urna, imperd eget sem at, pellentes que cursus elit.
                                        </p>
                                    </div>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    </p>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    </p>

                                    <p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- / SERVICE MODAL -->
				
				</div><!--/ col-md-9-->
				<div class="col-md-3">
				     <div class="contact-form contact-form-box border mt-30 mb-30 pull-left">
				     <h5>contact us</h5>
	                    <form class="mt-30">
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
	                <div class="sidebar-box">
                        <h5 class="mt-0 mb-30">Recently Viewed</h5>
                    <!-- single offer box-->
                        <div class="offer-box pull-left">
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
			</div><!--/ row -->
		</div><!--/ container -->
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