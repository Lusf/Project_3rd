<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/enter/enterMain.css"> --%>

<style>
.bottom {
	margin-bottom: 1em;
}

.top {
	margin-top: 1em;
}

.fader-home {
	position: relative transition:all 1s ease;
}

.fader-in {
	position: absolute;
	display: inline-block;
	bottom: 1em;
	background: rgba(255, 0, 0, .8);
	transition: all 1s ease;
	opacity: 0;
	padding: 2em;
	width: 90%;
}

img:hover+.fader-in {
	opacity: 1;
}

/*  
 아랫부분css */
.goof {
	height: 100px;
	background: #ccc;
	margin: 4px -11px;
	padding: 50px 10px 10px 10px;
	position: relative;
}

.goof h4 {
	position: absolute;
	left: 5%;
	top: 60%;
	color: #0095d9;
	font-size: 16px;
	font-weight: bold;
}

.activate {
	background-color: #0095d9;
}

.activate h4 {
	color: #fff;
}

.gaf {
	height: 328px;
	background: green;
	margin: -14px 0;
}

.gaf h3 {
	padding: 10px;
	color: #fff;
}

/**휙휙*/
#custom_carousel .item  .top {
	overflow: hidden;
	max-height: 300px;
	margin-bottom: 15px;
}

#custom_carousel .item {
	color: #000;
	background-color: #fff;
	padding: 20px 0;
	overflow: hidden
}

#custom_carousel .item img {
	width: 100%;
	height: auto
}

#custom_carousel .izq {
	position: absolute;
	left: -25px;
	top: 40%;
	background-image: none;
	background: none repeat scroll 0 0 #222222;
	border: 4px solid #FFFFFF;
	border-radius: 23px;
	height: 40px;
	width: 40px;
	margin-top: 30px;
}
/* Next button  */
#custom_carousel .der {
	position: absolute;
	right: -25px !important;
	top: 40%;
	left: inherit;
	background-image: none;
	background: none repeat scroll 0 0 #222222;
	border: 4px solid #FFFFFF;
	border-radius: 23px;
	height: 40px;
	width: 40px;
	margin-top: 30px;
}

#custom_carousel .controls {
	overflow: hidden;
	padding: 0;
	margin: 0;
	white-space: nowrap;
	text-align: center;
	position: relative;
	background: #fff;
	border: 0;
}

#custom_carousel .controls .nav {
	padding: 0;
	margin: 0;
	white-space: nowrap;
	text-align: center;
	position: relative;
	background: #fff;
	width: auto;
	border: 0;
}

#custom_carousel .controls li {
	transition: all .5s ease;
	display: inline-block;
	max-width: 100px;
	height: 90px;
	opacity: .5;
}

#custom_carousel .controls li a {
	padding: 0;
}

#custom_carousel .controls li img {
	width: 100%;
	height: auto
}

#custom_carousel .controls li.active {
	background-color: #fff;
	opacity: 1;
}

#custom_carousel .controls a small {
	overflow: hidden;
	display: block;
	font-size: 10px;
	margin-top: 5px;
	font-weight: bold
}
</style>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>


<script>
	$(document)
			.ready(
					function(ev) {

						var lookCate = "movie";

						$("#movie").click(function() {
							lookCate = "movie";

						})

						$("#tv").click(function() {
							lookCate = "TV";

						})

						$("#concert").click(function() {
							lookCate = "concert";

						})

						$("#more")
								.click(
										function() {
											lookCate = "${pageContext.request.contextPath}/entertainment/new/enterList/"
													+ lookCate;
											location.href = lookCate;
										})

						/* $('#my-carousel .goof').click(function(e) {
							$('#soln-slide-1 .goof').removeClass('activate');
							$(this).addClass('activate');
						});

						var items = $(".nav li").length;
						var leftRight = 0;
						if (items > 5) {
							leftRight = (items - 5) * 50 * -1;
						}
						$('#custom_carousel').on(
								'slide.bs.carousel',
								function(evt) {

									$('#custom_carousel .controls li.active')
											.removeClass('active');
									$(
											'#custom_carousel .controls li:eq('
													+ $(evt.relatedTarget)
															.index() + ')')
											.addClass('active');
								})
						$('.nav').draggable({
							axis : "x",
							stop : function() {
								var ml = parseInt($(this).css('left'));
								if (ml > 0)
									$(this).animate({
										left : "0px"
									});
								if (ml < leftRight)
									$(this).animate({
										left : leftRight + "px"
									});

							}

						}); */

					});
</script>

