<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterDetailView.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterVideoSliderView.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterScSlide.css' />">
<link rel="stylesheet" href="<c:url value='/resources/js/enter/enterScSlide.js' />">
<script src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>

<!-- slide css -->
<style>
/*Time for the CSS*/
* {margin: 0; padding: 0;}
body {background: #ccc;}

.slider{
	width: 200px; /*Same as width of the large image*/
	position: relative;
	/*Instead of height we will use padding*/
	padding-top: 320px; /*That helps bring the labels down*/
	
	margin: 100px auto;
	
	/*Lets add a shadow*/
	box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.75);
}


/*Last thing remaining is to add transitions*/
.slider>img{
	position: absolute;
	left: 0; top: 0;
	transition: all 0.5s;
}

.slider input[name='slide_switch'] {
	display: none;
}

.slider label {
	/*Lets add some spacing for the thumbnails*/
	margin: 18px 0 0 18px;
	border: 3px solid #999;
	
	float: left;
	cursor: pointer;
	transition: all 0.5s;
	
	/*Default style = low opacity*/
	opacity: 0.6;
}

.slider label img{
	display: block;
}

/*Time to add the click effects*/
.slider input[name='slide_switch']:checked+label {
	border-color: #666;
	opacity: 1;
}
/*Clicking any thumbnail now should change its opacity(style)*/
/*Time to work on the main images*/
.slider input[name='slide_switch'] ~ img {
	opacity: 0;
	transform: scale(1.1);
}
/*That hides all main images at a 110% size
On click the images will be displayed at normal size to complete the effect
*/
.slider input[name='slide_switch']:checked+label+img {
	opacity: 1;
	transform: scale(1);
	

.video{
	width: 640px; /*Same as width of the large image*/
	position: relative;
	/*Instead of height we will use padding*/
	padding-top: 320px; /*That helps bring the labels down*/
	
	margin: 100px auto;
	
	/*Lets add a shadow*/
	box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.75);
}


/*Last thing remaining is to add transitions*/
.video>img{
	position: absolute;
	left: 0; top: 0;
	transition: all 0.5s;
}

.video input[name='slide_switch'] {
	display: none;
}

.video label {
	/*Lets add some spacing for the thumbnails*/
	margin: 18px 0 0 18px;
	border: 3px solid #999;
	
	float: left;
	cursor: pointer;
	transition: all 0.5s;
	
	/*Default style = low opacity*/
	opacity: 0.6;
}

.video label img{
	display: block;
}

/*Time to add the click effects*/
.video input[name='slide_switch']:checked+label {
	border-color: #666;
	opacity: 1;
}
/*Clicking any thumbnail now should change its opacity(style)*/
/*Time to work on the main images*/
.video input[name='slide_switch'] ~ img {
	opacity: 0;
	transform: scale(1.1);
}
/*That hides all main images at a 110% size
On click the images will be displayed at normal size to complete the effect
*/
.video input[name='slide_switch']:checked+label+img {
	opacity: 1;
	transform: scale(1);	
}
/*Clicking on any thumbnail now should activate the image related to it*/

/*We are done :)*/

.sidebar-box {
    margin-top: -20em;
    margin-left: 4em;
}
</style>

</head>
<body>


<%@include file="/WEB-INF/views/entertainment/new/enterHeader.jsp"%>
<br><br>


<div class="container">
	<div class="row">
		<div class="post">
		<div class="col-md-12 pl-3 pr-3">
			<span class="h4 offer-box-title">
			♡ 상세보기<br>
			<hr class="col-md-8" color="black"><br><br>
			</span>
		</div>
		</div>
	</div>
	
