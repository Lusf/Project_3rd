<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
		$('#locationDropdown li').click(function(){
			var tempText = $(this).text();
			//alert($(this).text());
			$('#dropdownMenu1').text(tempText);
			
			
		})
	})
</script>
<!-- 스크롤 페이징 -->
<script>

	var currentPage = 1;
    function getReadList() { 
        $('#loading').html('데이터 로딩중입니다.');
        //ajax
        $.post("data.html?action=getLastList&lastID=" + $(".list:last").attr("id"),    
        function(data){
            if (data != "") {
                $(".list:last").after(data);            
            }
            $('#loading').empty();
        });
    }; 
    //무한 스크롤
    $(window).scroll(function() { 
        if($(window).scrollTop() == $(document).height() - $(window).height()){
        	currentPage = currentPage+1;
           	 getReadList();
        }
    });  

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

<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list">content</div>

	<div class="list" id="9">content</div>

	<div id="loading"></div>



	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>