<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
</style>
<script>
 	$(document).ready(function() {
		$('.carousel').carousel({
			interval : 4000
		})
	});
</script>

<div class="clearfix grid" id="indexGrid">
	<h1>HelloHoHo</h1>
</div>

<!-- 왔다갔다 -->
<div class="container">
	<div class="col-xs-12">

		<div class="page-header">
			<h3>♥</h3>
		</div>

		<div class="carousel slide" id="myCarousel">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
					<c:forEach begin="1" end="4" varStatus="state">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img
										src="${pageContext.request.contextPath}/resources/images/entertainment/캐비.jpg"
										alt=""></a>
										<h1>${state.count}</h1>
								</div>

							</div>
						</li>
					</c:forEach>
					</ul>
				</div>
				<!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img
										src="${pageContext.request.contextPath}/resources/images/entertainment/심야.jpg"
										alt=""></a>
								</div>

							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img
										src="${pageContext.request.contextPath}/resources/images/entertainment/원더우먼.jpg"
										alt=""></a>
								</div>

							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img
										src="${pageContext.request.contextPath}/resources/images/entertainment/미이라.jpg"
										alt=""></a>
								</div>

							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img
										src="${pageContext.request.contextPath}/resources/images/entertainment/베이블레.jpg"
										alt=""></a>
								</div>

							</div>
						</li>
					</ul>
				</div>
				<!-- /Slide3 -->
			</div>


			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-right"></i></li>
				</ul>
			</nav>
			<!-- /.control-box -->

		</div>
		<!-- /#myCarousel -->

	</div>
	<!-- /.col-xs-12 -->

</div>
<!-- /.container -->