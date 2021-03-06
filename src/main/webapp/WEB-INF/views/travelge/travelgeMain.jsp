<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>오지랖 - travelge main</title>
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
.card {
    font-size: 1em;
    overflow: hidden;
    padding: 0;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
}

.card-img-top {
    display: block;
    width: 100%;
    height: auto;
}

.card-title {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
}

.card-text {
    clear: both;
    margin-top: .5em;
    color: rgba(0, 0, 0, .68);
}

.card-footer {
    font-size: 1em;
    position: static;
    top: 0;
    left: 0;
    max-width: 100%;
    padding: .75em 1em;
    color: rgba(0, 0, 0, .4);
    border-top: 1px solid rgba(0, 0, 0, .05) !important;
    background: #fff;
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
						data-target="#card${vs.index}View">더보기 <span
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
					<h2 class="heading" style="font-size: 18px">요즘,화제,여기</h2>
				</div>
				<c:forEach items="${list }" var="card" begin="3" end="5" varStatus="vs">
				
				<div class="col-md-4 ">
                <div class="card">
                    <img class="card-img-top" src="${card.thumbnail }" style="height: 240px;" alt="${card.recommandationTitle }">
                    <div class="card-block">
                        <h4 class="card-title">${card.recommandationTitle }</h4>
                        <div class="card-text" style="text-overflow: ellipsis; width: 335px;height: 45px;overflow: hidden;color: #aaa">
                           ${card.recommandationDescription }
                        </div>
                    </div>
                    <div class="card-footer" style="text-align: center;">
                    <a href="#" class="btn btn-default" data-toggle="modal"
							data-target="#card${vs.index}View">자세히 보기</a>
                    </div>
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

					<br>
						<span class="h4 offer-box-title" style="text-align: center;">${card.recommandationTitle }</span>
						<span class="offer-box-location" style="text-align: right;">${card.recommandationDate}
						</span> <span class="offer-box-meta"><br></span> <span

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
			<h2 class="heading" style="font-size: 18px">최신 리뷰</h2>
			<c:forEach items="${commentList }" var="item" varStatus="vs">
				<div class="post-list-sidebar-item mb-15" style=" height: 45px; line-height: 45px;">
					<a href="${pageContext.request.contextPath}/blog/${item.id}"> 
					<img class="no-padding col-md-2 img-circle" src="${pageContext.request.contextPath }/resources/user/${item.id }/profile/${item.userPic}" alt="blog image" style="width: 50px; height: 50px; "> <span class="col-md-2"> ${item.id}</span>
					</a> 
					<a
						href="${pageContext.request.contextPath}/travelge/detailView/${item.contentCode}"
						class="col-md-2"> ${item.travelgeName} </a>
						 <a class="col-md-4"
						data-toggle="modal" data-target="#comment${vs.index}"  style="cursor: pointer;"> <span>
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
									<span class="h4 offer-box-title">${item.blogTitle }</span> 
									<div style="text-align: right;">
									<span>작성자: ${item.id}</span> 
									<span class="offer-box-meta">작성일: ${item.blogDate }</span> 
									</div>
									<span class="offer-box-location"> 
									
									<span class="descriptionImg"> ${item.blogCont } </span>
									<a class="close" data-dismiss="modal"><span class="ti-close"></span></a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>

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