<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>travelge main - 오지랖</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('.txc-image').css("width", "100%");

	})
</script>


</head>
<body>

	<%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>

	<section class="home">
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card1Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card1.recommandationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp" data-toggle="modal"
						data-target="#card1view">browse <span
						class="ti-arrow-right light"></span></a>
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card2Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card2.recommandationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp" data-toggle="modal"
						data-target="#card2view">browse <span
						class="ti-arrow-right light"></span></a>
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card3Thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card3.recommandationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp" data-toggle="modal"
						data-target="#card3view">browse <span
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
									<img src="1/${card4Thumbnail }/aa" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card4view"><span class="h4 offer-box-title">${card4.recommandationTitle }</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-slide">
									<img src="1/${card5Thumbnail }/aa" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card5view"><span class="h4 offer-box-title">${card5.recommandationTitle }</span>
						</a>
					</div>
				</div>
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-slide">
									<img src="${card6Thumbnail }/aa" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card6view"> <span class="h4 offer-box-title">${card6.recommandationTitle }</span>
						</a>
					</div>
				</div>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>


	<div id="card1view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card1.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card1.readNum }
						</span> <span class="offer-box-meta">${card1.recommandationDate}</span> <span
							class="descriptionImg"> ${card1.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="card2view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card2.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card2.readNum }
						</span> <span class="offer-box-meta">${card2.recommandationDate}</span> <span
							class="descriptionImg"> ${card2.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="card3view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card3.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card3.readNum }
						</span> <span class="offer-box-meta">${card3.recommandationDate}</span> <span
							class="descriptionImg"> ${card3.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="card4view" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card4.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card4.readNum }
						</span> <span class="offer-box-meta">${card4.recommandationDate}</span> <span
							class="descriptionImg"> ${card4.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
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
						<span class="h4 offer-box-title">${card5.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card5.readNum }
						</span> <span class="offer-box-meta">${card5.recommandationDate}</span> <span
							class="descriptionImg"> ${card5.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
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
						<span class="h4 offer-box-title">${card6.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card6.readNum }
						</span> <span class="offer-box-meta">${card6.recommandationDate}</span> <span
							class="descriptionImg"> ${card6.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- / OFFER CONTACT FORM -->

	 <section class="padding post-list" id="news">
		<div class="container">
			<h5 class="mt-0 mb-30">Latest Review</h5>
			<c:forEach items="${commentList }" var="travelgeInfoVo" >
			<c:forEach items="${travelgeInfoVo.userBlogVo }" var="userBlogVo">
			<div class="post-list-sidebar-item mb-15">
				<a href="#"> <img
					class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive"
					src="assets/img/blog/01.jpg" alt="blog image">
				</a>

				<div class="col-xs-8 col-sm-9">
					<a href="${pageContext.request.contextPath}/travelge/detailView/${userBlogVo.contentCode}">
					<h4>${travelgeInfoVo.travelgeName}</h4>
					<span> ${userBlogVo.id}</span> 
					<span class="h6 mt-0">
					${userBlogVo.blogTitle }
					
					</span> <span class="post-list-sidebar-item-description">${userBlogVo.blogDate }</span>
					</a>
				</div>
			</div>
			</c:forEach> 
			</c:forEach>
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