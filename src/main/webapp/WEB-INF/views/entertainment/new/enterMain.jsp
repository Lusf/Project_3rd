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
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/enter/enterMain.css"> --%>

<style>
.bottom{margin-bottom:1em;}
.top{margin-top:1em;}
.fader-home{
        position:relative
        transition:all 1s ease;
    
    }
.fader-in{
        position:absolute;
        display:inline-block;
        bottom:1em;
        background:rgba(255,0,0,.8);
        transition:all 1s ease;
        opacity:0;
        padding:2em;
        width:90%;
    
    } 
    
    img:hover+.fader-in{
                opacity:1;
        
        }
        
       /*  
 아랫부분css */
 
 .goof{
    height: 100px;
    background: #ccc;
    margin: 4px -11px;
    padding: 50px 10px 10px 10px;
    position: relative;
}

.goof h4{
    position: absolute;
    left: 5%;
    top: 60%;
    color: #0095d9;
    font-size: 16px;
    font-weight: bold;
}

.activate{
    background-color: #0095d9;
}

.activate h4{
    color: #fff;
}

.gaf{
    height: 328px;
    background: green;
    margin: -14px 0;
}

.gaf h3{
    padding: 10px;
    color: #fff;
}

/**휙휙*/

#custom_carousel .item  .top {
    overflow:hidden;
    max-height:300px;
    margin-bottom:15px;
}
#custom_carousel .item {

    color:#000;
    background-color:#fff;
    padding:20px 0;
    overflow:hidden
}
#custom_carousel .item img{
width:100%;
height:auto
}

#custom_carousel .izq 
{
    position:absolute;
  left: -25px;
  top:40%;
  background-image: none;
  background: none repeat scroll 0 0 #222222;
  border: 4px solid #FFFFFF;
  border-radius: 23px;
  height: 40px;
  width : 40px;
  margin-top: 30px;
}
/* Next button  */
#custom_carousel .der 
{
       position:absolute;
  right: -25px !important;
  top:40%;
  left:inherit;
  background-image: none;
  background: none repeat scroll 0 0 #222222;
  border: 4px solid #FFFFFF;
  border-radius: 23px;
  height: 40px;
  width : 40px;
  margin-top: 30px;
}
#custom_carousel .controls{

    overflow:hidden;
    padding:0;
    margin:0;
    white-space: nowrap;
    text-align: center;
    position: relative;
    background:#fff;
    border:0;
}
#custom_carousel .controls .nav{

    padding:0;
    margin:0;
    white-space: nowrap;
    text-align: center;
    position: relative;
    background:#fff;
    width: auto;
    border: 0;
}
#custom_carousel .controls li {
    transition: all .5s ease;
    display: inline-block;
    max-width: 100px;
    height: 90px;
    opacity:.5;
}
#custom_carousel .controls li a{
    padding:0;
}
#custom_carousel .controls li img{
width:100%;
height:auto
}

#custom_carousel .controls li.active {
    background-color:#fff;
    opacity:1;
}
#custom_carousel .controls a small {
    overflow:hidden;
    display:block;
    font-size:10px;
    margin-top:5px;
    font-weight:bold
}
</style>

<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>


<script>


	$(document).ready(function(ev){

		var lookCate = "movie";
		
		$("#movie").click(function(){
			lookCate = "movie";			
			
		})
		
		$("#tv").click(function(){
			lookCate ="TV";
			
		})
		
		$("#concert").click(function(){
			lookCate="concert";

		})
		
		$("#more").click(function(){
			lookCate = "${pageContext.request.contextPath}/entertainment/new/enterList/"+lookCate;
			location.href=lookCate;
		})
		

		$('#my-carousel .goof').click(function(e){
			$('#soln-slide-1 .goof').removeClass('activate');
			$(this).addClass('activate');
		});
		
	    var items = $(".nav li").length;
	    var leftRight=0;
	    if(items>5){
	        leftRight=(items-5)*50*-1;
	    }
	    $('#custom_carousel').on('slide.bs.carousel', function (evt) {
	        
	 
	      $('#custom_carousel .controls li.active').removeClass('active');
	      $('#custom_carousel .controls li:eq('+$(evt.relatedTarget).index()+')').addClass('active');
	    })
	    $('.nav').draggable({ 
	        axis: "x",
	         stop: function() {
	            var ml = parseInt($(this).css('left'));
	            if(ml>0)
	            $(this).animate({left:"0px"});
	                if(ml<leftRight)
	                    $(this).animate({left:leftRight+"px"});
	                    
	        }
	      
	    });

	});
	

