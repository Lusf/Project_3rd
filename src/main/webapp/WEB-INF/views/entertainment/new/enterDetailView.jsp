<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterDetailView.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterVideoSliderView.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/enter/enterScSlide.css' />">
<link rel="stylesheet" href="<c:url value='/resources/js/enter/enterScSlide.js' />">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>

<!-- slide css -->
<style>
.sidebar-box {
    margin-top: -20em;
    margin-left: 4em;
}

/*Time for the CSS*/
* {margin: 0; padding: 0;}
body {background: #ccc;}

.slider{
	width: 640px; /*Same as width of the large image*/
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
	
</style>

<script type="text/javascript">
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$(document).on('click','#wishlist', function() {
	var contentCode = '${info.contentCode}';
	var heart = $(this);

	$.ajax({
				url : "${pageContext.request.contextPath}/travelge/travelgeWishListUpdate",
				type : "post",
				dataType : "text",
				data : "contentCode=" + contentCode,
				beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
					xhr.setRequestHeader(header, token)
				},
				success : function(result) {
					if (result == '1') {
						//alert("찜하기")
						heart.html("<span style='display:none'>"
								+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer;font-size:16px'>favorite</i>"); 
					} else {
						//alert("찜하기 취소")
						heart.html("<span style='display:none'>"
								+ contentCode + "</span><i class='material-icons' style='color:#FF6B6B; cursor:pointer;font-size:16px'>favorite_border</i>");
				
					}
				},
				error : function(err) {
					alert("오류 발생 : " + err);
				}
			});
});
</script>

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
								<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >	
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
								 <button class="btn btn-info" id="wishlist" style="color: #FF6B6B; background-color: white; border-color: #FF6B6B"><i class='material-icons' style='color:#FF6B6B; cursor:pointer;font-size:16px'>favorite_border</i><p style='float: right;"color: #FF6B6B;'></button>
								 <a class="btn btn-default" data-toggle="modal" href="#reviews">Review</a>
								 <!-- <a class="btn btn-default" data-toggle="modal" href="#share">Share</a> -->
							</sec:authorize>
							</div>
						</div>
					</div>				
			</div>
			
			
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
							
<!-- 							
							<video width="420" height="340" controls>
 								 <source src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-1/ollie.mp4" type="video/mp4">
							</video> -->
							
						</div><!-- 영상 슬라이드 리스트 끝 -->
                      	<p>
                      	<hr>

                      	<!-- 스틸컷 -->                     	                      
                      	<p>
	                      	<p class="post-introduction">
	                        	스틸컷
	                      	</p>
	                      	<hr>					
						<!-- slider -->	
						<div class="slider">
							<input type="radio" name="slide_switch" id="id1" />
						
							
							<!--Lets show the second image by default on page load-->
							<input type="radio" name="slide_switch" id="id2" checked="checked"/>
							<label for="id2">
								<img src="http://thecodeplayer.com/uploads/media/40Ly3VB.jpg" width="100"/>
							</label>
							<img src="http://thecodeplayer.com/uploads/media/40Ly3VB.jpg"/>
							
							<input type="radio" name="slide_switch" id="id3"/>
							<label for="id3">
								<img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg" width="100"/>
							</label>
							<img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"/>
							
							<input type="radio" name="slide_switch" id="id4"/>
							<label for="id4">
								<img src="http://thecodeplayer.com/uploads/media/2rT2vdx.jpg" width="100"/>
							</label>
							<img src="http://thecodeplayer.com/uploads/media/2rT2vdx.jpg"/>
							
							<input type="radio" name="slide_switch" id="id5"/>
							<label for="id5">
								<img src="http://thecodeplayer.com/uploads/media/8k3N3EL.jpg" width="100"/>
							</label>
							<img src="http://thecodeplayer.com/uploads/media/8k3N3EL.jpg"/>
						</div>
	                      	
					</div>
	                  
                </div>

            </div>
			
 			<div class="container">
					<div class="row">
					 	<div class="col-md-3 col-xs-12">

					
                    <div class="sidebar-box">
                    <div class="relation">
                         <h3 class="mb-60">관련 영상</h3>                     
                   	
                        		<c:choose>
                        		<c:when test="${empty lookInfoConList}">
                        			관련 영상이 없습니다.
                        		</c:when>
                        		<c:otherwise>
	                        		<c:forEach items="${lookInfoConList}"  var="lookConList" varStatus="state">
	                        		<c:if test="${lookConList.lookTitle != info.lookTitle and lookConList.lookCate eq info.lookCate and state.count lt 6}">	                        		                       		
		                        		<div class="post-list-sidebar-item mb-15">
				                        	<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${lookConList.contentCode}">                      	
				                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/${lookConList.lookCate}/${lookConList.lookImg}" alt="blog image">
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
                        		
                   <!-- comments-->
                   
                    <div class="review">
                    <h3 class="mb-60">Reviews</h3>
                    <c:forEach var="comment" items="${commentList }" varStatus="state">
                    <div class="row">
                    <c:if test="${empty commentList }">
                    	블로그 리스트 정보 없음
                    </c:if>
                        <a class="btn" data-toggle="modal" href="${pageContext.request.contextPath}/blog/${comment.id}">add new</a>

                        <ul class="comments-list">
                            <li>
                                <span class="comments-nick h5">Martin</span>
                                <span class="comments-date">14.07.2017</span>
                                <p class="comments-content">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                </p>                                                                
                                    <li class="mb-60">
                                        <span class="comments-nick h5">Martin</span>
                                        <span class="comments-date">14.07.2017</span>
                                        <p class="comments-content">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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
		</c:if>
        
   

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
	
	<!-- review 작성 modal -->
	<div id="reviews" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<h4>Review</h4>

							
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">Save</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- share modal -->
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
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<video width="420" height="340" controls>

 							<%-- 	<source src="${info.lookTariler }" type="video/mp4"> --%>
 							</video>												

 								 <source src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-1/ollie.mp4" type="video/mp4">
							</video>												

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