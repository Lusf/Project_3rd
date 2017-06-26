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

<style>
#imgList {
	width:277px; height:380px;
	padding: 0;
	margin: 30px 15px;
}
.font {}

.imgHead:hover > .contHead {
	opacity: 0;
	transition: opacity 1s
}
.imgHead:hover > .contHead {
	opacity: 1;
}
</style>

<script>

var sort = "";

function sortTitle(){
	sort = "title";
	searchEnter();
}
function sortNew(){
	sort = "new";
	searchEnter();
}

function searchEnter(){
	$.ajax({
		url : "${pageContext.request.contextPath}/entertainment/entSearch",
		type : "post",
		data : $("form").serialize()+"&sort="+sort,
		dataType : "json",
		success : function(result) {
			$("#searchList").empty();

			var str = "";

			if(result.length == 0)
				str += "<h2>검색결과 없음</h2>";
			else{
				$.each(result, function(index, item) {
					str += "<div class='offer-box border col-md-3' id='imgList'>";
					str += "<div class='offer-box-head imgHead' id='img"+item.contentCode+"' style='display:none;'>";
					str += "<img src='${pageContext.request.contextPath}/resources/enter/"+item.contentCode+"/photos/"+item.lookImg+"' class='img-thumbnail'/>";
					str += "</div><div id='cont"+item.contentCode+"' class='contHead'>";
					str += "<a href='${pageContext.request.contextPath}/entertainment/new/enterDetailView/"+item.contentCode+"'>";
					str += "<span class='h4 offer-box-title font'>"+item.lookTitle+"</span><br><br>";
					str += "<span class='font'>카테고리: "+item.lookCate+"</span><br>";
					str += "<span class='font'>장르: "+item.lookGenre+"</span><br>";
					str += "<span class='font'>등급: "+item.lookAge+"</span><br><br>";
					str += "<span class='offer-box-location font'><span class='ti-location-pin'></span>"+item.lookLoca+"</span>";
					str += "<span class='offer-box-meta font'>기간: "+item.lookStartDate+" ~ "+item.lookLastDate+"</span>";
					str += "</a></div></div>";
				});
			}

			$("#searchList").append(str);
			
			cont();
		},
		error : function(err) {
			console.log("오류발생: " + err)
		}
	});
};


function click(state){
	var st = state;
	
	alert(st);
}
</script>
	
</head>
<body>
	<%@include file="/WEB-INF/views/entertainment/new/enterHeader.jsp"%>

	<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" onsubmit="searchEnter(); return false;">
								<div class="home-search-row col-md-12" style="margin-top:-30px;">
									<div class="home-search-group pt-30 pb-20">
										<div class="form-group col-md-2">
											<select id="type" class="selectpicker" name="lookCate"
												data-live-search="false" title="종류">
												<option> - 종류</option>
												<option value="M">영화</option>
												<option value="T">TV</option>
												<option value="P">공연/연극</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="genre" class="selectpicker" name="lookGenre"
												data-live-search="false" title="장르">
												<option> - 장르</option>
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
												<option> - 등급</option>
												<option value="A">전체</option>
												<option value="B">12세</option>
												<option value="C">15세</option>
												<option value="D">청불</option>
											</select>
										</div>

										<div class="form-group col-md-4">
											<input type="text" id="lookTitle" name="lookTitle" class="form-control"
												placeholder="제목을 입력하세요"/>
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
									<div class="col-md-5">
										<div class="home-search-group">
											<div class="col-md-12">
												<h6>Year / Month</h6>
											</div>
											<div class="form-group col-md-6">
												<select id="price-from" class="selectpicker" id="searchYear"
													data-live-search="true" title="Year" name="searchYear">
													<c:forEach begin="10" end="17" var="yy">
														<option value="${2000+yy}">${2000+yy}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group col-md-6">
												<select id="price-to" class="selectpicker" id="searchMonth"
													data-live-search="true" title="Month" name="searchMonth">
													<c:forEach begin="1" end="9" var="mm">
														<option value="0${mm}">${mm}</option>
													</c:forEach>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>
											</div>
										</div>
									</div>
									
									<!-- Sort -->
									<div class="col-md-4">
										<div class="home-search-group">
											<div class="col-md-12">
												<h6>Sort</h6>
											</div>
											<div class="form-group col-md-6">
												<h5 class="mb-15"><a href="javascript:;" onclick="sortTitle(); return false;">Title</a></h5>
											</div>
											<div class="form-group col-md-6">
												<h5 class="mb-15"><a href="javascript:;" onclick="sortNew(); return false;">New</a></h5>
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
				<div class="col-md-3 sidebar" style="width:200px;">
					<div class="sidebar-box">
						<div class="col-md-12">
							<h5 class="mb-15">Sort</h5>
						</div>
						<ul>
							<li><h5 class="mb-15"><a href="javascript:;" onclick="sortTitle(); return false;">Title</a></h5></li>
							<li><h5 class="mb-15"><a href="javascript:;" onclick="sortNew(); return false;">New</a></h5></li>
						</ul>
					</div>
				</div>

				<div class="col-md-9" style="width:82%;">
					<div class="pl-0 pr-0">
						<h4 class="heading">Featured adds</h4>
					</div>
					<div class="box" id="searchList">
						<c:if test="${empty list}">
							<h2 class="font">검색결과 없음</h2>
						</c:if>
						<c:if test="${!empty list}">
						<c:forEach items="${list}" var="list">
							<div class="offer-box border col-md-3" id="imgList" onclick="click(0); return false;">
								<div class="offer-box-head imgHead" id="img${list.contentCode}" style="display:none;">
									<img src="${pageContext.request.contextPath}/resources/enter/${list.contentCode}/photos/${list.lookImg}"
										 class="img-thumbnail"/>
								</div>
								<div id="cont${list.contentCode}" class="contHead">
									<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${list.contentCode}">
									<div>
										<span class="h4 offer-box-title font">${list.lookTitle}</span><br><br>
										<span class="font">카테고리: ${list.lookCate}</span><br>
										<span class="font">장르: ${list.lookGenre}</span><br>
										<span class="font">등급: ${list.lookAge}</span><br><br>
										<span class="offer-box-location font"><span class="ti-location-pin"></span>${list.lookLoca}</span>
										<span class="offer-box-meta font">기간: ${list.lookStartDate} ~ ${list.lookLastDate}</span>
									</div>
									</a>
								</div>
							</div>
						</c:forEach>
						</c:if>
					</div>
					<!-- / single offer box-->
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