</script>

</head>
<body>
<%-- <%@include file="/WEB-INF/views/header.jsp"%> --%>
<%@include file="/WEB-INF/views/entertainment/new/enterHeader.jsp"%>

<!-- 슬라이드 & 검색 -->
	<section class="home">
		<div class="home-slider home-slider-half-page">
	        <div class="swiper-wrapper">
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/공연01.PNG)">            	
	            </div>
	            <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/디즈니콘서트.png)">
				</div>
			    <div class="swiper-slide home-slider-centered" style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/main/아리랑.png)">
				</div>
	        </div>
	        <!-- Add Pagination -->
	        <div class="home-slider-pagination"></div>
			
			<div class="home-slider-prev left-arrow">
				<span class="ti-angle-left"></span>
			</div>

			<div class="home-slider-next right-arrow">
				<span class="ti-angle-right"></span>
			</div>
		</div>
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="${pageContext.request.contextPath}/entertainment/enterSearch">
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
										<option>애니메이션</option>
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
	</section>
	
<!-- 영화, TV, 뮤지컬 구분 태그 & 슬라이드 -->	
	<section class="padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-center mb-30" id="tag" role="tablist">
						<li class="active"><a href="#movieSlide" data-toggle="tab" id="movie">Movie</a></li>
						<li class=""><a href="#tvSlide" data-toggle="tab" id="tv">TV</a></li>
						<li class="" ><a href="#concertSlide" data-toggle="tab" id="concert">Concert</a></li>
						
					</ul>
 					<ul class="nav nav-center mb-5" style="width:30px;">
						<li><a class="btn" id="more" >More</a></li>
						<%--  href="${pageContext.request.contextPath}/entertainment/new/enterList/${lookCate}" --%>
				 	</ul>
										
					
					<!-- movie 이미지 슬라이드 -->
					<div class="tab-content relative">
	              		<div role="tabpanel" class="tab-pane fade in active" id="movieSlide">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">

							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate eq '영화'}">
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
<%-- 																<a href="${pageContext.request.contextPath}/entertainment/new/enterList/${infoList.lookCate}">  --%>
																	<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}">
																<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >	
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
													</div>
									            </div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>
									
							        </div>   
						        <div class="rooms-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="rooms-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
						        <!-- Add Pagination -->
						        <div class="rooms-pagination text-center"></div>
							</div>
	              		</div>
						
						<!-- tv 이미지 슬라이드 -->
	              		<div role="tabpanel" class="tab-pane fade" id="tvSlide">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							        
							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate eq 'TV'}">
												
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
																<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}"> 
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >																																												
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailView/${infoList.contentCode}"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
													</div>
									            </div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>
									
							        </div>   
						        <div class="rooms-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="rooms-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
						        <!-- Add Pagination -->
						        <div class="rooms-pagination text-center"></div>
							</div>
	              		</div>

						<!-- concert 이미지 슬라이드 -->
	              		<div role="tabpanel" class="tab-pane fade" id="concertSlide">
							  <div class="rooms-slider overflow-hidden">
							        <div class="swiper-wrapper">
							        
							        <c:choose>
										<c:when test="${empty lookInfoList}">
											정보가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${lookInfoList}" var="infoList" varStatus="state">
												<c:if test="${infoList.lookCate.substring(0,2) eq '공연'}">
												
												<div class="swiper-slide">
												<!-- single offer box-->
													<div class="offer-box">
															<div class="offer-box-head">
																<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailConcertView/${infoList.contentCode}"> 
																	<img src="${pageContext.request.contextPath}/resources/enter/${infoList.contentCode}/photos/${infoList.lookImg}" >
																</a>
															</div>
															<a href="${pageContext.request.contextPath}/entertainment/new/enterDetailConcertView/${infoList.contentCode}"> 
																<span class="h4 offer-box-title">${infoList.lookTitle}</span>													
															</a>
													</div>
									            </div>

												</c:if>
											</c:forEach>
										</c:otherwise>
									</c:choose>
									
							        </div>   
						        <div class="rooms-pagination-prev left-arrow">
									<span class="ti-angle-left"></span>
								</div>

								<div class="rooms-pagination-next right-arrow">
									<span class="ti-angle-right"></span>
								</div>
						        <!-- Add Pagination -->
						        <div class="rooms-pagination text-center"></div>					        
							</div>
	              		</div>
	              	</div>

				</div>

			</div><!--/ row -->
		</div><!--/ container -->
	</section>


  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!-- 최신순서대로 보여주기 -->
