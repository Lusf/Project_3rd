<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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


	<!-- star plugin -->
<!-- 	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script> -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/starrr-gh-pages/dist/starrr.js"></script>


</head>
<body>


<%@include file="/WEB-INF/views/header.jsp"%>
<br><br>


<div class="container">
<h3>♡ 상세보기</h3>
<hr class="col-md-8" color="gray"><br><br>
</div>

<div class="container">  
<%-- 	<c:forEach items="${lookInfoOne}" var="infoDetail" varStatus="state">
		<c:if test="${contentCode eq lookInfoOne.contentCode}"> --%>
		<c:if test="${contentCode eq lookInfoOne.contentCode}"> 
		<div class="row">		
			<div class="col-md-8">				
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						<div class="col-md-12 panelTop">	
							<div class="col-md-4">	
								<img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/${lookInfoOne.lookCate}/${lookInfoOne.lookImg}" alt="user avatar" alt=""/>
							</div>
							<div class="col-md-8">	
								<h3 class="">${lookInfoOne.lookTitle}</h3>
								<p>${lookInfoOne.lookTitle}, ${lookInfoOne.lookStartDate.substring(0,4)}</p>
								<h5>
									감독 : ${lookInfoOne.lookMaker}<br><br>
									장르 : ${lookInfoOne.lookGenre}<br><br>
									등급 : 전체<br><br>
									개봉 : ${lookInfoOne.lookStartDate}<br><br>
								</h5>
							</div>
						</div>
						
						<div class="col-md-12 panelBottom">
							<div class="col-md-22" style="text-align:right">
								 <a class="btn btn-default"  data-toggle="modal" data-target="#score">Score</a>
								 <a class="btn btn-default" data-toggle="modal" href="#heart">Heart</a>
								 <a class="btn btn-default" data-toggle="collapse" href="#reply-open">Review</a>
								 <a class="btn btn-default" data-toggle="modal" href="#share">Share</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			    <div class="col-md-3 col-xs-12">


                    <div class="sidebar-box">
                        <h5 class="mt-0 mb-30">관련 영상</h5>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/movie/캐비.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">캐리비안의 해적</span>
                                    <span class="post-list-sidebar-item-description">재미있을까?</span>
                                </a>
                            </div>
                        </div>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/movie/악녀.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">악녀</span>
                                    <span class="post-list-sidebar-item-description">ㅇㅇㅇㅇ</span>
                                </a>
                            </div>
                        </div>
                        <div class="post-list-sidebar-item mb-15">
                            <a href="#">
                                <img class="no-padding col-md-3 col-sm-3 col-xs-4 img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/movie/심야.jpg" alt="blog image">
                            </a>

                            <div class="col-xs-8 col-sm-9">
                                <a class="dark" href="#">
                                    <span class="h6 mt-0">심야식당</span>
                                    <span class="post-list-sidebar-item-description">ㅎㅎㅎㅎ</span>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
		</div>
		</c:if>
