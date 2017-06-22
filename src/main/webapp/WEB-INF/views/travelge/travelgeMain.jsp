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
<style type="text/css">
.home {
	top: 0.3em;
}
</style>

</head>
<body>

	<%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>

	<section class="home">
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<c:forEach items="${list }" var="card" begin="0" end="2" varStatus="vs">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${card.thumbnail})">
					<h1 class="light wow fadeInDown mb-30">${card.recommandationTitle }</h1>
					<a class="btn btn-primary wow fadeInUp" data-toggle="modal"
						data-target="#card${vs.index}View">browse <span
						class="ti-arrow-right light"></span></a>
				</div>
				</c:forEach>
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
				<c:forEach items="${list }" var="card" begin="3" end="5" varStatus="vs">
				<!-- / single offer box-->
				<div class="col-md-4">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-slide">
									<img src="이미지경로/${card.thumbnail }" alt="offer image">
								</div>
							</div>
						</div>
						<a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card${vs.index}View"><span class="h4 offer-box-title">${card.recommandationTitle }</span>
						</a>
					</div>
				</div>
				</c:forEach>
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>


	<c:forEach items="${list}" var="card" begin="0" end="5" varStatus="vs">
	<div id="card${vs.index}View" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<div class="offer-box">

					<div class="offer-content pl-30 pr-30">
						<span class="h4 offer-box-title">${card.recommandationTitle }</span>
						<span class="offer-box-location"><i class="material-icons">visibility</i>${card.readNum }
						</span> <span class="offer-box-meta">${card.recommandationDate}</span> <span
							class="descriptionImg"> ${card.recommandationDescription }
						</span> <a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
	<!-- / OFFER CONTACT FORM -->

	<section class="padding post-list" id="news">
		<div class="container">
			<h5 class="mt-0 mb-30">Latest Review</h5>
			<c:forEach items="${commentList }" var="item" varStatus="vs">
				<div class="post-list-sidebar-item mb-15">
					<a href="${pageContext.request.contextPath}/blog/${item.id}"> <img class="no-padding col-md-2"
						src="assets/img/blog/01.jpg" alt="blog image"> <span
						class="col-md-2"> ${item.id}</span>
					</a> <a
						href="${pageContext.request.contextPath}/travelge/detailView/${item.contentCode}"
						class="col-md-2"> ${item.travelgeName} </a> <a class="col-md-4"
						data-toggle="modal" data-target="#comment${vs.index}"> <span>
							${item.blogTitle } </span>
					</a> <span class="post-list-sidebar-item-description col-md-2">${item.blogDate }</span>

				</div>
				<div id="comment${vs.index}" class="modal fade services-modal"
					role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content shadow">
							<div class="offer-box">
								<div class="offer-content pl-30 pr-30">
									<span class="h4 offer-box-title">${item.blogTitle }</span> <span>
										${item.id}</span> <span class="offer-box-location"> <span
										class="offer-box-meta">${item.blogDate }</span> <span
										class="descriptionImg"> ${item.blogCont } </span> <a
										class="close" data-dismiss="modal"><span class="ti-close"></span></a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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