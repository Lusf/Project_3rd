<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.Enumeration"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript">
	var $ = jQuery.noConflict();
	$(function() {
		$('#activator').click(function() {
			$('#box').animate({
				'top' : '0px'
			}, 500);
		});
		$('#box').click(function() {
			$('#box').animate({
				'top' : '-700px'
			}, 500);
		});
	});
	$(document).ready(function() {
		// Hide (Collapse) the toggle containers on load
		$(".toggle_container").hide();
		// Switch the "Open" and "Close" state per click then slide up/down
		// (depending on open/close state)
		$(".trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("slow");
			return false; // Prevent the browser jump to the link anchor
		});

	});
	

	function logout() {
		document.getElementById("logoutForm").submit();
	}	
</script>
<style>
li span {
	font-weight: bold;
	font-size: 20px;
}
</style>

<div class="header">
	<div class="col-xs-2 col-md-2">
		<div class="nav-icon">
			<a class="right_bt" id="activator"><span> </span> </a>
		</div>
	</div>
	<div class="box" id="box">
		<div class="box_content">
			<div class="box_content_center">
				<div class="form_content">
					<div class="menu_box_list">
						<ul>
							<li><a href="${pageContext.request.contextPath}/"><span>home</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/travelge/main"><span>Travelge</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/entertainment/enterMain"><span>Entertainment</span></a></li>
							<li><a href="#"><span>Food</span></a></li>
							<li><sec:authorize access="isAuthenticated()"><a href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />"><span>Blog</span></a></sec:authorize></li>
							<li><a href="#"><span>Contact</span></a></li>

						</ul>
					</div>
					<!-- <a class="boxclose" id="boxclose"> <span> </span></a> -->
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

	<div class="col-xs-2 col-md-2 col-md-offset-2 col-xs-offset-2">
		<sec:authorize access="isAuthenticated()">
			<div style="color: black">
			<sec:authentication property="principal.id" /> 
			 님 환영합니다.
			 </div> <!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
			<a href="javascript:logout();">로그아웃</a>
		</sec:authorize>
		<sec:authorize access="!isAuthenticated()">
			<a href="${pageContext.request.contextPath }/user/loginForm"
				style="margin-right: 1em"> 로그인</a>
			<a href="user/joinForm">회원가입</a>
		</sec:authorize>


	</div>

</div>
<!-- 로그아웃 -->

		<!-- 
로그아웃은 스프링시큐리티 4 부터는 로그아웃시 POST 방식으로 이동하며 /logout url로 요청한다. (따로 정의하지 않으면)
그리고 _csrf 를 요청파라미터로 보내야 한다.
 -->
	<form id="logoutForm" action="${pageContext.request.contextPath}/user/logout"
		method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

<sec:authorize access="hasRole('ROLE_ADMIN')">
	<script>
		location.href="${pageContext.request.contextPath}/admin/index";
	</script>			
</sec:authorize>
<!---//End-header---->
