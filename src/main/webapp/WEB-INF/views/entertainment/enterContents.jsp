<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- star plugin -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/starrr-gh-pages/dist/starrr.js"></script>
<script type="text/javascript">

$(function() {
    return $(".starrr").starrr();
});

$( document ).ready(function() {
      
  $('#stars').on('starrr:change', function(e, value){
    $('#count').html(value);
  });
  
  $('#stars-existing').on('starrr:change', function(e, value){
    $('#count-existing').html(value);
  });
  
});
</script> 

<!-- detailView... -->
<section class="post-list" id="news">

	<!-- SINGLE NEWS ITEM -->
	<div class="swiper-slide">
		<div class="post-entry wow fadeInUp">
			<br><br>
 			<a href="#"
				data-toggle="modal" data-target="#post-01" class="post-entry-more">
				read more 
			</a> 
		</div>
	</div> 

	<!-- detail MODAL -->
	<div class="modal fade" id="post-01" role="dialog" tabindex="-1">
		<div class="modal-dialog">
			<!-- NEWS MODAL CONTENT -->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>

				<div class="modal-body">
					<div class="post-entry post-entry-modal">
						<h3 class="section-heading">Duis aute irure dolor in
							reprehenderit in voluptate.</h3>

<!-- 						
						     <ul>
								<li> -->
									<a href="#" data-toggle="modal" data-target="#starScore" class="post-entry-more">
									<span class="glyphicon glyphicon-heart"
										  style="font-size: 200px; 
										  color: #ff6666 !important;"></span>
									</a>
<!-- 								</li>
							</ul>						
						</a> -->

						<!-- picture -->
						<span class="post-entry-cover"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/entertainment/zootopia.jpg);"></span>


						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam,</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /detail modal 끝 -->
			
			<!-- starScore modal -->		
			<div class="modal fade" id="starScore" role="dialog" tabindex="-1">
				<div class="modal-dialog" >
				
				<!-- star  -->
				<div class="container"> 
					<div class="row lead">
					<span id="stars-existing" class="starrr" data-rating='1'></span> 
					<span id="count-existing">1</span>점
					</div>
				</div><!-- star 끝 -->
				
				<!-- save, cancle -->
				<div class="modal-footer">
                    <div class="btn-group">
                        <button class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                        <button class="btn btn-primary"><span class="glyphicon glyphicon-check"></span> Save</button>
                    </div>
                </div><!-- save,cancle 끝 -->
                
				</div><!-- modal-dialog 끝 -->

			</div><!-- starScore modal 끝 -->
</section>


<!--  Main 슬라이더 부분 -->
<section class="home section image-slider" id="home">
	<div class="home-slider text-center">
		<div class="swiper-wrapper">
			<div class="swiper-slide"
				style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main1.jpg);">
				<img
					src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
					alt="store logo">
				<h2 class="home-slider-title-main white-color">으랴압</h2>
				<a class="arrow bounce text-center" href="#products"> <span
					class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
				</a>
			</div>

			<div class="swiper-slide"
				style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/main2.jpg);">
				<img
					src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
					alt="store logo">
				<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 2</h2>
				<a class="arrow bounce text-center" href="#about"> <span
					class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
				</a>
			</div>

			<div class="swiper-slide"
				style="background: url(${pageContext.request.contextPath}/resources/images/eating/slider/slide1.jpg);">
				<img
					src="${pageContext.request.contextPath}/resources/images/eating/logo-white.png"
					alt="store logo">
				<h2 class="home-slider-title-main white-color">음식관련 내용 넣기 3</h2>
				<a class="arrow bounce text-center" href="#about"> <span
					class="ti-mouse"></span> <span class="ti-angle-double-down"></span>
				</a>
			</div>

		</div>
		<div class="home-pagination"></div>
		<div class="home-slider-next right-arrow-negative">
			<span class="ti-arrow-right"></span>
		</div>
		<div class="home-slider-prev left-arrow-negative">
			<span class="ti-arrow-left"></span>
		</div>
	</div>
</section>

