<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">

<style type="text/css">

.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		transition: box-shadow 0.5s;
		background-color: white
		}
				
</style>

</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>

<!--검색 -->
<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="search.html">
								<div class="form-group col-md-1" style="width:120px;float:center" >
									<select id="type" class="selectpicker" data-live-search="false" title="종류" >
										
										<option>영화</option>
										<option>TV</option>
										<option>공연</option>
								
									</select>
								</div>

								<div class="form-group col-md-1"  style="width:200px;float:center">
									<select id="genre" class="selectpicker" data-live-search="false" title="장르" >			
										<option>멜로/로맨스</option>
										<option>코미디</option>
										<option>SF</option>
										<option>애니매이션</option>
										<option>스릴러/미스테리</option>
										<option>액션</option>
										<option>공포/호러</option>
									</select>
								</div>
								
								<div class="form-group col-md-1"  style="width:120px;float:center">
									<select id="grade" class="selectpicker" data-live-search="false" title="등급" >
										<option>전체</option>
										<option>12세</option>
										<option>15세</option>
										<option>청불</option>
									</select>
								</div>

								<div class="form-group col-md-5" style="float:center" >									
									<input type="text" id="textbox" class="form-control" placeholder="" style="width:450px;" />								
								</div>

								<div class="form-group col-md-2" style="float:left">
									<button type="submit" class="btn btn-primary" >search </button>
									<!-- <span class="ti-angle-right"></span> -->
								</div>
							</form>
					    </div>
				    </div>
				</div>
			</div>
		</div>
</section><!-- 검색끝 -->


							
<!--List -->

<div class="container">
	<div class="row">
		<div class="col-md-12 pl-3 pr-3">
		<%-- <h2 class="heading">${lookCate}</h2> --%>
		<h4>*${lookCate}</h4>
		</div>
	</div>
</div>	

<div class="container">
	<div class="row">
    	<c:forEach items="${dbLookInfoList}" var="infoList" varStatus="state">
  		<div class="col-md-3 col-sm-10"> 		
    		<span class="thumbnail text-center">										
				<%-- <c:if test="${lookCate eq '공연' and infoList.lookCate.substring(0,2) eq '공연'}"> --%>
				<c:if test="${infoList.lookCate eq '공연/연극' }">
					<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailConcertView/${infoList.contentCode}" >
						<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >	
					</a>
	      			
		      		<h4 class="text-danger">${infoList.lookTitle}</h4>
	      			<div class="ratings">
	                    <span class="glyphicon glyphicon-star"></span>
	                    <span class="glyphicon glyphicon-star"></span>
	                    <span class="glyphicon glyphicon-star"></span>
	                    <span class="glyphicon glyphicon-star"></span>
	                    <span class="glyphicon glyphicon-star-empty"></span>
	                </div>
	                
		           	<hr class="line">
	      			<div class="row">
	      				<div class="col-md-6 col-sm-6" style="float:right">
	      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailConcertView/${infoList.contentCode}" >More</a>
	      				</div>     				
	      			</div>
	      		</c:if>
	      		
	      		<c:if test="${lookCate eq 'movie' or lookCate eq 'TV'}">
	      		<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}" >
	      			<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >
	      		</a>
      			
      			<h4 class="text-danger">${infoList.lookTitle}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>

      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6" style="float:right">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}" >More</a>
      				</div>     				
      			</div>
      			</c:if>
      			
    		</span>
    		
  		</div>
  		</c:forEach>
  		</div>
	</div>
	
<div class="container">
	<div class="row">
			<!-- pagenation -->
			<div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
				<div class="category-pagination text-center">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
</div>

	

	<script src="<c:url value='/resources/assets/new_theme_mark2/js/wow.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery-1.11.2.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/swiper.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countTo.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.inview.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countdown.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap-select.js'/>"></script>
	<script src="<c:url value='/resources/assets/new_theme_mark2/js/main.js'/>"></script>

</body>
</html>