</div>

    <div class="container" >
		<c:if test="${contentCode eq info.contentCode}">
        <div class="row" >
			
			<div class="col-md-8">				
	
					<div class="panel-body">
						<div class="col-md-12 panelTop">	
							<div class="col-md-4">	
								<img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${posterImg}"/>
							</div>
							<div class="col-md-8">	
								<h3 class="">${info.lookTitle}</h3>
								<p>${info.lookTitle}, ${info.lookStartDate.substring(0,4)}</p>
								<h5>
									감독 : ${info.lookMaker}<br><br>
									장르 : ${info.lookGenre}<br><br>
									등급 : ${info.lookAge}<br><br>
									개봉 : ${info.lookStartDate}<br><br>
								</h5>
							</div>
						</div>
						
						<div class="col-md-12 panelBottom">
							<div class="col-md-22" style="text-align:right">
							<sec:authorize access="isAuthenticated()">
								 <a class="btn btn-default"  data-toggle="modal" data-target="#score">Score</a>
								 <a class="btn btn-default" data-toggle="modal" href="#heart">Heart</a> 
								 <a class="btn btn-default" data-toggle="modal" href="#reviews">Review</a>
							</sec:authorize>
								<%--  <a class="btn btn-default" href="${pageContext.request.contextPath}/blog/${comment.id}">Review</a> --%>
							</div>
						</div>
					</div>				
			</div>
			
			
			    <div class="col-md-3 col-xs-12">

					
                    <div class="sidebar-box">
                        <h5 class="mt-0 mb-30">관련 영상</h5>                        
                   	
                        		<c:choose>
                        		<c:when test="${empty lookInfoConList}">
                        			관련 영상이 없습니다.
                        		</c:when>
                        		<c:otherwise>
	                        		<c:forEach items="${lookInfoConList}"  var="lookConList" varStatus="state">
	                        		<c:if test="${lookConList.lookTitle != info.lookTitle and lookConList.lookCate eq info.lookCate and state.count lt 6}">	                        		                       		
		                        		<div class="post-list-sidebar-item mb-15">
				                        	<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${lookConList.contentCode}">                      	
				                                <img src="${pageContext.request.contextPath}/resources/enter/${lookConList.contentCode}/photos/${lookConList.lookImg}" >	
				                            </a>
				
				                            <div class="col-xs-8 col-sm-9">
				                                <a class="dark" href="#">
				                                    <span class="h6 mt-0">${lookConList.lookTitle}</span>
				                                    <span class="post-list-sidebar-item-description">${lookConList.lookStory}</span>
				                                </a>
				                            </div>
				                         </div>			                         
			                  
			                       </c:if>
		                            </c:forEach>
                        		</c:otherwise>
                        		</c:choose>                
                    </div>

                </div>               
		</div>
		</c:if>
        
   
            <div class="post padding-medium">
                <div class="col-md-8">    
                    <div class="post-content">
                    
                     <h3 class="mb-10">Detail</h3> 
                        <p class="post-introduction">줄거리	
                       	</p>
                        <hr>
                        <p>${info.lookStory}<br>
                        <hr>
                        <p class="post-introduction">
                        	트레일러
                      	</p>
                      	<hr>
                      	<p>
                      	<!-- 영상 슬라이드 리스트 -->
						  <div class="container">	
							<ul class="list-unstyled video-list-thumbs row">
								<li class="col-lg-3 col-sm-4 col-xs-6">
									<a href="#preVideo" title="zootopia_예고편1" data-toggle="modal">
										<img src="${pageContext.request.contextPath}/resources/images/entertainment/DetailView/zootopia/zoo2.jpg" alt="Barca" class="img-responsive" width="300px" height="200px" />
									
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">00:15</span>
									</a>
								</li>
								<li class="col-lg-3 col-sm-4 col-xs-6">
									<a href="#" title="zootopia_예고편2">
										<img src="${pageContext.request.contextPath}/resources/images/entertainment/DetailView/zootopia/zoo6.jpg" alt="Barca" class="img-responsive" width="300px" height="200px" />
										
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">01:15</span>
									</a>
								</li>
							</ul>
							
							</div><!-- 영상 슬라이드 리스트 끝 -->
                      	<p>
                      	<hr>
                      	<!-- 스틸컷 -->                     	
                        
                      	<p>
	                      	<p class="post-introduction">
	                        	스틸컷
	                      	</p>
	                      	<hr>					

<div class="slider">

 	<c:forEach items="${cutImgSemiClone}" var="imgs" varStatus="state">
 		<c:if test="${state.first }">
 			<input type="radio" name="slide_switch" id="${state.count}" checked="checked"/>
 				<label for="${state.count}">
					<img src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${imgs}" width="30"/>
				</label>
			<img src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${imgs}"/>
 		</c:if>
 		
 		<c:if test="${not state.first }">		
			<input type="radio" name="slide_switch" id="${state.count}"/>
				<label for="${state.count}">
					<img src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${imgs}" width="30"/>
				</label>
			<img src="${pageContext.request.contextPath}/resources/images/entertainment/concert/${imgs}"/>
		</c:if>
	</c:forEach>

