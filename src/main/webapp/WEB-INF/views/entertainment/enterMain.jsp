<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Entertainment</title>
<!-- Include javascript -->
<script src="js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/jquery.mixitup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/modernizr.custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/jquery.cslider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/jquery.placeholder.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/jquery.inview.js"></script>
<!-- Load google maps api and call initializeMap function defined in app.js -->
<script async="" defer="" type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initializeMap"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/pluton/js/app.js"></script>


<%--
	<!-- materialize -->
	<script src="${pageContext.request.contextPath}/resources/js/materialize.min.js"></script>
	<link rel="stylesheet" href="<c:url value= '/resources/css/materialize.min.css'/>">
	--%>
</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp" %>
	<%@include file="/WEB-INF/views/entertainment/includePluton.jsp" %>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<%@include file="/WEB-INF/views/entertainment/enterContents.jsp"%>

	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>