<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Food-마시쪙</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	
	<!-- daumOpenEditor -->
<link rel=stylesheet type=text/css  href="<c:url value= '/resources/assets/daumOpenEditor/css/editor.css'/>">
<script src="${pageContext.request.contextPath}/resources/assets/daumOpenEditor/js/editor_loader.js"
	type="text/javascript" charset="utf-8"></script>
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>
<body>

	<header class="header header-fixed nav-down">
	<div class="box mb-0">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/" class="header-logo-small mt-15"><img
					src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/logo2.png"
					alt="store logo"></a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".js-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse row">
				<ul class="nav navbar-nav">
					<li class="header-link"><a
						href="${pageContext.request.contextPath}/eating/main"
						title="메인"> 메인</a>
					</li>
					<li class="header-link dropdown mega pull-left "><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Contents <span
							class="ti-angle-down"></span></a>
						<ul class="dropdown-menu mega-menu container col-sm-12">
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/travelge/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/travelge.png"
										alt="travelge">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/entertainment/new/enterMain" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/entertainment.png"
										alt="entertainment">
									</a>
									</li>
								</ul>
							</li>
							
							<li class="col-sm-4">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/eating/main" style="background: none">
									<img class="img-responsive  col-lg-12 mb-15"
										src="${pageContext.request.contextPath}/resources/images/header/content/food.jpg"
										alt="food">
									</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>

				<div class="navbar-buttons">
					<sec:authorize access="isAuthenticated()">
							<a class="btn btn-link btn-sm mt-10" style="cursor: default;"><sec:authentication property="principal.id" />님</a>
							<a class="btn btn-link btn-sm mt-10" href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">My Blog</a>
							<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
							<a href="javascript:logout();" class="btn btn-primary btn-sm mt-10">로그아웃</a>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath }/user/loginForm"
							class="btn btn-link btn-sm mt-10">Login</a>
						<a href="${pageContext.request.contextPath }/user/joinForm"
							class="btn btn-primary btn-sm mt-10"><span class="ti-plus"></span>Join</a>
					</sec:authorize>
				</div>
			</div>
		</nav>
	</div>

	<form id="logoutForm"
		action="${pageContext.request.contextPath}/user/logout" method="post"
		style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<script>
			location.href="${pageContext.request.contextPath}/admin/index";
		</script>
	</sec:authorize>
</header>
<!--검색  -->
	<%@include file="/WEB-INF/views/eating/searchView.jsp" %>
<!-- 검색 -->
	<section class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 sidebar">
					<div class="sidebar-box">
						<h5 class="mb-15">Region</h5>
						<ul>
							<li><a href="#"><span class="ti-angle-left"></span>United Kingdom</a></li>
							<li><a href="#"><span class="ti-angle-left"></span>England</a></li>
						</ul>

						<h6 class="mt-30 pl-30">London</h6>
						<ul class="pl-30">
							<li><a href="#">Central London <span>29 312</span></a></li>
							<li><a href="#">East London <span>32 768</span></a></li>
							<li><a href="#">North London <span>17 412</span></a></li>
							<li><a href="#">North West London <span>16 107</span></a></li>
							<li><a href="#">South East London <span>19 397</span></a></li>
							<li><a href="#">South West London <span>17 671</span></a></li>
							<li><a href="#">West London <span>11 134</span></a></li>
						</ul>
					</div>

					<div class="sidebar-box">
						<h5 class="mb-15">Property</h5>
						<ul>
							<li><a href="#">To Rent <span>50 826</span></a></li>
							<li><a href="#">To Share <span>34 084</span></a></li>
							<li><a href="#">For Sale <span>240</span></a></li>
							<li><a href="#">Land, Farms & Estates <span>13</span></a></li>
						</ul>
					</div>

					<div class="sidebar-box">
						<h5 class="mb-15">Filters</h5>
						<ul>
							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox1" class="styled" checked="" type="checkbox">
									<label for="checkbox1"> Urgent ads <span>34</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox2" class="styled" checked="" type="checkbox">
									<label for="checkbox2"> Feature ads <span>554</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox3" class="styled" type="checkbox"> <label
									for="checkbox3"> ads with pictures <span>3432</span>
								</label>
							</span></li>

							<li><span class="checkbox checkbox-primary pull-left">
									<input id="checkbox4" class="styled" type="checkbox"> <label
									for="checkbox4"> Exclusive <span>55</span>
								</label>
							</span></li>

							<li>
								<span class="checkbox checkbox-primary pull-left">
									<input id="checkbox5" class="styled" type="checkbox"> 
									<label for="checkbox5"> new only <span>263</span></label>
								</span>
							</li>
						</ul>
					</div>
				</div>
