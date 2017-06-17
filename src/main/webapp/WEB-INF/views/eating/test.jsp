<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<div>
		<a href="eating/test"></a>
		<c:forEach items="${requestScope.list}" var="test">
		  ${test.contentCode},${test.restaurantAddr},${test.restaurantName},${test.category},${test. restaurantInfo},${test. restaurantPic},${test.id}
	</c:forEach>
	</div>
</body>
</html>