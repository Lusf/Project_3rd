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
	
    <div class="container">
        <div class="row">
            <div class="post padding-medium">
                <div class="col-xs-12 col-md-9">
                    <div class=" post-content">
                        <div class="post-header" style="background-image: url('${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-02.jpg');">
                            <img class="post-user mb-30" src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/users/01.jpg" alt="user avatar">
                        </div>
                        
                        <h2 class="section-claim negative">new products<span>are comming</span></h2>
                        <span class="post-details">
                            <span class="post-by">Anna Sta</span>
                            <span class="post-date">22.09.2017</span>
                        </span>
                        <p class="post-introduction">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <hr>
                        <p>
                            <img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-01.jpg" class="col-xs-12 col-sm-6 pull-left left" alt="blog image"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in.<br>
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id Duis aute irure dolor in reprehenderit in voluptate velit est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.
                        </p>
                        <hr>
                        <p>
                            <img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/blog-01.jpg" class="col-xs-12 col-sm-6 pull-right right" alt="blog image"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                    <!-- comments-->
                    <div class="comments">
                        <h3 class="mb-60">Comments<a class="btn btn-primary pull-right" data-toggle="collapse" href="#comments-form">add new</a></h3>
                        <div class="comments-form collapse col-md-12" id="comments-form">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <div class="panel-title h3">Add new
                                        <div class="pull-right login-context-info">
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form id="comment-new" class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <textarea class="form-control" placeholder="Your comment"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <!-- Button -->
                                            <div class="col-md-12 login-btn">
                                                <a href="#" class="btn btn-primary">Add your comment </a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <ul class="comments-list">
                            <li>
                                <span class="comments-nick h5">Martin</span>
                                <span class="comments-date">14.07.2017</span>
                                <p class="comments-content">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                </p>
                                
                                <ul class="collapse ml-60" id="reply-open">
                                    <li class="mb-60">
                                        <span class="comments-nick h5">Martin</span>
                                        <span class="comments-date">14.07.2017</span>
                                        <p class="comments-content">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </p>
                                        
                                    </li>
                                    <li class="mb-60">
                                        <span class="comments-nick h5">Martin</span>
                                        <span class="comments-date">14.07.2017</span>
                                        <p class="comments-content">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </p>
                                        
                                    </li>
                                    <li class="mb-60">
                                        <span class="comments-nick h5">Martin</span>
                                        <span class="comments-date">14.07.2017</span>
                                        <p class="comments-content">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </p>
                                        
                                    </li>
                                </ul>
                                <a data-toggle="collapse" href="#reply" class="btn btn-default">reply</a>
                                <a class="btn btn-default" data-toggle="collapse" href="#reply-open">3 comments</a>
                                <div class="comments-form collapse col-md-12" id="reply">
                                    <div class="panel panel-default">
                                        <div class="panel-heading ">
                                            <div class="panel-title h3">reply
                                                <div class="pull-right login-context-info">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <form id="reply-form" class="form-horizontal">
                                                
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <textarea class="form-control" placeholder="Your comment"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <!-- Button -->
                                                    <div class="col-md-12 login-btn">
                                                        <a href="#" class="btn btn-primary">Add your reply </a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- / comments -->
                </div>
                <div class="col-md-3 col-xs-12">
                    <div class="sidebar-box">
                        <h5 class="mt-0">Post categories</h5>
                        <ul>
                            <li class="category"><a href="#">exclusive <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">brown <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">ceramic <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">Scratch-resistant <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">Scratch-resistant <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">Polished steel  <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">Water-resistance <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">Date window <span class="ti-angle-right pull-right"></span></a></li>
                            <li class="category"><a href="#">watch <span class="ti-angle-right pull-right"></span></a></li>
                        </ul>
                    </div>

                    <div class="sidebar-box">
                        <h5 class="mt-0 mb-30">Latest posts</h5>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/01.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">Post title</span>
                                    <span class="post-list-sidebar-item-description">Lorem ipsum dolor sit amet, consecteturt...</span>
                                </a>
                            </div>
                        </div>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/02.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">Post title</span>
                                    <span class="post-list-sidebar-item-description">Lorem ipsum dolor sit amet, consecteturt...</span>
                                </a>
                            </div>
                        </div>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/01.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">Post title</span>
                                    <span class="post-list-sidebar-item-description">Lorem ipsum dolor sit amet, consecteturt...</span>
                                </a>
                            </div>
                        </div>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/blog/02.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">Post title</span>
                                    <span class="post-list-sidebar-item-description">Lorem ipsum dolor sit amet, consecteturt...</span>
                                </a>
                            </div>
                        </div>
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

            </div>
        </div>
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
