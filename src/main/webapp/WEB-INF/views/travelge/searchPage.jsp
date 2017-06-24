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
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
#title-row {
	margin-top: 6em;
	padding: 0.5em 0;
	text-align: center;
}

.home {
	top: 1.4em;
}

#list-selector {
	position: fixed;
	width: 100%;
	top: 6em;
	z-index: 999;
	border-top: 1px grey solid;
	padding: 0.5em;
	text-align: center;
}

#locationDropdown li:hover {
	background-color: red;
	cursor: pointer;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#title-row {
		margin-top: 10em;
		padding: 1em 0;
		background-color: #0d47a1;
	}
}
</style>
<script>
	var currentPage = 1;
	var currentTheme = '전체';
	var currentRegion = '전국';
	var keyword;

	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");

	$(document).ready(function() {
		$('#locationDropdown li').click(function() {
			var tempText = $(this).text();
			$('#dropdownMenu1').text(tempText);
			currentPage = 1;
			currentRegion = tempText;


		})
		$('#themeDropdown li').click(function() {
			var tempText = $(this).text();
			$('#dropdownMenu2').text(tempText);
			currentPage = 1;
			currentTheme = tempText;

		})
	})

	
	
	
	
	
	function getReadList() {
		keyword=$("#keyword").val();
		$('#loading').html('데이터 로딩중입니다.');
		//ajax
		$.ajax({
					url : "${pageContext.request.contextPath}/travelge/travelgeSearchScroll",
					type : "post",
					dataType : "json",
					data : "index=" + currentPage + "&currentRegion="
							+ currentRegion + "&currentTheme=" + currentTheme +"&keyword="+keyword,
					beforeSend : function(xhr) { 
						xhr.setRequestHeader(header, token)						
					},
					success : function(result) {
						console.log("result = " + result);
						var str = "";
						$.each(result, function(index, item) {
							str += makeCard(item, index);
						})
						if (result != "") {
							$(".scrollPaging:last").after(str);
						}
						$('#loading').empty();
					},
					error : function(err) {
						alert("오류 발생 : " + err);
					}
				}); 
	};
	function makeCard(item, index) {
		var contentCode = item.contentCode;
		var str = "";
		str += "<div class='row scrollPaging'>";
		str += "<div class='col-md-offset-1 col-md-10'>";

		str += "<div class='thumbnail'style='height: 7em; background-color:white; border:4px solid #ecebeb''>";
		str += "<img src='${pageContext.request.contextPath}/resources/travelge/"+contentCode+"/photos/"+item.travelgePhotos+"' style='float: left; height: 100%;'>";
		str += "<div>";
		str += "<a href='${pageContext.request.contextPath}/travelge/detailView/"+contentCode+"'>"
		str += "<h4 style='color : black; font-weight : 700'>" + item.travelgeName + "</h4>";
		str += "<span>" + item.travelgeAddr + " </span>";
		str += "</a>";
	
			if (item.wish_list == 1) {
				str += "<span style='float:right' id='wishlist'><span style='display:none'>"
						+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer'>favorite</i></span>"
			} else {
				str += "<span style='float:right' id='wishlist'><span style='display:none'>"
						+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer'>favorite_border</i></span>"
			}
		
		str += "<br>";
		str += "<span><i class='material-icons' style='vertical-align:sub; font-size:18px'>star</i>"
				+ item.avgScoreVo.score + "    </span>";
		str += "<span><i class='material-icons' style='vertical-align:bottom; font-size:18px'>messenger</i>"+item.commentCount+"</span>";		
		str += "</div>";
		str += "</div>";
		str += "</div>";
		str += "</div>";
		
		return str;
	};
	
	$(document)
	.on(
			'click',
			'#wishlist',
			function() {
				var contentCode = $(this).children().first().text();
				var heart = $(this);

				$
						.ajax({
							url : "${pageContext.request.contextPath}/travelge/travelgeWishListUpdate",
							type : "post",
							dataType : "text",
							data : "contentCode=" + contentCode,
							beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
								xhr.setRequestHeader(header, token)
							},
							success : function(result) {
								if (result == '1') {
									heart.html("<span style='display:none'>"
											+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer'>favorite</i>");
								} else {
									
									heart.html("<span style='display:none'>"
											+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer'>favorite_border</i>");
							
								}
							},
							error : function(err) {
								alert("오류 발생 : " + err);
							}
						});
			})
			
					
	function searchAjax(){
		$(".scrollPaging:gt(0)").remove();
		
		getReadList();
	}
	//무한 스크롤
	$(window).scroll(
			function() {
				if ($(window).scrollTop() > $(document).height()
						- $(window).height() - 1) {
					currentPage = currentPage + 1;
					getReadList();
				}
			});
</script>


</head>
<body>

	<%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>

		<div class="box home-search">
			<div class="container">
				<div class="box">
					<form class="form-inline" onsubmit="searchAjax(); return false;">
						<div class="dropdown col-md-2" role="presentation">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true" style="width: 100%">
								전국 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
								id="locationDropdown">
								<li><a>전국</a></li>
								<li><a>서울</a></li>
								<li><a>경기/인천</a></li>
								<li><a>충북/대전</a></li>
								<li><a>충남/세종</a></li>
								<li><a>부산</a></li>
								<li><a>경북/대구</a></li>
								<li><a>경남/울산</a></li>
								<li><a>전북</a></li>
								<li><a>전남/광주</a></li>
								<li><a>제주도</a></li>
							</ul>
						</div>

						<div class="dropdown col-md-2" role="presentation">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true" style="width: 100%">
								전체 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu2"
								id="themeDropdown">
								<li><a>전체</a></li>
								<li><a>관광지</a></li>
								<li><a>숙박</a></li>
								<li><a>문화</a></li>
								<li><a>레포츠</a></li>
							</ul>
						</div>

						<div class="form-group col-md-6">
							<input type="text" class="form-control" placeholder="통합 검색"
								id="keyword" />
						</div>

						<div class="form-group col-md-2">
							<button type="submit" class="btn btn-primary">
								search <span class="ti-angle-right"></span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	<div class="row" id="title-row"></div>
	<div class="scrollPaging" id="first-scroll"></div>

	<div id="loading"></div>

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