<!--  -->
				<div class="col-md-9">
					<div class="col-md-12 pl-0 pr-0">
						<h4 class="heading "><b>맛집 정보</b></h4> 
					</div>
					
					<c:forEach items="${requestScope.listA}"  var="list" varStatus="state">
					<div class="box">
						<div class="offer-box offer-box-horizontal border">
							<div class="offer-box-head">
								<div class="offer-slider">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<%-- <img src="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/img/offer/01.jpg" --%>
											<img src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" alt="offer image">
										</div>
									</div>

									<div class="offer-pagination-prev left-arrow">
										<span class="ti-angle-left"></span> 
									</div>

									<div class="offer-pagination-next right-arrow">
										<span class="ti-angle-right"></span>
									</div>
								</div>
								<!-- <span class="offer-box-price">$350pw</span> --> 
								<!-- <span class="offer-box-label"><span class="ti-star"></span>featured</span> -->
							</div>
							<a href="#"> <span class="h4 offer-box-title">  ${list.restaurantName} </span>  
							<span class="offer-box-location">
							<span class="ti-location-pin">
							</span>${list.restaurantAddr} </span> 
							<!-- <span class="offer-box-meta">Nordman	Agency | 30 Nov 2016 | Flat | 2 Beds</span> -->
							</a> 
									<a href="#" class="btn btn-default" data-toggle="modal" data-target="#offer-${state.count }" id="test">상세 보기</a>  
									<a href="#" class="btn btn-link btn-sm ml-0 pull-right"> <span 	class="ti-star"></span> to favorites</a>
						</div>
					</div>
					 </c:forEach>
					<!-- / single offer box-->
	
	
					<!-- / single offer box-->
					<div class="col-md-12 ml-0 mr-0 pt-5 pb-0 border">
						<div class="category-pagination text-center">
							<nav aria-label="Page navigation">
							
								<ul class="pagination">
									<!-- < 버튼 -->
									<%-- ${spage } --%>
										<c:if test="${startPage != 1 and startPage != null}">
											<li><a href="${pageContext.request.contextPath }/eating/restaurantSearch?currentPage=${startPage-1}&category=${category}&category2=${category2}&keyWord=${keyWord}">
											<i	class="material-icons">chevron_left</i></a></li>
										</c:if>
										<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
											<c:if test="${pageNum == spage and pageNum != null}">
												<!-- 선택페이지 -->
												<li class="active"><a>${pageNum}</a></li>
											</c:if>
											<!-- 선택되지 않은 페이지 -->
											<c:if test="${pageNum != spage and pageNum != 0}">
												<li><a href="${pageContext.request.contextPath }/eating/restaurantSearch?currentPage=${pageNum}&category=${category}&category2=${category2}&keyWord=${keyWord}">${pageNum}&nbsp;</a></li>
											</c:if>
										</c:forEach>
										<!-- > 버튼 -->
										<c:if test="${endPage != maxPage }">
											<li><a href="${pageContext.request.contextPath }/eating/restaurantSearch?currentPage=${endPage+1 }"><i class="material-icons">chevron_right</i></a></li>
										</c:if>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!--/ col-md-9-->
			</div>
			<!--/ row -->
		</div>
		<!--/ container -->
		
		<!-- 모달시작 -->
		<!-- OFFER CONTACT FORM-->
		<c:forEach  items="${requestScope.listA}"  var="list" varStatus="state">
		  
		<div id="offer-${state.count }" class="modal fade services-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content shadow">
					<div class="offer-box">
						<div class="offer-box-head">
							<div class="offer-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
									
										<img src="${pageContext.request.contextPath}/resources/restaurant/${list.id}/info/${list.restaurantPic}" alt="offer image">
									</div>
								</div>
							</div>
						</div>
						<div class="offer-content pl-30 pr-30">
							<span class="h4 offer-box-title">${list.restaurantName }</span> 
							<span class="offer-box-location">
							
								<span class="ti-location-pin"></span>${list.restaurantAddr } </span><br>
								<span 	class="descriptionImg"> ${list.restaurantInfo }</span>
								<a href="#" class="btn btn-link btn-sm pr-0 pull-right"></a>
								<a class="close" data-dismiss="modal"><span class="ti-close"></span></a>
							<div class="contact-form mt-60">
					<form name="tx_editor_form"  id="tx_editor_form" action="${pageContext.request.contextPath}/eating/insertReview"
							method="post" accept-charset="utf-8">
							<div class="panel panel-default">
								<div class="form-group">
									<div class="form-group input-group">
										
									</div>
									<div class="form-group input-group">
										<span class="input-group-addon">제목</span> 
										<input type="text" class="form-control" placeholder="리뷰 제목을 작성해주세요" name="blogTitle">
									</div>
								</div>
								<div class="panel-body">
									<jsp:include page="/WEB-INF/views/daumOpenEditor/editor_frame.jsp"></jsp:include>
								</div>
							</div>
							<input type="hidden" name="contentCode" value="${list.contentCode }">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<sec:authorize access="isAuthenticated()">
								<input type="hidden" name="id" value="<sec:authentication property="principal.id" />">
							</sec:authorize>
							<div style="text-align: center; margin-bottom: 3em">
								<button type="submit" class="btn btn-default"
									onclick="saveContent()">전송</button>
								<button type="reset" class="btn btn-default">다시쓰기</button>
							</div>
						</form>
						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- / OFFER CONTACT FORM -->
	</section>
