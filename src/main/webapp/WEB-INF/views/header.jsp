<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="header">
	<div class="col-xs-2 col-md-2">
		<div class="nav-icon">
			<a href="#" class="right_bt" id="activator"><span> </span> </a>
		</div>
	</div>
	<div class="box" id="box">
		<div class="box_content">
			<div class="box_content_center">
				<div class="form_content">
					<div class="menu_box_list">
						<ul>
							<li><a href="#"><span>home</span></a></li>
							<li><a href="#"><span>About</span></a></li>
							<li><a href="#"><span>Works</span></a></li>
							<li><a href="#"><span>Clients</span></a></li>
							<li><a href="#"><span>Blog</span></a></li>
							<li><a href="#"><span>Contact</span></a></li>
							
						</ul>
					</div>
					<a class="boxclose" id="boxclose"> <span> </span></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-2 col-md-2 col-md-offset-3 col-xs-offset-3">
		<div class="logo">
			<a href="${pageContext.request.contextPath }/"><img
				src="${pageContext.request.contextPath }/resources/images/header/logo.png"
				title="pinbal" /></a>
		</div>
	</div>

	<div class="col-xs-2 col-md-2 col-md-offset-3 col-xs-offset-3">
		<a href="login/login"> <img
			src="${pageContext.request.contextPath }/resources/images/header/user-pic.png"
			title="user-name" /> 로그인
		</a> <a href="login/joinForm">회원가입</a>

	</div>
	<div class="clear"></div>
</div>

<!---//End-header---->
