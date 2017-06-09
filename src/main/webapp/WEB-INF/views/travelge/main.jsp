<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<style>
#title-row {
	margin-top: 6em;
	padding:0.5em 0;
	background-color: #0d47a1;
}
#title-left-grid{
	padding-left: 0em; 
}
#title-right-grid{
	padding-left: 1.5em; 
}
#title-font {
	color:white;
	font-size: 1.5em;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#title-row{
		margin-top: 10em;
		padding:1em 0;

	}
	#title-left-grid{
	padding-left: 1em;
	}	
	#title-right-grid{
	padding-left: 1em; 
	}
	#title-font {
		color:white;
		font-size: 4em;
	}
}
</style>

<body style="background-color: white">
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="row" id="title-row">
		<div class="col-md-offset-2 col-md-4 col-xs-6" id="title-left-grid" >
			<span id="title-font">요즘 화제 어디?</span>
		</div>
		<div class="col-md-offset-3 col-md-2 col-xs-3 col-xs-offset-3" id="title-right-grid"  >
			<span><a href="#" style="text-decoration: none"id="title-font" >더보기+</a></span>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-md-8 col-md-offset-2"
			style="padding-right: 0px; padding-left: 0px">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img
							src="${pageContext.request.contextPath}/resources/images/travelge/recommand/recommand1.jpg"
							style="width: 100%; height: 25em">
					</div>

					<div class="item">
						<img
							src="${pageContext.request.contextPath}/resources/images/travelge/recommand/recommand2.jpg"
							style="width: 100%; height: 25em">
					</div>

					<div class="item">
						<img
							src="${pageContext.request.contextPath}/resources/images/travelge/recommand/recommand3.jpg"
							style="width: 100%; height: 25em">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>

	</div>


	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>