</div>
					

					    <br>
					    	<p class="post-introduction">
	                        	위치
	                      	</p>
			<div id="map" style="width: 500px; height: 400px;"></div>

			<script>

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new daum.maps.LatLng(${info.x}, ${info.y}), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };


		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

 		// 마커가 표시될 위치입니다 
		var markerPosition  =new daum.maps.LatLng(${info.x}, ${info.y}); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map); 

		 var iwContent = "<div style='padding:5px;'>${info.lookTitle }</div>" // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		iwPosition = new daum.maps.LatLng(${info.x}, ${info.y}); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 	
		
		</script>



		</div>
	</div>
</div>
	
                    <!-- reviews -->
                   
                   <div class="review">
                    <div class="row">
                   
                   	<h3 class="mb-60">
                   			Reviews

                   	</h3>
					
					  <!-- review 리스트 출력 -->
     					<c:forEach var="comment" items="${commentList }" varStatus="state">
	                    <c:if test="${empty commentList }">
	                    	리뷰가 없어요. 작성하고 싶죠?
	                    </c:if>	
	                    <c:if test="${not empty commentList }"  >
	                    <c:if test="${state.first }">
		                    <sec:authorize access="isAuthenticated()">
		                        <a class="btn btn-default" data-toggle="modal" href="${pageContext.request.contextPath}/blog/${comment.id}">내 리뷰만 볼래요?</a>
							</sec:authorize> 
							<hr>
						</c:if>
						<c:if test="${state.count lt 5 }" >                						
	                        <ul class="comments-list">
	                            <li>
	                                <span class="comments-nick h5">${comment.id }  </span><br>
	                                 <span class="comments-date">${comment.blogDate }</span><br>
	                                <span class="comments-nick h5">${comment.blogTitle }</span>
	                               
	                                <p class="comments-content">
	                                    ${comment.blogCont }
	                                </p>
	                                <hr>
	                            </li>                                                                                        
	                        </ul>
	                     </c:if>
	                     </c:if>
	                     </c:forEach>   
	                    </div><!-- /review -->  
	                          
                    </div>
                </div>

	
            
 	<!-- review 보기  modal -->
	<div id="reviewLook" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
                   		<c:if test="${empty commentList}">
	                    	블로그 정보 없음
	                    </c:if>
	                    <div id="reviewLook">
	                    <c:forEach var="comment" items="${commentList }" varStatus="state">
		                    <div class="row">
		                         <a class="btn" data-toggle="modal" href="${pageContext.request.contextPath}/blog/${comment.id}">add new</a>
	                        <ul class="comments-list">
	                            <li>
	                                <span class="comments-nick h5">${comment.blogTitle }</span>
	                                <span class="comments-date">${comment.blogDate }</span>
	                                <p class="comments-content">
	                                    ${comment.blogCont }
	                                </p>
	                            </li>                                                                                                    
	                        </ul>
	                    </div><!-- /review -->
	                    </c:forEach>
                    </div>

					</div>
				</div>
			</div>
		</div>
	</div>  
	</div>   


	<!-- score modal -->
	<div id="score" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<h4>별점 줄래요?</h4>

							<span class="halflings halflings-star"></span>
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">Save</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	

	<!-- heart 주기 modal -->
	<div id="heart" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<h4>좋아요♡</h4>	
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">하트주기</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- video modal -->
	<div id="preVideo" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
					<div class="modal-body">
						<%-- <iframe id="moviemovie" class="embed-responsive-item" width="854" height="480" src="${info.lookTrailer }" frameborder="0" allowfullscreen></iframe> --%>
							<video width="420" height="340" controls>
 								 <source src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-1/ollie.mp4" type="video/mp4">
							</video>
       				</div>
			</div>
		</div>
	</div>

	<!-- review 작성 modal -->
	<div id="reviews" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">							
							<%@include file="/WEB-INF/views/blog/blogReviewInsert.jsp"%>
						</div>

					</div>
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