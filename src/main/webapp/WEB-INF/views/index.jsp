<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <style>
#indexGrid {
	padding-top: 6em
}
@media only screen and (max-width:1024px) and (min-width:768px) {
	#indexGrid {
		padding-top: 10em
	}
</style>
 -->
<script>
$('html, body').css({'overflow' : 'hidden', 'height':'100%'});
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/includeFile.jsp" %>
	<%@include file="/WEB-INF/views/header.jsp"%>	
	<%@include file="/WEB-INF/views/contents.jsp" %>
	<%@include file="/WEB-INF/views/footer.jsp"%>


</body>
</html>