<!-- ///////////////////////////////////////////////// -->
	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>
							Support: <span>+48 123 456 789</span>
						</p>
					</div>
					<div class="col-md-6">
						<ul class="footer-social pull-right">
							<li><a href="#" class="pull-left"><span
									class="ti-facebook"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-twitter"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-instagram"></span></a></li>
							<li><a href="#" class="pull-left"><span
									class="ti-youtube"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 smartphone-fw">
					<address>
						<strong>Main office (HQ)</strong><br> consectetur adipisicing
						elit 122<br> CF 55678 USA <br> <br> Phone:
						+1-222-333-4444 <br> E-mail: office@apart.com
					</address>
				</div>
				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">ACCOUNT</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">INFORMATION</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-12 smartphone-fw">
					<h6 class="heading">ACCOUNT</h6>
					<ul>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
						<li><a href="#"> Lorem Ipsum </a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/wow.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery-1.11.2.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/swiper.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countTo.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.inview.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countdown.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap-select.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/new_theme_mark2/js/main.js'/>"></script>
		
	<script type="text/javascript">
	
	          var count=1;
							if ('${blogCont!=null}' == 'true')
								Editor.modify({
									'content' : '${blogCont}'
								});
                            
							var config = {
								txHost : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
								txPath : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
								txService : 'sample', /* 수정필요없음. */
								txProject : 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
								initializedId : "", /* 대부분의 경우에 빈문자열 */
								wrapper : "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
								form : 'tx_editor_form' + "", /* 등록하기 위한 Form 이름 */
								txIconPath : "${ pageContext.request.contextPath }/resources/assets/daumOpenEditor/images/icon/editor/", /* 에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
								txDecoPath : "${ pageContext.request.contextPath }/resources/assets/daumOpenEditor/images/deco/contents/", /* 본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
								canvas : {
									exitEditor : { /* desc:'빠져 나오시려면 shift+b를 누르세요.', hotKey: { shiftKey:true, keyCode:66 }, nextElement: document.getElementsByTagName('button')[0] */},
									styles : {
										color : "#000000", /* 기본 글자색 */
										fontFamily : "굴림", /* 기본 글자체 */
										fontSize : "10pt", /* 기본 글자크기 */
										backgroundColor : "#fff", /*기본 배경색 */
										lineHeight : "1.5", /*기본 줄간격 */
										padding : "8px" /* 위지윅 영역의 여백 */
									},
									showGuideArea : false
								},
								events : {
									preventUnload : false
								},
								sidebar : {

									attachbox : {
										show : true,
										confirmForDeleteAll : true
									},
									attacher : {
										image : {
											features : {
												left : 250,
												top : 65,
												width : 465,
												height : 220,
												scrollbars : 0
											}, //팝업창 사이즈 
											popPageUrl : '${pageContext.request.contextPath}/daumOpenEditor/imagePopup' //팝업창 주소 
										}
									}

								},
								size : {
									contentWidth : 700
								/* 지정된 본문영역의 넓이가 있을 경우에 설정 */}
							};
							EditorJSLoader.ready(function(Editor) {
								var editor = new Editor(config);
							});

							function saveContent() {
								
								Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
							}

							function validForm(editor) {
								// Place your validation logic here

								// sample : validate that content exists
								var validator = new Trex.Validator();
								var content = editor.getContent();
								if (!validator.exists(content)) {
									alert('내용을 입력하세요');
									return false;
								}

								return true;
							}

							function setForm(editor) {
								var i, input;
								var form = editor.getForm();
								var content = editor.getContent();

								// 본문 내용을 필드를 생성하여 값을 할당하는 부분
								var textarea = document
										.createElement('textarea');
								textarea.name = 'blogCont';
								textarea.value = content;
								textarea.style.display = "none";
								form.createField(textarea);
								return true;
							}
						</script>

</body>
</html>