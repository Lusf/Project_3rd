<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>Entertainment Info Insert</title>

<link rel="stylesheet" href="<c:url value='/resources/jqueryui/css/smoothness/jquery-ui-1.9.2.custom.min.css'/>">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>


<style type="text/css">
.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #333;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fff;
	cursor: pointer;
	border: 1px solid #ccc;
	border-radius: 5px;
	border-bottom-color: #e2e2e2;
}

.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em;
	margin-bottom: 5px;
	/* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fff;
	border: 1px solid #ccc;
	border-bottom-color: #e2e2e2;
	border-radius: 5px;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/admin/nav.jsp"%>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Entertainment <small>Entertainment Info</small>
						</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-file"></i> Entertainment Info
								UpdateForm</li>
						</ol>

						<!-- 검색 옵션 -->
						<form
							action="${pageContext.request.contextPath }/entertainment/enterInfoUpdate"
							method="post" role="form" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
								
							<!-- contentCode -->
							<div class="form-group col xs-6">
								<label for="contentCode">contentCode</label>
								<input type="text" value="${list[0].contentCode}" class="form-control"  disabled="disabled" id="contentCode">
								<input type="hidden" value="${list[0].contentCode}" name="contentCode">
							</div>
							
							<!-- 제목 / 제작사 -->
							<div class="row">
								<div class="form-group col-xs-6">
									<label for="lookTitle">Title</label> <input
										type="text" class="form-control" name="lookTitle"
										id="lookTitle " value="${list[0].lookTitle}">
								</div>
								<div class="form-group col-xs-3">
									<label for="lookMaker">Maker</label> <input
										type="text" class="form-control" name="lookMaker"
										id="lookMaker" value="${list[0].lookMaker}">
								</div>
								<div class="form-group col-xs-3"><br>
									<button type="submit" class="btn btn-default">등록</button>
									<button type="reset" class="btn btn-default">다시쓰기</button>
								</div>
							</div>
							
							<!-- 카테고리 / 장르 / 연령등급 -->
							<div class="row">
								<div class="form-group col-xs-3">
									<label for="lookCate">Category</label>
									<select class="form-control" name="lookCate"
										id="lookCate">
										<option disabled="disabled">카테고리</option>
										<option value="M">영화</option>
										<option value="T">TV</option>
										<option value="C">공연/연극</option>
									</select>
								</div>
								<div class="form-group col-xs-3">
									<label for="lookGenre">Genre</label>
									<select class="form-control" name="lookGenre"
										id="lookGenre">
										<option disabled="disabled">장르</option>
										<option value="1">멜로/로맨스</option>
										<option value="2">코미디</option>
										<option value="3">SF</option>
										<option value="4">애니메이션</option>
										<option value="5">스릴러/미스테리</option>
										<option value="6">액션</option>
										<option value="7">공포/호러</option>
									</select>
								</div>
								<div class="form-group col-xs-3">
									<label for="lookAge">Age</label>
									<select class="form-control" name="lookAge"
										id="lookAge">
										<option disabled="disabled">연령등급</option>
										<option value="A">전체</option>
										<option value="B">12세</option>
										<option value="C">15세</option>
										<option value="D">청불</option>
									</select>
								</div>
							</div>
							
							<!-- 시작일 / 종료일 -->
							<div class="row">
								<div class="form-group col-xs-3">
									<label for="lookStartDate">StartDate</label> <input
										type="text" class="form-control" name="lookStartDate"
										id="lookStartDate" value="${list[0].lookStartDate}">
								</div>
								<div class="form-group col-xs-3">
									<label for="lookLastDate">LastDate</label> <input
										type="text" class="form-control" name="lookLastDate"
										id="lookLastDate" value="${list[0].lookLastDate}">
								</div>
							</div>
							
							<!-- 줄거리 -->
							<div class="form-group">
								<label for="lookStory">Story</label>
								<textarea class="form-control" rows="3" name="lookStory">${list[0].lookStory}</textarea>
							</div>
							
							<!-- 지도 -->
							<div class="row">
								<div class="form-group col-xs-3">
									<label for="lookLoca">Location</label> <input
										type="text" class="form-control" name="lookLoca"
										id="lookLoca" value="${list[0].lookLoca}">
								</div>
								<div class="form-group col-xs-1">
									<button type="button" onclick="DaumPostcode()"
										class="btn btn-default" style="margin-top: 25px">주소검색</button>
								</div>
								<div class="form-group col-xs-7">
									<div class="form-group col-xs-2">
										<label for="Coordinates">Coordinates</label>										
									</div><br>
									<div class="form-group col-xs-4">
										<input type="text" id="x"
											value="${list[0].x}" name="x"
											class="form-control" disabled="disabled">
										<div id="map"
										style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
									</div>
									<div class="form-group col-xs-4">
										<input type="text" id="y"
											value="${list[0].y}" name="y"
											class="form-control" disabled="disabled">
									</div>
								</div>
							</div>
							
							
							<div class="row">
								<div class="filebox">
									<div class="form-groupcol-xs-6" id="holder">
										<img
											src="${pageContext.request.contextPath}/resources/enter/${list[0].contentCode}/${list[0].lookImg}"
											width="100" height="100">
									</div>
									<div class="form-groupcol-xs-6">
										<input class="upload-name" value="${list[0].lookImg}" disabled="disabled" >
										<label for="upload">사진 업로드</label> 
										<input type="file" id="upload" class="upload-hidden" name="file" value="${list[0].lookImg}">
										<input type="hidden" name="lookImg" value="${list[0].lookImg}">
									</div>
								</div>
							</div>
							
						</form>

					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container-fluid -->


	<!-- /#page-wrapper -->


	<!-- /#wrapper -->


	<!-- 주소검색 -->
	<!--46b3765fabdb091e03e9b1d9b145dc32  -->

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(37.537187, 127.005476),
			map : map
		});

		function DaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = data.address; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수

							// 기본 주소가 도로명 타입일때 조합한다.
							if (data.addressType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 주소 정보를 해당 필드에 넣는다.
							document.getElementById("lookLoca").value = fullAddr;

							// 주소로 좌표를 검색
							geocoder
									.addr2coord(
											data.address,
											function(status, result) {
												// 정상적으로 검색이 완료됐으면
												if (status === daum.maps.services.Status.OK) {
													// 해당 주소에 대한 좌표를 받아서
													var coords = new daum.maps.LatLng(
															result.addr[0].lat,
															result.addr[0].lng);
													// 지도를 보여준다.
													mapContainer.style.display = "block";
													map.relayout();
													// 지도 중심을 변경한다.
													map.setCenter(coords);
													// 마커를 결과값으로 받은 위치로 옮긴다.
													marker.setPosition(coords)
													// 좌표 정보를 해당 필드에 넣는다.
													document
															.getElementById("lookCoordinates").value = coords;

												}
											});
						}
					}).open();
		}
	</script>

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jqueryui/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$("#lookStartDate").datepicker({
						changeYear: true,
						changeMonth: true,
						dateFormat: "yy/mm/dd"
					});
					$("#lookLastDate").datepicker({
						changeYear: true,
						changeMonth: true,
						dateFormat: "yy/mm/dd"
					});

					var fileTarget = $('.filebox .upload-hidden');
					fileTarget.on('change', function() {
						// 값이 변경되면
						if (window.FileReader) {
							// modern browser 
							var filename = $(this)[0].files[0].name;
						} else {
							// old IE 
							var filename = $(this).val().split('/').pop()
									.split('\\').pop();
						}
						// 파일명만 추출 } // 추출한 파일명 삽입 
						$(this).siblings('.upload-name').val(filename);

					});

				});

		var upload = document.getElementById('upload'), holder = document
				.getElementById('holder');

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[0], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.src = event.target.result;
				img.width = 100;
				img.height = 100;
				//img.className = "img-circle";
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		};
	</script>

</body>

</html>
