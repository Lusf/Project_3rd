<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Blog Post -->
<c:forEach items="${list}" var="list">
	<table class="blogTop">
		<tr>
			<td>
				<!-- Title -->
				<h1>${list.blogTitle}</h1>
			</td>
			<td>
				<!-- Date/Time -->
				<p>
					<span class="glyphicon glyphicon-time"></span>${list.blogDate}</p>
			</td>
		</tr>
	</table>

	<hr>

	<!-- Preview Image -->
	<img
		src="${pageContext.request.contextPath}/resources/user/${list.id}/blog/${list.blogImg}" />

	<hr>

	<!-- Post Content -->
	<p class="lead">${list.blogCont}</p>

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
			scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in
			vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
			vulputate fringilla. Donec lacinia congue felis in faucibus.
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
					scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
					in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
					nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>
			<!-- End Nested Comment -->
		</div>
	</div>

</c:forEach>