<div class="container-fluid">
    <div id="custom_carousel" class="carousel slide" data-ride="carousel" data-interval="4000">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">        
        	<c:forEach items="${lookInfoNewList }" var="newList" varStatus="state" >
        	<c:if test="${state.index lt 4}">
            <div class="item">
                <div class="container-fluid">
                    <div class="row">
                        <div class="top col-md-6 col-xs-12"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg" class="img-responsive"></div>
                        <div class="content col-md-6 col-xs-12">
                            <h2>${newList.lookTitle}</h2>
                      		<p>${newList.lookStory}</p>
                       </div>
                    </div>
                </div>            
            </div> 
            </c:if>
            </c:forEach>
                       
            <div class="item active">
                <div class="container-fluid">
                    <div class="row">
                        <div class="top col-md-6 col-xs-12"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg" class="img-responsive"></div>
                        <div class="content col-md-6 col-xs-12">
                        <c:forEach items="${lookInfoNewList }" var="newList" varStatus="state" >
                        	<c:if test="${state.last}">
	                            <h2>${newList.lookTitle}</h2>
	                      		<p>${newList.lookStory}</p>
                      		</c:if>
                      	</c:forEach>
                       </div>
                    </div>
                </div>            
            </div> 
        <!-- End Item -->
        </div>
        <a data-slide="prev" href="#custom_carousel" class="izq carousel-control">‹</a>
        <a data-slide="next" href="#custom_carousel" class="der carousel-control">›</a>
        <!-- End Carousel Inner -->
                <div class="controls draggable ui-widget-content col-md-6 col-xs-12">
            <ul class="nav ui-widget-header">
				<c:forEach items="${lookInfoNewList }" var="newList" varStatus="state">
					<c:if test="${state.first}">
						<li data-target="#custom_carousel" data-slide-to="${state.index}" class="active">
							<a href="#">
								<img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${newList.lookTitle}</small>
							</a>
						</li>
                	</c:if>
                	<c:if test="${not state.first}">             
                		<li data-target="#custom_carousel" data-slide-to="${state.index}">
                			<a href="#">
                				<img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg">
                				<small>${newList.lookTitle}</small>
                			</a>
                		</li>               
					</c:if>
				</c:forEach>
<%--                 <li data-target="#custom_carousel" data-slide-to="0" class="active"><a href="#"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${lookInfoNewList.get(0).lookTitle}</small></a></li>
                <li data-target="#custom_carousel" data-slide-to="1"><a href="#"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${lookInfoNewList.get(1).lookTitle}</small></a></li>
                <li data-target="#custom_carousel" data-slide-to="2"><a href="#"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${lookInfoNewList.get(2).lookTitle}</small></a></li>
                <li data-target="#custom_carousel" data-slide-to="3"><a href="#"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${lookInfoNewList.get(3).lookTitle}</small></a></li>
                <li data-target="#custom_carousel" data-slide-to="4"><a href="#"><img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"><small>${lookInfoNewList.get(4).lookTitle}</small></a></li>
                --%>
            </ul>
        </div>
    </div>
    <!-- End Carousel -->
</div>
 
 
 	<!-- We will use PrefixFree - a script that takes care of CSS3 vendor prefixes
You can download it from https://leaverou.github.com/prefixfree/ -->
<script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script>
	
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