</head>
<body>
	<%-- <%@include file="/WEB-INF/views/header.jsp"%> --%>
	<%@include file="/WEB-INF/views/entertainment/new/enterHeader.jsp"%>

	<!-- 슬라이드 & 검색 -->
	<section class="home">
		<div class="home-slider home-slider-half-page">
			<div class="swiper-wrapper">
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/공연01.PNG)">
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/디즈니콘서트.png)">
				</div>
				<div class="swiper-slide home-slider-centered"
					style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/아리랑.png)">
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
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline"
								action="${pageContext.request.contextPath}/entertainment/enterSearchPage">
								<div class="home-search-row col-md-12"
									style="margin-top: -30px;">
									<div class="home-search-group pt-30 pb-20">
										<div class="form-group col-md-2">
											<select id="type" class="selectpicker" name="lookCate"
												data-live-search="false" title="종류">
												<option>- 종류</option>
												<option value="M">영화</option>
												<option value="T">TV</option>
												<option value="P">공연/연극</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="genre" class="selectpicker" name="lookGenre"
												data-live-search="false" title="장르">
												<option>- 장르</option>
												<option value="1">로맨스</option>
												<option value="2">코미디</option>
												<option value="3">SF</option>
												<option value="4">애니메이션</option>
												<option value="5">스릴러/미스테리</option>
												<option value="6">액션</option>
												<option value="7">공포/호러</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="grade" class="selectpicker" name="lookAge"
												data-live-search="false" title="등급">
												<option>- 등급</option>
												<option value="A">전체</option>
												<option value="B">12세</option>
												<option value="C">15세</option>
												<option value="D">청불</option>
											</select>
										</div>

										<div class="form-group col-md-4">
											<input type="text" id="lookTitle" name="lookTitleS"
												class="form-control" placeholder="제목을 입력하세요" />
										</div>

										<div class="form-group col-md-2">
											<button type="submit" class="btn btn-primary">
												search <span class="ti-angle-right"></span>
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 영화, TV, 뮤지컬 구분 태그 & 슬라이드 -->
	<section class="padding">
		<div class="container">
			<div class="row">
				<div><h2 style="color:white; background-color:#525975; height:70px;">Category</h2></div>
			
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" id="tag" role="tablist">
						<li class="active"><a href="#movieSlide" data-toggle="tab"
							id="movie">Movie</a></li>
						<li class=""><a href="#tvSlide" data-toggle="tab" id="tv">TV</a></li>
						<li class=""><a href="#concertSlide" data-toggle="tab"
							id="concert">Concert</a></li>

					</ul>
					<ul class="nav nav-center mb-5" style="width: 30px;">
						<li><a class="btn" id="more">More</a></li>
						<%--  href="${pageContext.request.contextPath}/entertainment/new/enterList/${lookCate}" --%>
					</ul>


					<!-- movie 이미지 슬라이드 -->
					<div class="tab-content relative">
						<div role="tabpanel" class="tab-pane fade in active"
							id="movieSlide">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">

									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList"
												varStatus="state">
												<c:if test="${infoList.lookCate eq '영화'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<!-- tv 이미지 슬라이드 -->
						<div role="tabpanel" class="tab-pane fade" id="tvSlide">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">

									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList"
												varStatus="state">
												<c:if test="${infoList.lookCate eq 'TV'}">

													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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

						<!-- concert 이미지 슬라이드 -->
						<div role="tabpanel" class="tab-pane fade" id="concertSlide">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">

									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList"
												varStatus="state">
												<c:if test="${infoList.lookCate.substring(0,2) eq '공연'}">

													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
					</div>

				</div>

			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
	</section>
		
		<br><br><br>

	<!-- 장르별 보여주기 -->
	<section class="padding">
		<div class="container">
			<div class="row">
				<h2>&nbsp;&nbsp;&nbsp;&nbsp;Genre</h2>
				
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" id="tag" role="tablist">
						<li class="active"><a href="#slide1" data-toggle="tab" id="s1">멜로/로맨스</a></li>
						<li class=""><a href="#slide2" data-toggle="tab" id="s2">코미디</a></li>
						<li class=""><a href="#slide3" data-toggle="tab" id="s3">SF</a></li>
						<li class=""><a href="#slide4" data-toggle="tab" id="s4">애니메이션</a></li>
						<li class=""><a href="#slide5" data-toggle="tab" id="s5">스릴러/미스테리</a></li>
						<li class=""><a href="#slide6" data-toggle="tab" id="s6">액션</a></li>
						<li class=""><a href="#slide7" data-toggle="tab" id="s7">공포/호러</a></li>
					</ul>
					<div class="tab-content relative">
						<div role="tabpanel" class="tab-pane fade in active" id="slide1">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '멜로/로맨스'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide2">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '코미디'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide3">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq 'SF'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide4">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '애니메이션'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide5">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '스릴러/미스테리'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide6">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '액션'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
						
						<div role="tabpanel" class="tab-pane fade" id="slide7">
							<div class="rooms-slider overflow-hidden">
								<div class="swiper-wrapper">
									<c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookGenre eq '공포/호러'}">
													<div class="swiper-slide">
														<!-- single offer box-->
														<div class="offer-box">
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<div class="offer-box-head">
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}"
																	class="img-thumbnail" style="background-color: #525975;">
																</div>
															</a>
															<span class="h4 offer-box-title">${infoList.lookTitle}</span>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>

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
					</div>
				</div>
			</div>
		</div>
	</section>



				<!-- We will use PrefixFree - a script that takes care of CSS3 vendor prefixes
You can download it from https://leaverou.github.com/prefixfree/ -->
				<script src="http://thecodeplayer.com/uploads/js/prefixfree.js"
					type="text/javascript"></script>

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