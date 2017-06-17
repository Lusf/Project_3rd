<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
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
	appearance: none;
}
</style>
<script type="text/javascript">
	$(document).ready(	function() {
				$('.fliper-btn').click(function() {
					$('.flip').find('.card').toggleClass('flipped');
				});
				var fileTarget = $('.filebox .upload-hidden');
				fileTarget.on('change', function() {
					// 값이 변경되면
					if (window.FileReader) {
						// modern browser 
						var filename = $(this)[0].files[0].name;
					} else {
						// old IE 
						var filename = $(this).val().split('/').pop().split('\\').pop();
					}
					// 파일명만 추출 } // 추출한 파일명 삽입 
					$(this).siblings('.upload-name').val(filename);
				});
				});
</script>
</head>
<body>
	<div>
		<a href="eating/test"></a>
		<c:forEach items="${requestScope.list}" var="test">
		  ${test.contentCode},${test.restaurantAddr},${test.restaurantName},${test.category},${test. restaurantInfo},${test. restaurantPic},${test.id}
	</c:forEach>
		<!--   restaurant_name varchar2(30),
  address varchar2(50),
  category -->
	</div>

	<%-- <form class="form-horizontal" name="writeForm" method="post"
		action="${pageContext.request.contextPath }/eating/test"
		onsubmit='return checkValid()' enctype="multipart/form-data"
		id="writeForm">
		<br> <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}"> --%>
		<%-- <div class="form-group" align="center" id="holder">
								<img
									src="${pageContext.request.contextPath}/resources/images/join/unknown.jpg"
									class="img-circle" width="100" height="100">
							</div> --%>
		<!-- private String contentCode;
	private String restaurantName;
	private String addr;
	private String category;
	private String pic;
	private String id; -->
		<!-- <br> <label>기본사항</label> <br> <input type="text"
			class="form-control" placeholder="맛집이름" name="restaurantName" /> <input
			type="text" class="form-control" placeholder="주소" name="addr" /> <input
			type="text" class="form-control" placeholder="카테고리" name="category" />
		<br> <label>추가사항</label><br>
		<div class="filebox">
				<input class="form-control" type="file" name="file" placeholder="사진" id="upload" />
			<input class="upload-name" value="파일선택" disabled="disabled">
			<label for="upload">사진 업로드</label>
			<input type="file" id="upload" class="upload-hidden" name="file">
		</div>
		<button type="submit" class="btn btn-primary btn-block">등록하기</button>

	</form>
	<script type="text/javascript">
		var upload = document.getElementById('upload'),
				holder = document.getElementById('holder');

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[0], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.src = event.target.result;
				img.width = 100;
				img.height = 100;
				img.className = "img-circle";
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		}; -->
	</script>
</body>
</html>