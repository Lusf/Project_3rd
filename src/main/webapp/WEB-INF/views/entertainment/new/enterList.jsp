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
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
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
<%-- 		
<!-- MovieList -->		
<div class="container">
	<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
	<c:if test="${infoList.lookCate eq 'movie'}">
												
	<div>
	<h3 class="heading">Movie</h3>
	</div>
	
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/${lookInfo.lookImg}" alt="...">
      			<h4 class="text-danger">${lookInfo.lookTitle}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">
      						HEART
      					</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		
		</div>
		<!-- movie끝 -->
		</c:if>
	
	<!-- tv시작 -->
	<c:if test="${infoList.lookCate eq 'tv'}">
												
	<div>
	<h3 class="heading">TV</h3>
	</div>
	
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/tv/${lookInfo.lookImg}" alt="...">
      			<h4 class="text-danger">${lookInfo.lookTitle}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">
      						HEART
      					</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		
		</div>
		<!-- tv끝-->
		</c:if>
		
	<c:if test="${infoList.lookCate eq 'concert'}">
												
	<div>
	<h3 class="heading">concert</h3>
	</div>
	
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${lookInfo.lookImg}" alt="...">
      			<h4 class="text-danger">${lookInfo.lookTitle}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">
      						HEART
      					</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		
		</div>
		<!-- concert끝 -->
		</c:if>
		</c:forEach>
	</div> --%>


 <!-- TV List -->		
<div class="container">
	<div>
	<h3 class="heading">TV</h3>
	</div>
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/캐비.jpg" alt="...">
      			<h4 class="text-danger">캐리비안의 해적</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/악녀.jpg" alt="...">
      			<h4 class="text-danger">악녀</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/원더우먼.jpg" alt="...">
      			<h4 class="text-danger">원더우먼</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
				<span class="thumbnail text-center"> <img
					src="${pageContext.request.contextPath}/resources/images/entertainment/movie/심야.jpg"
					alt="...">
					<h4 class="text-danger">심야</h4>
					<div class="ratings">
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span>
					</div>
					<hr class="line">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<button type="button" class="btn btn-link">Heart</button>
						</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
				</span>
			</div>
		</div>
		<!-- TV끝 -->
	</div>
	
	<!-- concert List -->		
<div class="container">
	<div>
	<h3 class="heading">Concert</h3>
	</div>
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/캐비.jpg" alt="...">
      			<h4 class="text-danger">캐리비안의 해적</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/악녀.jpg" alt="...">
      			<h4 class="text-danger">악녀</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
       				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail text-center">
      			<img src="${pageContext.request.contextPath}/resources/images/entertainment/movie/원더우먼.jpg" alt="...">
      			<h4 class="text-danger">원더우먼</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>



      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<button type="button" class="btn btn-link">Heart</button>
      				</div>
       				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
				<span class="thumbnail text-center"> <img
					src="${pageContext.request.contextPath}/resources/images/entertainment/movie/심야.jpg"
					alt="...">
					<h4 class="text-danger">심야</h4>
					<div class="ratings">
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span>
					</div>
					<hr class="line">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<button type="button" class="btn btn-link">Heart</button>
						</div>
      				<div class="col-md-6 col-sm-6">
      						<a class="btn" href="${pageContext.request.contextPath}/entertainment/new/enterDetailView" >More</a>
      				</div>
				</span>
			</div>
		</div>
		<!-- concert끝 --> 
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