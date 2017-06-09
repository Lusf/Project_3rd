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

@media only screen and (max-width:1024px) and (min-width:768px) {
	#title-row {
		margin-top: 10em;
		padding: 1em 0;
	}
}
</style>

</head>
<body style="background-color: white;">
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="row" id="title-row">
		<div class="col-md-offset-2 col-md-8 col-xs-12">
			<div class="card">
				<div class="card-panel">
					<div style="text-align: center">
						<img
							src="${pageContext.request.contextPath}/resources/images/travelge/recommand/recommand4.jpg">
					</div>
					<h2>타이틀 영역</h2>
					<span>I am a very simple card. I am good at containing small
						bits of information. I am convenient because I require little
						markup to use effectively. I am similar to what is called a panel
						in other frameworks. </span>
				</div>
			</div>
		</div>
	</div>


	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>