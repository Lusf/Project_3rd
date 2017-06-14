<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- jquery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.cslider.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.placeholder.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.inview.js"></script>
<!-- wow script -->
<script
	src="${pageContext.request.contextPath}/resources/assets/wow/wow.min.js"></script>
<!-- boostrap -->
<script
	src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.js"></script>
<!-- custom script -->
<%-- 
<script src="${pageContext.request.contextPath}/resources/assets/script.js"></script> --%>
<!-- app -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<!-- blog -->

<!-- style -->

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- Google Icon -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Load Roboto font -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet"
	href="<c:url value= '/resources/pluton/css/bootstrap-responsive.css'/>" />
<!-- animate.css -->
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/animate/animate.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/animate/set.css'/>">
<!-- favicon -->
<link rel="shortcut icon"
	href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">
<link rel="icon" href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/main.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style2.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/carousel.css'/>">
<!-- blog -->
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/bootstrap/css/bootstrap.min.css'/>">

<style>
/* container 간격 조절 */
.container {
	margin-top: 3em;
	margin-bottom: 5em;
}

/* 사이드바 메뉴 조절 */
.list-unstyled {
	margin-top: 10px;
	margin-left: 15px;
	line-height: 1.4;
}

.list-unstyled li {
	font-size: 20px;
}

/* 화면 조절 */
.cont {width: 73%;}
.side {
	width: 20%;
	position: absolute;
	top: 7.7em;
	left: 73%;
}
</style>

<script>
$(function(){
	$("input[name=category]").click(function(){
		$.ajax({
			type: "post",
			url: "blog/selectTitle",
			data: "category="+$(this).attr('value'),
			dataType: "json",	//'중복입니다','사용가능합니다'
			success: function(result){
				$("#blogTitle tr:eq(0)").nextAll().remove();
				
				var str = "";
				$.each(result, function(index, item){
					str += "<tr>";
					str += "<td><a href='#'>"+item+"</a></td>";
					str += "</tr>";
				});
				
				$("#blogTitle").append(str);
			},
			error: function(err){
				console.log("오류발생: "+err)
			}
		});
	});
});
</script>

</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<form name="inForm" method="post" id="inForm">
			<!-- Blog Post Content Column -->
			<div class="cont">
				<jsp:include page="blogContent.jsp" />
			</div>
			
			<!-- Blog Sidebar Widgets Column -->
			<div class="side">
				<!-- Blog Categories Well -->
				<div class="well">
					<h4>Blog Categories</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><input type="button" id="travelge" name="category" value="Travelge" /></li>
								<li><input type="button" id="entertainment" name="category" value="Entertainment" /></li>
								<li><input type="button" id="food" name="category" value="Food" /></li>
							</ul>
						</div>
					</div>
					<!-- /.row -->
				</div>

				<!-- Side Widget Well -->
				<div class="well">
					<table id="blogTitle">
						<tr>
							<td><h4>Title</h4></td>
						</tr>
					</table>
				</div>

				<!-- Blog Search Well -->
				<div class="well">
					<h4>Blog Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
					<!-- /.input-group -->
				</div>
			</div>
		</form>
	</div>
	<!-- /.container -->

	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>