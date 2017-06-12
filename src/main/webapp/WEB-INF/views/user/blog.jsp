<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp" %>
	<%@include file="/WEB-INF/views/header.jsp"%>
	
	<style>
	.centerView {margin-top: 6.2em;}
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