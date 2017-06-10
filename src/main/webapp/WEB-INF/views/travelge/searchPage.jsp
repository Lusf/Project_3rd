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
	#search-row{
		margin-left : 0.5em;
		margin-right : -10em;
	}
	#input-search {
		padding-top: 1.5em;
		padding-bottom: 1.5em;
		font-size: 3em;
		border-radius: 0.5em;
	}
	
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>


	<div class="row" id="title-row"></div>
	<div class="row" id="search-row">
		<div class="col-md-8 col-xs-12 col-md-offset-2">
			<input type="search" class="form-control" id="input-search"
				placeholder=" 장소명 또는 지역명 입력해주세요.">
		</div>
	</div>


	<%@include file="/WEB-INF/views/travelge/travelge-footer.jsp"%>
</body>
</html>