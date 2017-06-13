<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/eating/bootstrap-eating.css'/>" rel="stylesheet">
</head>
<body>

<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">  
<div class="container">
    <div class="row user-menu-container square">
        <div class="col-md-7 user-details">
            <div class="row coralbg white">
                <div class="col-md-6 no-pad">
                    <div class="user-pad">
                        <h3>아이디 띄우기(이메일 형식)</h3>
                        <h4 class="white"><strong>전화번호 : ${userInfo.tell}</strong>010-8464-7720</h4>
                        <button type="button" class="btn btn-labeled btn-info" href="#">
                            <span class="btn-label"><i class="fa fa-pencil"></i></span>수정</button>
                    </div>
                </div>
                <div class="col-md-6 no-pad">
                    <div class="user-image">
                        <img src="https://farm7.staticflickr.com/6163/6195546981_200e87ddaf_b.jpg" class="img-responsive thumbnail">
                    </div>
                </div>
            </div>
            <div class="row overview">
                <div class="col-md-4 user-pad text-center">
                    <h3>리뷰</h3>
                    <h4>2,784 개</h4>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h3>관심분야</h3>
                    <h4>어떻게 띄울것인가?</h4>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h3>찜한 목록</h3>
                    <h4>4,901 개</h4>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>