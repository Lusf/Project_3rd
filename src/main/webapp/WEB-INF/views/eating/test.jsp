<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
<a href ="eating/test"></a>
	<c:forEach items="${requestScope.list}" var="test">
		  ${test.contentCode},${test.addr},${test.restaurantName},${test.category},${test.id}
	</c:forEach>
	<!--   restaurant_name varchar2(30),
  address varchar2(50),
  category -->
</div>
</body>
</html>