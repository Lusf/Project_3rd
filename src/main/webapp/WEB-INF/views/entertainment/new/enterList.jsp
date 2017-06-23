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
							<form class="form-inline" action="${pageContext.request.contextPath}/entertainment/enterSearchPage">
								<div class="home-search-row col-md-12" style="margin-top:-30px;">
									<div class="home-search-group pt-30 pb-20">
										<div class="form-group col-md-2">
											<select id="type" class="selectpicker" name="lookCate"
												data-live-search="false" title="종류">
												<option value="M">영화</option>
												<option value="T">TV</option>
												<option value="P">공연/연극</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="genre" class="selectpicker" name="lookGenre"
												data-live-search="false" title="장르">
												<option value="1">멜로/로맨스</option>
												<option value="2">코미디</option>
												<option value="3">SF</option>
												<option value="4">애니메이션</option>
												<option value="5">스릴러/미스테리</option>
												<option value="6">액션</option>
												<option value="7">공포/호러</option>
											</select>
										</div>

										<div class="form-group col-md-2">
											<select id="grade" class="selectpicker" name="lookAge"
												data-live-search="false" title="등급">
												<option value="A">전체</option>
												<option value="B">12세</option>
												<option value="C">15세</option>
												<option value="D">청불</option>
											</select>
										</div>

										<div class="form-group col-md-4">
											<input type="text" id="lookTitle" name="lookTitleS" class="form-control"
												placeholder="제목을 입력하세요"/>
										</div>

										<div class="form-group col-md-2">
											<button type="submit" class="btn btn-primary">
												search <span class="ti-angle-right"></span>
											</button>
										</div>
									</div>
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
				<c:choose>
				<c:when test="${infoList.lookCate eq '공연/연극' }">
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
	      		</c:when>
	      		
	      		<c:when test="${infoList.lookCate eq '영화'}">
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
      			</c:when>
      			
      			<c:when test="${infoList.lookCate eq 'TV'  and lookCate eq 'TV'}">
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
      			</c:when>
      			</c:choose>
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