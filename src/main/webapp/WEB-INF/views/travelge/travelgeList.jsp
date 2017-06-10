<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#title-row {
	margin-top: 6em;
	padding: 0.5em 0;
	background-color: #0d47a1;
	text-align: center;
}

#title-font {
	color: white;
	font-size: 1.5em;
	margin: 0 3.5em;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#title-row {
		margin-top: 10em;
		padding: 1em 0;
		background-color: #0d47a1;
	}
	#title-font {
		color: white;
		font-size: 4em;
		margin: 0 0.3em;
	}
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>


	<div class="row" id="title-row">
		<span id="title-font">관광지</span> <span id="title-font">숙박</span> <span
			id="title-font">문화</span> <span id="title-font">레포츠</span>
	</div>



	<div class="row">
		<div class="col-xs-12 col-md-8 col-md-offset-2"
			style="padding-right: 0px; padding-left: 0px">
			<div class="card horizontal">
				<div class="card-image">
					<img src="http://lorempixel.com/100/190/nature/6">
				</div>
				<div class="card-stacked">
					<div class="card-content">
						<p>I am a very simple card. I am good at containing small bits
							of information.</p>
					</div>
					<div class="card-action">
						<a href="#">This is a link</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-md-8 col-md-offset-2"
			style="padding-right: 0px; padding-left: 0px">
			<div class="card horizontal">
				<div class="card-image">
					<img src="http://lorempixel.com/100/190/nature/6">
				</div>
				<div class="card-stacked">
					<div class="card-content">
						<p>I am a very simple card. I am good at containing small bits
							of information.</p>
					</div>
					<div class="card-action">
						<a href="#">This is a link</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-md-8 col-md-offset-2"
			style="padding-right: 0px; padding-left: 0px">
			<div class="card horizontal">
				<div class="card-image">
					<img src="http://lorempixel.com/100/190/nature/6">
				</div>
				<div class="card-stacked">
					<div class="card-content">
						<p>I am a very simple card. I am good at containing small bits
							of information.</p>
					</div>
					<div class="card-action">
						<a href="#">This is a link</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>