<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
function checkValid() {
	var f = window.document.writeForm;

	if (f.id.value == "") {
		alert("아이디를 입력해 주세요.");
		f.idForm.focus();
		return false;
	}
	if (f.password.value == "") {
		alert("비밀번호를 입력해 주세요..");
		f.InputPassword1.focus();
		return false;
	}
	if (f.password2.value == "") {
		alert("비밀번호를 입력해주세요");
		f.InputPassword2.focus();
		return false;
	}
	if (f.tell.value == "") {
		alert("전화번호를 입력해 주세요.");
		f.tell.focus();
		return false;
	}
	if(f.password.value != f.password2.value){
		alert("비밀번호가 일치하지 않습니다.");
		f.password2.value="";
		f.password2.focus();
		return false;
	}

	return true;
}

</script>

<style>
#header-row {
	margin-top: 6em;
	padding: 0.5em 0;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#header-row {
		margin-top: 10em;
		padding: 1em 0;
	}
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp"%>
	<%@include file="/WEB-INF/views/header.jsp"%>


	<div class="row" id="header-row"></div>
	<div class="col-md-6 col-md-offset-3">
		<h1 style="font-size: 3em;">회원가입</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form name="writeForm" method="post"
			action="${pageContext.request.contextPath }/user/join"
			onsubmit='return checkValid()' enctype="multipart/form-data"
			id="writeForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

			<div class="form-group">
				<div>아이디</div>
				<input type="text" class="form-control" placeholder="아이디"
					name="id">
			</div>
			<div class="form-group">
				<div>비밀번호</div>
				<input type="password" class="form-control" name="password"
					placeholder="비밀번호">
			</div>
			<div class="form-group">
				<div>비밀번호 확인</div>
				<input type="password" class="form-control" name="password2"
					placeholder="비밀번호 확인">
				<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
			</div>
			<div class="form-group">
				<div>전화번호</div>
				<input type="text" class="form-control" name="tell"
					placeholder="전화번호">
			</div>
		
			<div class="form-group" align="center" id="holder">
               <img
                  src="${pageContext.request.contextPath}/resources/images/join/unknown.jpg"
                  class="img-circle" width="200" height="200">

            </div>
		
			<div class="form-group">
				<a href="#"><span class="glyphicon glyphicon-picture"
					style="margin: auto"></span>프로필 사진 올리기</a> <input class="form-control"
					type="file" name="file" placeholder="picture" id="upload" />
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

<script type="text/javascript">

var upload = document.getElementById('upload'),
holder = document.getElementById('holder');

upload.onchange = function(e) {
e.preventDefault();

var file = upload.files[0],
   reader = new FileReader();
reader.onload = function(event) {
   var img = new Image();
   img.src = event.target.result;
   img.width = 200;
   img.height = 200;
   holder.innerHTML = '';
   holder.appendChild(img);
};
reader.readAsDataURL(file);

return false;
};


</script>
<hr><hr>
<h1>${_csrf.parameterName} <br>${_csrf.token}</h1>
</body>


</html>