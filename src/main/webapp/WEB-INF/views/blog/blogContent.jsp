<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>blogContent</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="<c:url value= '/resources/css/blog/bootstrap.min.css'/>"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value= '/resources/css/blog/blog-post.css'/>"
	rel="stylesheet">

<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/js/blog/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/js/blog/bootstrap.min.js"></script>

<style>
/* 내부 */
.blogTop {
	height: 50px;
	width: 100%;
}

.blogTop tr td:FIRST-CHILD {
	width: 80%;
	text-align: left;
	vertical-align: middle;
}

.blogTop tr td:NTH-CHILD(2) {
	text-align: right;
	vertical-align: bottom;
}
</style>

</head>
<body>
	<c:choose>
		<c:when test="${empty blogCont}">
			<h1>비었음!!</h1>
			<div style="height: 500px"></div>
		</c:when>
		<c:otherwise>
			<!-- Blog Post -->
			<table class="blogTop">
				<tr>
					<td>
						<!-- Title -->
						<h1>${blogCont.blogTitle}</h1>
					</td>
					<td>
						
					
						<!-- Date/Time -->
						<span class="glyphicon glyphicon-time"></span>${blogCont.blogDate}</p>
					</td>
				</tr>
			</table>

			<hr>

			<!-- Preview Image -->
			<img
				src="${pageContext.request.contextPath}/resources/user/${blogCont.id}/blog/${blogCont.blogImg}"
				alt="${blogCont.blogImg}" />

			<hr>

			<!-- Post Content -->
			<p class="lead">${blogCont.blogCont}</p>

			<hr>

			<!-- Blog Comments -->

			<!-- Comments Form -->
			<div class="well">
				<h4>Leave a Comment:</h4>
				<form role="form">
					<div class="form-group">
						<textarea class="form-control" rows="3"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>

			<hr>

			<!-- Posted Comments -->
			<!-- Comment -->
			<div class="media">
				<a class="pull-left" href="#"> <img class="media-object"
					src="http://placehold.it/64x64" alt="">
				</a>
				<div class="media-body">
					<h4 class="media-heading">
						Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
					</h4>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
					in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
					nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					<!-- Nested Comment -->
					<div class="media">
						<a class="pull-left" href="#"> <img class="media-object"
							src="http://placehold.it/64x64" alt="">
						</a>
						<div class="media-body">
							<h4 class="media-heading">
								Nested Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
							</h4>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
							scelerisque ante sollicitudin commodo. Cras purus odio,
							vestibulum in vulputate at, tempus viverra turpis. Fusce
							condimentum nunc ac nisi vulputate fringilla. Donec lacinia
							congue felis in faucibus.
						</div>
					</div>
					<!-- End Nested Comment -->
				</div>
			</div>
		</c:otherwise>
	</c:choose>

</body>
</html>