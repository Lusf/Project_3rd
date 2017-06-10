<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#title-row {
	margin-top: 6em;
	padding: 0.5em 0;
}

#title-font {
	color: white;
	font-size: 1.5em;
	margin: 0 3.5em;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#title-row {
		margin-top: 10em;
		padding: 1em 0;
	}
	#title-font {
		color: white;
		font-size: 4em;
		margin: 0 0.3em;
	}
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>


	<div class="row" id="title-row">
	</div>
	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>