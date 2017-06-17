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
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/공연01.PNG)">            	
	            </div>
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/디즈니콘서트.png)">
				</div>
			    <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/아리랑.png)">
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
								<div class="form-group col-md-1" style="width:120px;float:center" >
									<select id="type" class="selectpicker" data-live-search="false" title="종류" >
										
										<option>영화</option>
										<option>TV</option>
										<option>공연</option>
								
									</select>
								</div>

								<div class="form-group col-md-1"  style="width:200px;float:center">
									<select id="genre" class="selectpicker" data-live-search="false" title="장르" >			
										<option>멜로/로맨스</option>
										<option>코미디</option>
										<option>SF</option>
										<option>애니매이션</option>
										<option>스릴러/미스테리</option>
										<option>액션</option>
										<option>공포/호러</option>
									</select>
								</div>
								
								<div class="form-group col-md-1"  style="width:120px;float:center">
									<select id="grade" class="selectpicker" data-live-search="false" title="등급" >
										<option>전체</option>
										<option>12세</option>
										<option>15세</option>
										<option>청불</option>
									</select>
								</div>

								<div class="form-group col-md-5" style="float:center" >									
									<input type="text" id="textbox" class="form-control" placeholder="" style="width:450px;" />								
								</div>

								<div class="form-group col-md-2" style="float:left">
									<button type="submit" class="btn btn-primary" >search </button>
									<!-- <span class="ti-angle-right"></span> -->
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
					<ul class="nav nav-center mb-5" style="width:30px;">
						<li><a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterList" >More</a></li>
					</ul>
					
					<!-- movie 이미지 슬라이드 -->
					<div class="tab-content relative">
	              		<div role="tabpanel" class="tab-pane fade in active" id="movie">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							        
							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate eq 'movie'}">
												
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
																<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																	<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/${infoList.lookImg}" >																																												
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
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

	              		<div role="tabpanel" class="tab-pane fade" id="TV">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							        
							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate eq 'tv'}">
												
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
																<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																	<img src="${pageContext.request.contextPath}/resources/images/entertainment/TV/${infoList.lookImg}" >																																												
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
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

	              		<div role="tabpanel" class="tab-pane fade" id="concert">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							        
							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate eq 'concert'}">
												
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
																<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																	<img src="${pageContext.request.contextPath}/resources/images/entertainment/TV/${infoList.lookImg}" >																																												
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterList"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
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