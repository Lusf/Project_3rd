<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>

<!-- 슬라이드 & 검색 -->
	<section class="home">
		<div class="home-slider home-slider-half-page">
	        <div class="swiper-wrapper">
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/slider/slide4.jpg)">
	           		<h1 class="light wow fadeInDown mb-30">over 430 000<br/> flats, houses, plots</h1>
	            	<a class="btn btn-primary wow fadeInUp">browse <span class="ti-arrow-right light"></span></a>
	            </div>
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/slider/slide5.jpg)">
	            	<h1 class="light wow fadeInDown mb-30">over 430 000<br/> flats, houses, plots</h1>
	            	<a class="btn btn-primary wow fadeInUp">browse <span class="ti-arrow-right light"></span></a>
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
							<form class="form-inline" action="search.html">
								<div class="form-group col-md-1">
									<select id="type1" class="selectpicker" data-live-search="false" title="전국">
										<optgroup label="종류선택" disabled>
										<option>영화</option>
										<option>TV</option>
										<option>공연</option>
										</optgroup>
									</select>
								</div>

								<div class="form-group col-md-2">
									<select id="type2" class="selectpicker" data-live-search="false" title="음식 종류">
										<option value=''>장르</option>
										<option>멜로/로맨스</option>
										<option>코미디</option>
										<option>SF</option>
										<option>애니매이션</option>
										<option>스릴러/미스테리</option>
										<option>액션</option>
										<option>공포/호러</option>
									</select>
								</div>
								
								<div class="form-group col-md-2">
									<select id="type3" class="selectpicker" data-live-search="false" title="음식 종류">
										<option value=''>관람등급</option>
										<option>전체</option>
										<option>12세</option>
										<option>15</option>
										<option>애니매이션</option>
										<option>스릴러/미스테리</option>
										<option>액션</option>
										<option>공포/호러</option>
									</select>
								</div>

								<div class="form-group col-md-6">
									<input type="text" class="form-control" placeholder="" />
								</div>

								<div class="form-group col-md-2">
									<button type="submit" class="btn btn-primary">search <span class="ti-angle-right"></span></button>
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
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" role="tablist">
						<li class="active"><a href="#movie" data-toggle="tab">Movie</a></li>
						<li class=""><a href="#TV" data-toggle="tab">TV</a></li>
						<li class="" ><a href="#concert" data-toggle="tab">Concert</a></li>
					</ul>
					<div class="tab-content relative">
	              		<div role="tabpanel" class="tab-pane fade in active" id="movie">
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

	              		<div role="tabpanel" class="tab-pane fade" id="TV">
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

	              		<div role="tabpanel" class="tab-pane fade" id="concert">
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
	</section>
	
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