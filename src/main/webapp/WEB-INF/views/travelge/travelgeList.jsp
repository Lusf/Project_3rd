<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="http://twitter.github.com/bootstrap/assets/js/bootstrap-tab.js"></script>
<style>
#title-row {
	margin-top: 6em;
	padding: 0.5em 0;
	text-align: center;
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
	$(document).ready(function() {
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		})
		$('#locationDropdown li').click(function() {
			var tempText = $(this).text();
			//alert($(this).text());
			$('#dropdownMenu1').text(tempText);

		})
	})
</script>
<!-- 스크롤 페이징 -->
<script>
	var currentPage = 1;
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");

	function getReadList() {
		$('#loading').html('데이터 로딩중입니다.');
		//ajax
		$.ajax({
			url : "${pageContext.request.contextPath}/travelge/travelgeInfoScroll",
			type : "post",
			dataType : "json",
			data : "index=" + currentPage,
			beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
				xhr.setRequestHeader(header, token)
			},

			success : function(result) {
	            		console.log("result = " + result);
	            		var str = "";
	            		$.each(result, function(index, item){
	            			str+= "<span class='scrollPaging'>"+item.contentCode+"<br/></span>";
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
	//무한 스크롤
	$(window).scroll(
			function() {
				if ($(window).scrollTop() > $(document).height()
						- $(window).height()-0.1) {
					currentPage = currentPage+1;
					getReadList();
				}
			});
	getReadList();
</script>
</head>
<body style="background-color: black">
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="row" id="title-row"></div>

	<div class="col-md-offset-5 col-md-2">
		<div class="dropdown" role="presentation" style="width: 100%">
			<button class="btn btn-default dropdown-toggle" type="button"
				id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="true" style="width: 100%">
				전국 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
				id="locationDropdown">
				<li><a href="#">전국</a></li>
				<li><a href="#">서울</a></li>
				<li><a href="#">경기/인천</a></li>
				<li><a href="#">충북/대전</a></li>
				<li><a href="#">충남/세종</a></li>
				<li><a href="#">부산</a></li>
				<li><a href="#">경북/대구</a></li>
				<li><a href="#">경남/울산</a></li>
				<li><a href="#">전북</a></li>
				<li><a href="#">전남/광주</a></li>
				<li><a href="#">제주도</a></li>
			</ul>
		</div>
	</div>
	<div class="row"></div>
	<!-- Tab Title -->
	<ul id="myTab" class="nav nav-tabs">
		<li role="presentation" class="active"><a href="#home1"
			aria-controls="home" role="tab" data-toggle="tab">관광지</a></li>
		<li role="presentation"><a href="#lodgement"
			aria-controls="profile" role="tab" data-toggle="tab">숙박</a></li>
		<li role="presentation"><a href="#cultures"
			aria-controls="messages" role="tab" data-toggle="tab">문화</a></li>
		<li role="presentation"><a href="#leports"
			aria-controls="settings" role="tab" data-toggle="tab">레포츠</a></li>
	</ul>

	<!-- Tab Contents -->
	<div id="myTabContent" class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="home1">관광지</div>
		<div role="tabpanel" class="tab-pane" id="lodgement">숙박</div>
		<div role="tabpanel" class="tab-pane" id="cultures">문화</div>
		<div role="tabpanel" class="tab-pane" id="leports">레포츠</div>
	</div>

	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<span class="scrollPaging"></span>

	<div id="loading"></div>



	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>