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

<script type="text/javascript">
	$(document).ready(function() {

		$('.fliper-btn').click(function() {
			$('.flip').find('.card').toggleClass('flipped');

		});

	})
</script>

</head>
<div class="container">

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="flip">
				<div class="card">
					<div class="face front">
						<div class="panel panel-default">

							<form class="form-horizontal"
								action="${pageContext.request.contextPath}/user/login"
								method="post">
								<br>
								<h4 class="text-center">
									<c:if test="${not empty requestScope.errorMessage}">
										<span style="color: red">${requestScope.errorMessage}</span>
									</c:if>
								</h4>

								<br> <input class="form-control" placeholder="Username"
									name="id" /> <input class="form-control"
									placeholder="Password" name="password" />
								<p class="text-right">
									<a href="">Forgot Password</a>
								</p>
								<button class="btn btn-primary btn-block">LOG IN</button>
								<hr>
								<hr>
								<p class="text-center">
									<a href="#" class="fliper-btn">Create new account?</a>
								</p>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}">
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
								<br>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											<div class="form-group" align="center" id="holder">
					               <img
					                  src="${pageContext.request.contextPath}/resources/images/join/unknown.jpg"
					                  class="img-circle" width="100" height="100">
					
					            </div>

								<br> <label>기본사항</label> 
								<input class="form-control" placeholder="아이디" name="id"/> 
								<input type="password" class="form-control" placeholder="비밀번호" name="password"/>
								<input type="password" class="form-control" placeholder="비밀번호확인" name="password2"/>
								<input class="form-control" placeholder="전화번호" name="tell"/>
								<label>추가사항</label> 
								<input class="form-control"
								type="file" name="file" placeholder="사진" id="upload" />
								<button type="submit" class="btn btn-primary btn-block">SIGN UP</button>
								<p class="text-center">
									<a href="#" class="fliper-btn">Already have an account?</a>
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