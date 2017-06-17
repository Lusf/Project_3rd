<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>

<!-- Latest compiled JavaScript -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">



<link rel="stylesheet"
	href="<c:url value= '/resources/assets/login/login.css'/>">

<style type="text/css">
.filebox input[type="file"] {
 position: absolute;
 width: 1px; height: 1px; padding: 0;
  margin: -1px; overflow: hidden; 
  clip:rect(0,0,0,0); border: 0; } 
.filebox label { 
display: inline-block;
 padding: .5em .75em; 
 color: #fff; 
 font-size: inherit; 
 line-height: normal; 
 vertical-align: middle; 
 background-color: #337ab7; 
 cursor: pointer; 
 border: 1px solid #ebebeb; 
 border-bottom-color: #e2e2e2; }


.filebox .upload-name { 
display: inline-block; 
padding: .5em .75em;
margin-bottom: 5px;
 /* label의 패딩값과 일치 */ 
 font-size: inherit; 
 font-family: inherit; 
 line-height: normal;
 vertical-align: middle; 
 background-color: #f5f5f5; 
 border: 1px solid #ebebeb; 
 border-bottom-color: #e2e2e2; 
 -webkit-appearance: none; /* 네이티브 외형 감추기 */
 -moz-appearance: none; 
 appearance: none; }


</style>

<script type="text/javascript">
	$(document).ready(function() {

		$('.fliper-btn').click(function() {
			$('.flip').find('.card').toggleClass('flipped');

		});	
		
		var fileTarget = $('.filebox .upload-hidden'); 
		fileTarget.on('change', function(){
			// 값이 변경되면
			if(window.FileReader){ 
				// modern browser 
				var filename = $(this)[0].files[0].name; 
				} else { 
					// old IE 
					var filename = $(this).val().split('/').pop().split('\\').pop(); }
					// 파일명만 추출 } // 추출한 파일명 삽입 
					$(this).siblings('.upload-name').val(filename); 
					
		});		
	});
function checkValid() {
	var f = window.document.writeForm;

	if (f.id.value == "") {
		alert("아이디를 입력해 주세요.");
		f.id.focus();
		return false;
	}
	if (f.password.value == "") {
		alert("비밀번호를 입력해 주세요..");
		f.password.focus();
		return false;
	}
	if (f.password2.value == "") {
		alert("비밀번호를 입력해주세요");
		f.password2.focus();
		return false;
	}
	if (f.tell.value == "") {
		alert("전화번호를 입력해 주세요.");
		f.tell.focus();
		return false;
	}
	if(f.password.value != f.password2.value){
		alert("비밀번호가 일치하지 않습니다.");
		f.password.value="";
		f.password2.focus();
		return false;
	}

	return true;
}	
</script>

</head>
<div class="container">

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="flip">

				<c:if test="${flag ==1 or flag eq null }">
					<div class="card">
				</c:if>
				<c:if test="${flag ==0 }">
					<div class="card flipped">
				</c:if>
				<div class="face front">
					<div class="panel panel-default">

						<form class="form-horizontal"
							action="${pageContext.request.contextPath}/login"
							method="post">
							<br>
							<h4 class="text-center">

							</h4>

							<br> <input class="form-control" placeholder="Username"
								name="id" /> <input type="password" class="form-control" placeholder="Password"
								name="password" />
							<p class="text-right">
																<c:if test="${not empty requestScope.errorMessage}">
									<span style="color: red">${requestScope.errorMessage}</span>
								</c:if>
							</p>
							<button class="btn btn-primary btn-block">로그인</button>
							<hr>
							<hr>
							<p class="text-center">
								<a class="fliper-btn">Create new account?</a>
							</p>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
								<input type="hidden" name="loginRedirect" value="${loginRedirect}" />
						</form>
					</div>
				</div>

				<!-- 	/////////////////////////////////// -->
				<div class="face back">
					<div class="panel panel-default">
						<form class="form-horizontal" name="writeForm" method="post"
							action="${pageContext.request.contextPath }/user/join"
							onsubmit='return checkValid()' enctype="multipart/form-data"
							id="writeForm">
							<br> <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<div class="form-group" align="center" id="holder">
								<img
									src="${pageContext.request.contextPath}/resources/images/join/unknown.jpg"
									class="img-circle" width="100" height="100">

							</div>

							<br> <label>기본사항</label> 
								<input class="form-control" placeholder="아이디" name="id" /> 
								<input type="password" class="form-control" placeholder="비밀번호" name="password" /> 
								<input type="password" class="form-control" placeholder="비밀번호확인" name="password2" /> 
								<input class="form-control" placeholder="전화번호" name="tell" /> 
								<label>추가사항</label> 
								<div class="filebox">
<!-- 	<input class="form-control" type="file" name="file" placeholder="사진" id="upload" /> -->
								<input class="upload-name" value="파일선택" disabled="disabled"> 
								<label for="upload">사진 업로드</label> 
								<input type="file" id="upload" class="upload-hidden" name="file"> 
								</div>
								<button type="submit" class="btn btn-primary btn-block">SIGN UP</button>
							<p class="text-center">
								<a class="fliper-btn">Already have an account?</a>
							</p>

						</form>

					</div>

				</div>
			</div>
		</div>

	</div>
	<div class="col-md-4"></div>

</div>

</div>
<!-- /.container -->
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
   img.width = 100;
   img.height = 100;
   img.className="img-circle";
   holder.innerHTML = '';
   holder.appendChild(img);
};
reader.readAsDataURL(file);

return false;
};

</script>
</body>
</html>