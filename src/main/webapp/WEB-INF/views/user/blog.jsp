<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
<meta name="viewport" content="initial-scale=1.0">
<!-- jquery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.cslider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.placeholder.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.inview.js"></script>
<!-- wow script -->
<script src="${pageContext.request.contextPath}/resources/assets/wow/wow.min.js"></script>
<!-- boostrap -->
<script src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.js"></script>
<!-- custom script -->
<script src="${pageContext.request.contextPath}/resources/assets/script.js"></script>
<!-- app -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>

<!-- style -->

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
<!-- Google Icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Load Roboto font -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/bootstrap/css/bootstrap.min.css'/>" >
<link rel="stylesheet" href="<c:url value= '/resources/pluton/css/bootstrap-responsive.css'/>" />
<!-- animate.css -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/animate.css'/>" >
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/set.css'/>" >
<!-- favicon -->
<link rel="shortcut icon" href="<c:url value= '/resources/images/favicon.ico'/>" type="image/x-icon">
<link rel="icon" href="<c:url value= '/resources/images/favicon.ico'/>" type="image/x-icon">
<link rel="stylesheet" href="<c:url value= '/resources/assets/main.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/style.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/style2.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/carousel.css'/>">


</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>
	
	<style>
	.centerView {margin-top: 6.3em;}
	table, td {border: 1px solid blue; }
	table {
		width: 100%;
		height: auto;
	}
	</style>
	
	<div class="centerView">
		<table>
			<tr><td colspan="2">blog header</td></tr>
			<tr>
				<td>
					left
				</td>
				<td>
					right
				</td>
			</tr>
		</table>
	</div>
	
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>