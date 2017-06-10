<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap -->
<link
	href="<c:url value='/resources/assets/bootstrap/css/bootstrap.min.css' />"
	rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/bootstrap/css/font-awesome.min.css' />"
	media="screen" title="no title" charset="utf-8">
<!-- <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8"> -->
<!-- Custom style -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/bootstrap/css/style.css' />"
	media="screen" title="no title" charset="utf-8">
<!-- <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8"> -->

<SCRIPT language=javascript>
	function checkValid() {
		var f = window.document.writeForm;

		if (f.idForm.value == "") {
			alert("아이디를 입력해 주세요.");
			f.idForm.focus();
			return false;
		}
		if (f.InputPassword1.value == "") {
			alert("비밀번호를 입력해 주세요..");
			f.InputPassword1.focus();
			return false;
		}
		if (f.InputPassword2.value == "") {
			alert("비밀번호를 입력해주세요");
			f.InputPassword2.focus();
			return false;
		}
		if (f.tell.value == "") {
			alert("전화번호를 입력해 주세요.");
			f.tell.focus();
			return false;
		}
		if(f.InputPassword1.value != f.InputPassword2.value){
			alert("비밀번호가 일치하지 않습니다.");
			f.InputPassword2.value="";
			f.InputPassword2.focus();
			return false;
		}

		return true;
	}
</SCRIPT>
</head>
<body>
	<div class="page-header">
		<h1>회원가입</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form name="writeForm" method="post"
			action="${pageContext.request.contextPath }/user/join"
			onsubmit ='return checkValid()' enctype="multipart/form-data">
			<div class="form-group">
				<div>아이디</div>
				<input type="text" class="form-control" placeholder="아이디"
					name="idForm">
			</div>
			<div class="form-group">
				<div>비밀번호</div>
				<input type="password" class="form-control" name="InputPassword1"
					placeholder="비밀번호">
			</div>
			<div class="form-group">
				<div>비밀번호 확인</div>
				<input type="password" class="form-control" name="InputPassword2"
					placeholder="비밀번호 확인">
				<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
			</div>
			<div class="form-group">
				<div>전화번호</div>
				<input type="text" class="form-control" name="tell"
					placeholder="전화번호">
			</div>
			<div class="form-group">
				<div>프로필 사진</div>

				<!-- 프로필 사진 이미지는 ajax 처리 해야함 -->
				<img
					src="${pageContext.request.contextPath}/resources/images/join/unknown.jpg"
					style="width: 25%" name="pic"> <input type="file" name="file">
			</div>
			<div class="form-group text-center">
				<button type="submit" class="btn btn-info">
					회원가입<i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="reset" class="btn btn-warning"
					onclick="location.href='${pageContext.request.contextPath}'">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
	</article>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<c:url value='/resources/assets/bootstrap/js/bootstrap.min.js' />"></script>
</body>
</html>