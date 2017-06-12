<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<section class="post-list" id="news">
	<div class="container overflow-hidden">
		<div class="row">
			<div class="col-md-12">
				<h3 class="section-heading">news</h3>
			</div>

			<div class="post-slider col-md-12">
				<!-- NEWS CAROSUEL -->
				
				<div class="swiper-wrapper">
					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->

					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->

					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->

					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->

					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->

					<!-- SINGLE NEWS ITEM -->
					<div class="swiper-slide">
						<div class="post-entry wow fadeInUp">
							<a href="#" data-toggle="modal" data-target="#post-01"> <span
								class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);">
							</span>
							</a> <a class="h3" href="#" data-toggle="modal"
								data-target="#post-01"> Estibulum ante ipsum primis lobortis
							</a> <a href="#" data-toggle="modal" data-target="#post-01"
								class="post-entry-more"> read more <span
								class="ti-arrow-right icon"></span>
							</a>
						</div>
					</div>
					<!-- / SINGLE NEWS ITEM -->
				</div>
				<!-- / NEWS CAROSUEL -->

				<!-- CAROUSEL CONTROLS -->
				<div class="post-pagination text-center"></div>
				<div class="post-slider-next right-arrow-negative">
					<span class="ti-arrow-right"></span>
				</div>

				<div class="post-slider-prev left-arrow-negative">
					<span class="ti-arrow-left"></span>
				</div>
				<!-- / CAROUSEL CONTROLS -->
			</div>
		</div>

		<!-- NEWS MODAL -->
		<div class="modal fade" id="post-01" role="dialog" tabindex="-1">
			<div class="modal-dialog">
				<!-- NEWS MODAL CONTENT -->
				<div class="modal-content shadow">
					<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>

					<div class="modal-body">
						<div class="post-entry post-entry-modal">
							<h3 class="section-heading">Duis aute irure dolor in
								reprehenderit in voluptate.</h3>

							<span class="post-entry-meta"> <img alt="user avatar"
								class="post-entry-author pull-left"
								src="${pageContext.request.contextPath}/resources/images/eating/user.png">
								<span class="post-entry-author-name pull-left">Alex
									Example</span> <span class="post-entry-time pull-right">6 min
									read <span class="post-entry-category">interior,
										furnitures</span>
							</span>
							</span> <span class="post-entry-cover"
								style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);"></span>

							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam,</p>

							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum. Lorem ipsum dolor sit amet,
								consectetur adipisicing elit, sed do eiusmod tempor incididunt
								ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>

							<p>quis nostrud exercitation ullamco laboris nisi ut aliquip
								ex ea commodo consequat. Duis aute irure dolor in reprehenderit
								in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
								Excepteur sint occaecat cupidatat non proident, sunt in culpa
								qui officia deserunt mollit anim id est laborum. Lorem ipsum
								dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								minim veniam, quis nostrud exercitation ullamco laboris nisi ut
								aliquip ex ea commodo consequat. Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum.</p>
						</div>
					</div>
				</div>
				<!-- / NEWS MODAL CONTENT -->
			</div>
		</div>
		<!-- / NEWS MODAL -->
	</div>
</section>