<!-- Portfolio section start -->
<div class="section secondary-section " id="portfolio">
	<div class="triangle"></div>
	<div class="container">
		<div class=" title">
			<h1>Have You Seen our Works?</h1>
			<p>Duis mollis placerat quam, eget laoreet tellus tempor eu.
				Quisque dapibus in purus in dignissim.</p>
			<a href="${pageContext.request.contextPath}/entertainment/detailView" >안녕♡</a>
		</div>
		<ul class="nav nav-pills">
			<li class="filter" data-filter="all"><a href="#noAction">All</a>
			</li>
			<li class="filter" data-filter="web"><a href="#noAction">Web</a>
			</li>
			<li class="filter" data-filter="photo"><a href="#noAction">Photo</a>
			</li>
			<li class="filter" data-filter="identity"><a href="#noAction">Identity</a>
			</li>
		</ul>
		<!-- Start details for portfolio project 1 -->
		<div id="single-project">
			<div id="slidingDiv" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio01.png"
						alt="project 1" />
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>Believe in yourself! Have faith in your abilities! Without
							a humble but reasonable confidence in your own powers you cannot
							be successful or happy.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 1 -->
			<!-- Start details for portfolio project 2 -->
			<div id="slidingDiv1" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio02.png"
						alt="project 2">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>Life is a song - sing it. Life is a game - play it. Life is
							a challenge - meet it. Life is a dream - realize it. Life is a
							sacrifice - offer it. Life is love - enjoy it.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 2 -->
			<!-- Start details for portfolio project 3 -->
			<div id="slidingDiv2" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio03.png"
						alt="project 3">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>How far you go in life depends on your being tender with
							the young, compassionate with the aged, sympathetic with the
							striving and tolerant of the weak and strong. Because someday in
							your life you will have been all of these.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 3 -->
			<!-- Start details for portfolio project 4 -->
			<div id="slidingDiv3" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio04.png"
						alt="project 4">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Project for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>Life's but a walking shadow, a poor player, that struts and
							frets his hour upon the stage, and then is heard no more; it is a
							tale told by an idiot, full of sound and fury, signifying
							nothing.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 4 -->
			<!-- Start details for portfolio project 5 -->
			<div id="slidingDiv4" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio05.png"
						alt="project 5">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>We need to give each other the space to grow, to be
							ourselves, to exercise our diversity. We need to give each other
							space so that we may both give and receive such beautiful things
							as ideas, openness, dignity, joy, healing, and inclusion.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 5 -->
			<!-- Start details for portfolio project 6 -->
			<div id="slidingDiv5" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio06.png"
						alt="project 6">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>I went to the woods because I wished to live deliberately,
							to front only the essential facts of life, and see if I could not
							learn what it had to teach, and not, when I came to die, discover
							that I had not lived.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 6 -->
			<!-- Start details for portfolio project 7 -->
			<div id="slidingDiv6" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio07.png"
						alt="project 7">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>Always continue the climb. It is possible for you to do
							whatever you choose, if you first get to know who you are and are
							willing to work with a power that is greater than ourselves to do
							it.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 7 -->
			<!-- Start details for portfolio project 8 -->
			<div id="slidingDiv7" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio08.png"
						alt="project 8">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>What if you gave someone a gift, and they neglected to
							thank you for it - would you be likely to give them another? Life
							is the same way. In order to attract more of the blessings that
							life has to offer, you must truly appreciate what you already
							have.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 8 -->
			<!-- Start details for portfolio project 9 -->
			<div id="slidingDiv8" class="toggleDiv row-fluid single-project">
				<div class="span6">
					<img
						src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio09.png"
						alt="project 9">
				</div>
				<div class="span6">
					<div class="project-description">
						<div class="project-title clearfix">
							<h3>Webste for Some Client</h3>
							<span class="show_hide close"> <i class="icon-cancel"></i>
							</span>
						</div>
						<div class="project-info">
							<div>
								<span>Client</span>Some Client Name
							</div>
							<div>
								<span>Date</span>July 2013
							</div>
							<div>
								<span>Skills</span>HTML5, CSS3, JavaScript
							</div>
							<div>
								<span>Link</span>http://examplecomp.com
							</div>
						</div>
						<p>I learned that we can do anything, but we can't do
							everything... at least not at the same time. So think of your
							priorities not in terms of what activities you do, but when you
							do them. Timing is everything.</p>
					</div>
				</div>
			</div>
			<!-- End details for portfolio project 9 -->
			<ul id="portfolio-grid" class="thumbnails row">
				<li class="span3 mix web">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Team1.png"
							alt="project 1"> <a href="#single-project"
							class="more show_hide" rel="#slidingDiv"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix photo">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio02.png"
							alt="project 2"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv1"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix identity">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio03.png"
							alt="project 3"> <a href="#single-project"
							class="more show_hide" rel="#slidingDiv2"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix web">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio04.png"
							alt="project 4"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv3"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix photo">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio05.png"
							alt="project 5"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv4"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix identity">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio06.png"
							alt="project 6"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv5"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix web">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio07.png"
							alt="project 7" /> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv6"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix photo">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio08.png"
							alt="project 8"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv7"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
				<li class="span3 mix identity">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/resources/pluton/images/Portfolio09.png"
							alt="project 9"> <a href="#single-project"
							class="show_hide more" rel="#slidingDiv8"> <i
							class="icon-plus"></i>
						</a>
						<h3>Thumbnail label</h3>
						<p>Thumbnail caption...</p>
						<div class="mask"></div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- Portfolio section end -->

<div class="section third-section">
	<div class="container centered">
		<div class="sub-section">
			<div class="title clearfix">
				<div class="pull-left">
					<h3>Movie</h3>
				</div>
				<ul class="client-nav pull-right">
					<li id="client-prev"></li>
					<li id="client-next"></li>
				</ul>
			</div>
			<ul class="row client-slider" id="clint-slider">
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/Team1.png"
						alt="client logo 1">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo02.png"
						alt="client logo 2">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo03.png"
						alt="client logo 3">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo04.png"
						alt="client logo 4">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo05.png"
						alt="client logo 5">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo02.png"
						alt="client logo 6">
				</a></li>
				<li><a href=""> <img
						src="${pageContext.request.contextPath}/resources/pluton/images/clients/ClientLogo04.png"
						alt="client logo 7">
				</a></li>
			</ul>
		</div>
	</div>
</div>

<!-- ScrollUp button start -->
<div class="scrollup">
	<a href="#"> <i class="icon-up-open"></i>
	</a>
</div>
