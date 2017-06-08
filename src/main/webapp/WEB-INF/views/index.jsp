<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- jquery -->
<script
	src="${pageContext.request.contextPath}/resources/assets/jquery.js"></script>

<!-- wow script -->
<script
	src="${pageContext.request.contextPath}/resources/assets/wow/wow.min.js"></script>


<!-- boostrap -->
<script
	src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.js"
	type="text/javascript"></script>

<!-- jquery mobile -->
<script
	src="${pageContext.request.contextPath}/resources/assets/mobile/touchSwipe.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/respond/respond.js"></script>

<!-- gallery -->
<script
	src="${pageContext.request.contextPath}/resources/assets/gallery/jquery.blueimp-gallery.min.js"></script>

<!-- custom script -->
<script
	src="${pageContext.request.contextPath}/resources/assets/script.js"></script>

<!--  -->

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700'
	rel='stylesheet' type='text/css'>

<!-- font awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/bootstrap/css/bootstrap.min.css'/>" >

<!-- animate.css -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/animate.css'/>" >
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/set.css'/>" >

<!-- gallery -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/gallery/blueimp-gallery.min.css'/>">

<!-- favicon -->
<link rel="shortcut icon"
	href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">
<link rel="icon" href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">

<link rel="stylesheet"
	href="<c:url value= '/resources/assets/main.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style2.css'/>">


<script type="text/javascript">
	var $ = jQuery.noConflict();
	$(function() {
		$('#activator').click(function() {
			$('#box').animate({
				'top' : '0px'
			}, 500);
		});
		$('#boxclose').click(function() {
			$('#box').animate({
				'top' : '-700px'
			}, 500);
		});
	});
	$(document).ready(function() {
		// Hide (Collapse) the toggle containers on load
		$(".toggle_container").hide();
		// Switch the "Open" and "Close" state per click then slide up/down
		// (depending on open/close state)
		$(".trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("slow");
			return false; // Prevent the browser jump to the link anchor
		});

	});
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/header.jsp"%>
	<!---start-header---->

	<!-- works -->
	<div class="clearfix grid" style="padding-top: 6em">

		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeIn" style="width: 100%">
			<img
				src="${pageContext.request.contextPath}/resources/images/portfolio/1.jpg"
				style="width: 100%; height: 70%" /> <figcaption>
			<h1 style="font-size: 4em">Nature</h1>
			<p>
				Lily likes to play with crayons and pencils<br>
			</p>
			</figcaption> </figure>
		</div>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%">
			<img
				src="${pageContext.request.contextPath}/resources/images/portfolio/2.jpg"
				style="width: 100%; height: 70%" /> <figcaption>
			<h1 style="font-size: 4em">Events</h1>
			<p>
				Lily likes to play with crayons and pencils<br>
			</p>
			</figcaption> </figure>

		</div>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">

			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%">
			<img
				src="${pageContext.request.contextPath}/resources/images/portfolio/3.jpg"
				style="width: 100%; height: 70%" /> <figcaption>
			<h1 style="font-size: 4em">music</h1>
			<p>
				Lily likes to play with crayons and pencils<br>
			</p>
			</figcaption> </figure>
		</div>
	</div>

	<!-- works -->




	<div class="footer text-center spacer" style="height: 15%">

		<br> footer입니다

	</div>


	<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
	<div id="blueimp-gallery"
		class="blueimp-gallery blueimp-gallery-controls">
		<!-- The container for the modal slides -->
		<div class="slides"></div>
		<!-- Controls for the borderless lightbox -->
		<h3 class="title">Title</h3>
		<a class="prev">‹</a> <a class="next">›</a> <a class="close">×</a>
		<!-- The modal dialog, which will be used to wrap the lightbox content -->
	</div>


</body>
</html>