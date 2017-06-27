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
.imgList {
	width:530px; height:280px;
	margin: 13px 0;
}
#imgHead {
	width:200px; height:280px;
	padding: 0;
}
#contHead {
	width:330px; height:280px;
	margin-left: 10px;
	background-color: #525975;
}

.contTitle {
	 font-weight: bold;
}
.font {color: white;}

.t1 {
	position: absolute;
	top: 0px;
}
.t2 {
	position: absolute;
	top: 30%;
}
.t3 {
	position: absolute;
	bottom: 0px;
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
	sort = "";
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
					str += "<div class='col-md-6'><div class='offer-box border col-md-3' id='imgHead'>";
					str += "<div class='offer-box-head'>";
					str += "<img src='${pageContext.request.contextPath}/resources/enter/"+item.contentCode+"/photos/"+item.lookImg+"' class='img-thumbnail' style='background-color: #525975;'/>";
					str += "</div></div><div class='offer-box border col-md-3' id='contHead'>";
					str += "<a href='${pageContext.request.contextPath}/entertainment/new/enterDetailView/"+item.contentCode+"'><div style='height: 100%'>";
					str += "<div class='t1'><h3 class='contTitle font'>"+item.lookTitle+"</h3></div>";
					str += "<div class='t2'><h5 class='font'>카테고리: "+item.lookCate+"</h5>";
					str += "<h5 class='font'>장르: "+item.lookGenre+"</h5>";
					str += "<h5 class='font'>등급: "+item.lookAge+"</h5></div>";
					str += "<div class='t3'><h5 class='font'><span class='ti-location-pin'></span>"+item.lookLoca+"</h5>";
					str += "<h5 class='offer-box-meta font'>기간: "+item.lookStartDate+" ~ "+item.lookLastDate+"</h5></div>";
					str += "</div></a></div></div>";
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
									<div class="col-md-4">
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
												<button type="button" class="btn btn-primary"
												 onclick="sortTitle(); return false;"> Title </button>
											</div>
											<div class="form-group col-md-6">
												<button type="button" class="btn btn-primary"
												 onclick="sortNew(); return false;"> New </button>
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
				<div class="col-md-12">
					<div class="pl-0 pr-0">
						<h4 class="heading">Featured adds</h4>
					</div>
					<div class="box" id="searchList">
						<c:if test="${empty list}">
							<h2 class="font">검색결과 없음</h2>
						</c:if>
						<c:if test="${!empty list}">
						<c:forEach items="${list}" var="list">
						<div class="col-md-6 imgList">
							<div class="offer-box border col-md-3" id="imgHead">
								<div class="offer-box-head">
								<img src="${pageContext.request.contextPath}/resources/enter/${list.contentCode}/photos/${list.lookImg}"
										 class="img-thumbnail" style="background-color: #525975;"/>
								</div>
							</div>
							<div class="offer-box border col-md-3" id="contHead">
								<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${list.contentCode}">
								<div>
									<div class="t1"><h3 class="contTitle font">${list.lookTitle}</h3></div>
									<div class="t2">
									<h5 class="font">카테고리: ${list.lookCate}</h5>
									<h5 class="font">장르: ${list.lookGenre}</h5>
									<h5 class="font">등급: ${list.lookAge}</h5>
									</div>
									<div class="t3">
									<h5 class="font"><span class="ti-location-pin"></span>${list.lookLoca}</h5>
									<h5 class="offer-box-meta font">기간: ${list.lookStartDate} ~ ${list.lookLastDate}</h5>
									</div>
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