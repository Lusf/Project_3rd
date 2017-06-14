<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/eating/bootstrap-eating.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/css/mypage/userProfile.css'/>"
	rel="stylesheet">
<link
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" media="screen">
</head>
<body>

	<div class="container">
		<div class="col-md-7 user-details">
			<div class="row coralbg white">
				<div class="col-md-6 no-pad">
					<div class="user-pad">
						<h3>${userInfo.id}</h3>
						<h4 class="white">
							<Strong>전화번호 : ${userInfo.tell}</Strong>
						</h4>
						<h4 class="white">
							<Strong>포인트 : ${userInfo.point}점</Strong>
						</h4>
						<button type="button" class="btn btn-labeled btn-info" href="#">
							<span class="btn-label"><i class="fa fa-pencil"></i></span>Update
						</button>
					</div>
				</div>
				<div class="col-md-6 no-pad">
					<div class="user-image">
						<img
							src="https://farm7.staticflickr.com/6163/6195546981_200e87ddaf_b.jpg"
							class="img-responsive thumbnail">
					</div>
				</div>
			</div>
			<div class="row overview">
				<div class="col-md-4 user-pad text-center">
					<h3>관심분야</h3>
					<h4>Not yet</h4>
				</div>
				<div class="col-md-4 user-pad text-center">
					<h3>리뷰 수</h3>
					<h4>XX개</h4>
				</div>
				<div class="col-md-4 user-pad text-center">
					<h3>찜한 개수</h3>
					<h4>XX개</h4>
				</div>
			</div>
		</div>
	</div>

</body>
</html>