<%-- 		</c:if>
		</c:forEach> --%>
    </div>



    <div class="container">
   <%--  <c:forEach items="${lookInfoOne}" var="infoDetail" varStatus="state"> --%>
		<c:if test="${contentCode eq lookInfoOne.contentCode}">
        <div class="row">
            <div class="post padding-medium">
                <div class="col-md-8">    
                    <div class="post-content">
                     <h3 class="mb-60">Detail</h3> <p class="post-introduction">
                       		줄거리	
                       	</p>
                        <hr>
                        <p>${lookInfoOne.lookStory}<br>
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
									<a href="#" title="zootopia_예고편1">
										<img src="${pageContext.request.contextPath}/resources/images/entertainment/DetailView/zootopia/zoo2.jpg" alt="Barca" class="img-responsive" width="100px" height="130px" />
										<p>예고편1</p>
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">00:15</span>
									</a>
								</li>
								<li class="col-lg-3 col-sm-4 col-xs-6">
									<a href="#" title="zootopia_예고편2">
										<img src="${pageContext.request.contextPath}/resources/images/entertainment/DetailView/zootopia/zoo6.jpg" alt="Barca" class="img-responsive" width="100px"  height="130px" />
										<p>예고편2</p>
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">01:15</span>
									</a>
								</li>
							</ul>
							
							</div><!-- 영상 슬라이드 리스트 끝 -->
                      	<p>
                      	<hr>
                      	<!-- 스틸컷 -->                     	
                        <hr>
                      	<p>
	                      	<p class="post-introduction">
	                        	스틸컷
	                      	</p>
					
						    <div class="container">
						 
						        <div class="row">
								<div class="col-md-8">
						        <div class="col-xs-12 col-sm-3 gal_img">
						            <div class="thumbnail">
						                 <img src="${pageContext.request.contextPath}/resources/images/entertainment/${lookInfoOne.lookCate}/${lookInfoOne.lookImg}" >
						            </div>
						        </div>
						       
						        <div class="col-xs-12 col-sm-3 gal_img">
						            <div class="thumbnail">
						                 <img src="${pageContext.request.contextPath}/resources/images/entertainment/${lookInfoOne.lookCate}/${lookInfoOne.lookImg}" >
						            </div>
						        </div>
						      
	
						    </div> 
						    </div>
					    </div>
					</div>
	
                    <!-- comments-->
                    <div class="comments">
                        <h3 class="mb-60">Reviews<a class="btn btn-primary pull-right" data-toggle="collapse" href="#comments-form">add new</a></h3>
                        <div class="comments-form collapse col-md-12" id="comments-form">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <div class="panel-title h3">Add new
                                        <div class="pull-right login-context-info">
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form id="comment-new" class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <textarea class="form-control" placeholder="Your comment"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <!-- Button -->
                                            <div class="col-md-12 login-btn">
                                                <a href="#" class="btn btn-primary">Add your comment </a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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
                                
                                <ul class="collapse ml-60" id="reply-open">
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
                                <a data-toggle="collapse" href="#reply" class="btn btn-default">reply</a>
                                <a class="btn btn-default" data-toggle="collapse" href="#reply-open">3 comments</a>
                                <div class="comments-form collapse col-md-12" id="reply">
                                    <div class="panel panel-default">
                                        <div class="panel-heading ">
                                            <div class="panel-title h3">reply
                                                <div class="pull-right login-context-info">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <form id="reply-form" class="form-horizontal">
                                                
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <textarea class="form-control" placeholder="Your comment"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <!-- Button -->
                                                    <div class="col-md-12 login-btn">
                                                        <a href="#" class="btn btn-primary">Add your reply </a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- / comments -->
                </div>

            </div>
        </div>
        </c:if>
		<%-- </c:forEach> --%>
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
<!-- 							<div class="container">
								<div class="row lead">
									<span id="stars-existing" class="starrr" data-rating='1'></span> 
									<div id="count-existing">1</div>점
								</div>
							</div> -->
							<span class="halflings halflings-star"></span>
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">Save</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- heart modal -->
	<div id="heart" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<h4>♡딸기뿅뿅프라노베 먹고싶음♡♡♡♡♡♡</h4>
<!-- 							<div class="container">
								<div class="row lead">
									<span id="stars-existing" class="starrr" data-rating='1'></span> 
									<div id="count-existing">1</div>점
								</div>
							</div> -->
							<span class="halflings halflings-star"></span>
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">Save</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- share modal -->
	<div id="share" class="modal fade services-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
				<div class="modal-body">
					<div class="post-entry post-entry-modal">

						<div class="services-box text-center">
							<h4>공유♡</h4>
<!-- 							<div class="container">
								<div class="row lead">
									<span id="stars-existing" class="starrr" data-rating='1'></span> 
									<div id="count-existing">1</div>점
								</div>
							</div> -->
							<span class="halflings halflings-star"></span>
							<a class="btn btn-default" data-toggle="collapse" href="#reply-open">Save</a>
							<a class="btn btn-default"  aria-hidden="true" data-dismiss="modal">Cancle</a>
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
	<!-- <script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script> -->
</body>
</html>