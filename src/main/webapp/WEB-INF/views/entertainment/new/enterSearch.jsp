<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Entertainment Search</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline"
								action="${pageContext.request.contextPath}/entertainment/enterSearch">
								<div class="home-search-row col-md-12" style="margin-top:-30px;">
									<div class="home-search-group pt-30 pb-20">
										<div class="form-group col-md-2">
											<select id="type" class="selectpicker" name="lookCate"
												data-live-search="false" title="종류">
												<option value="M">영화</option>
												<option value="T">TV</option>
												<option value="P">공연/연극</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="genre" class="selectpicker" name="lookGenre"
												data-live-search="false" title="장르">
												<option value="1">멜로/로맨스</option>
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
												<option value="A">전체</option>
												<option value="B">12세</option>
												<option value="C">15세</option>
												<option value="D">청불</option>
											</select>
										</div>

										<div class="form-group col-md-4">
											<input type="text" id="textbox" class="form-control"
												placeholder="검색어를 입력하세요"/>
										</div>

										<div class="form-group col-md-2">
											<button type="submit" class="btn btn-primary">
												search <span class="ti-angle-right"></span>
											</button>
										</div>
									</div>
								</div>

								<div class="home-search-row">
									<!-- StartDate -->
									<div class="col-md-4">
										<div class="home-search-group">
											<div class="col-md-12">
												<h6>Start Date</h6>
											</div>
											<div class="form-group col-md-6">
												<select id="price-from" class="selectpicker"
													data-live-search="true" title="Year">
													<c:forEach begin="0" end="17" var="yy">
														<option value="${2000+yy}">${2000+yy}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group col-md-6">
												<select id="price-to" class="selectpicker"
													data-live-search="true" title="Month">
													<c:forEach begin="1" end="12" var="mm">
														<option value="${mm}">${mm}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
									
									<!-- LastDate -->
									<div class="col-md-4">
										<div class="home-search-group">
											<div class="col-md-12">
												<h6>Last Date</h6>
											</div>
											<div class="form-group col-md-6">
												<select id="price-from" class="selectpicker"
													data-live-search="true" title="Year">
													<c:forEach begin="0" end="17" var="yy">
														<option value="${2000+yy}">${2000+yy}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group col-md-6">
												<select id="price-to" class="selectpicker"
													data-live-search="true" title="Month">
													<c:forEach begin="1" end="12" var="mm">
														<option value="${mm}">${mm}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
									

									<div class="col-md-4">
										<div class="home-search-group">
											<div class="col-md-12">
												<h6>Ty</h6>
											</div>
											<div class="form-group col-md-4">
												<button type="button" class="btn btn-primary">Movie</button>
											</div>
											<div class="form-group col-md-4">
												<button type="button" class="btn btn-primary">TV</button>
											</div>
											<div class="form-group col-md-4">
												<button type="button" class="btn btn-primary">Play</button>
											</div>
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

	<section class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 sidebar">
					<div class="sidebar-box">
						<div class="col-md-12">
							<h5 class="mb-15">Sort</h5>
						</div>
						<ul>
							<li><h5 class="mb-15"><a href="#">Name</a></h5></li>
							<li><h5 class="mb-15"><a href="#">New</a></h5></a></li>
							<li><h5 class="mb-15"><a href="#">Score</a></h5></a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-9">
					<div class="col-md-12 pl-0 pr-0">
						<h4 class="heading ">Featured adds</h4>
					</div>
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
							<div class="offer-box-head">
								<div class="offer-slider">
									<h1>IMG</h1>
								</div>
							</div>
							<a href="#">
								<span class="h3">lookTitle</span><br><br>
								<span class="">lookCate</span><br>
								<span class="">lookGenre</span><br>
								<span class="">lookAge</span><br><br>
								<span class="offer-box-location"><span class="ti-location-pin"></span>lookLoca</span>
								<span class="offer-box-meta">StartDate ~ LastDate</span>
							</a>
						</div>
					</div>
					<!-- / single offer box-->


					<!-- page -->
					<div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
						<div class="category-pagination text-center">
							<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
					
				</div>
				<!--/ col-md-9-->
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
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
						+1-222-333-4444 <br> E-mail: <a class="__cf_email__"
							href="/cdn-cgi/l/email-protection"
							data-cfemail="ea858c8c83898faa8b9a8b989ec4898587">[email&#160;protected]</a>
						<script data-cfhash='f9e31' type="text/javascript">
							/* <![CDATA[ */!function(t, e, r, n, c, a, p) {
								try {
									t = document.currentScript
											|| function() {
												for (
														t = document
																.getElementsByTagName('script'),
														e = t.length; e--;)
													if (t[e]
															.getAttribute('data-cfhash'))
														return t[e]
											}();
									if (t && (c = t.previousSibling)) {
										p = t.parentNode;
										if (a = c.getAttribute('data-cfemail')) {
											for (e = '', r = '0x'
													+ a.substr(0, 2) | 0, n = 2; a.length
													- n; n += 2)
												e += '%'
														+ ('0' + ('0x'
																+ a
																		.substr(
																				n,
																				2) ^ r)
																.toString(16))
																.slice(-2);
											p
													.replaceChild(
															document
																	.createTextNode(decodeURIComponent(e)),
															c)
										}
										p.removeChild(t)
									}
								} catch (u) {
								}
							}()/* ]]> */
						</script>
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
	<script src="assets/js/wow.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="assets/js/jquery-1.11.2.min.js"><\/script>')
	</script>
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