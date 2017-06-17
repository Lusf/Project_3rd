<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>appart - property and classifieds bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link rel="stylesheet" href="<c:url value='/resources/assets/bootstrap/css/enterDetailView.css' />">
<link rel="stylesheet" href="<c:url value='/resources/assets/bootstrap/css/enterVideoSliderView.css' />">

</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<br><br>


<div class="container">
<h3>♡ 영화 상세보기</h3>
<hr class="col-md-8" color="gray"><br><br>
</div>

<div class="container">    
		<div class="row">		
			<div class="col-md-8">				
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						<div class="col-md-12 panelTop">	
							<div class="col-md-4">	
								<img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/entertainment/movie/zootopia.jpg" alt="user avatar" alt=""/>
							</div>
							<div class="col-md-8">	
								<h3 class="">주토피아</h3>
								<p>zootopia, 2016</p>
								<h5>
									감독 : 바이론 하워드 ,  리치 무어<br><br>
									장르 : 애니메이션<br><br>
									등급 : 전체<br><br>
									개봉 : 2016.02.17<br><br>
								</h5>
							</div>
						</div>
						
						<div class="col-md-12 panelBottom">
							<div class="col-md-22" style="text-align:right">
								 <a class="btn btn-default" data-toggle="collapse" href="#reply-open">Score</a>
								 <a class="btn btn-default" data-toggle="collapse" href="#reply-open">Heart</a>
								 <a class="btn btn-default" data-toggle="collapse" href="#reply-open">Review</a>
								 <a class="btn btn-default" data-toggle="collapse" href="#reply-open">Share</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			    <div class="col-md-3 col-xs-12">


                    <div class="sidebar-box">
                        <h5 class="mt-0 mb-30">관련 영화</h5>
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
    </div>



    <div class="container">
        <div class="row">
            <div class="post padding-medium">
                <div class="col-md-8">    
                    <div class="post-content">
                     <h3 class="mb-60">Detail</h3> <p class="post-introduction">
                       		줄거리	
                       	</p>
                        <hr>
                        <p>
                     		누구나 살고 싶은 도시 1위, 주토피아<br>
							연쇄 실종 사건 발생!<br>
							“미치도록 잡고 싶었다!”<br>
							교양 있고 세련된 라이프 스타일을 주도하는 도시 주토피아.<br>
							이 곳을 단숨에 혼란에 빠트린 연쇄 실종사건이 발생한다!<br>
							주토피아 최초의 토끼 경찰관 주디 홉스는 48시간 안에 사건 해결을 지시 받자<br>
							뻔뻔한 사기꾼 여우 닉 와일드에게 협동 수사를 제안하는데…<br>
	 
							2월, 스릴 넘치는 추격전의 신세계가 열린다!<br> </p>
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
									<a href="#" title="Claudio Bravo, antes su debut con el Barca en la Liga">
										<img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" height="130px" />
										<p>Claudio Bravo, antes su debut con el Barca en la Liga</p>
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">03:15</span>
									</a>
								</li>
								<li class="col-lg-3 col-sm-4 col-xs-6">
									<a href="#" title="Claudio Bravo, antes su debut con el Barca en la Liga">
										<img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" height="130px" />
										<p>Claudio Bravo, antes su debut con el Barca en la Liga</p>
										<span class="glyphicon glyphicon-play-circle"></span>
										<span class="duration">03:15</span>
									</a>
								</li>
							</ul>
							
							</div><!-- 영상 슬라이드 리스트 끝 -->
                      	<p>
                      	<hr>
                      	<p class="post-introduction">
                        	스틸컷
                      	</p>
                      	<hr>
                      	<p>
                      		스틸것 슬라이드로 넣기
                      	<p>
                    </div>
                    <!-- comments-->
                    <div class="comments">
                        <h3 class="mb-60">Comments<a class="btn btn-primary pull-right" data-toggle="collapse" href="#comments-form">add new</a></h3>
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