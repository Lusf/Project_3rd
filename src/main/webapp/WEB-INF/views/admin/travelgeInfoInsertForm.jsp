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
<title>Travelge Info Insert</title>

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
							Travelge <small>Travelge Info</small>
						</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-file"></i> Travelge Info
								InsertForm</li>
						</ol>

						<!-- 검색 옵션 -->
						<form
							action="${pageContext.request.contextPath }/travelge/travelgeInfoInsert"
							method="post" role="form" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<div class="row">
								<div class="form-group col-xs-3">
									<label for="travelgeTheme" class="sr-only">travelgeTheme</label>
									<select class="form-control" name="travelgeTheme"
										id="travelgeTheme">
										<option disabled="disabled">테마선택</option>
										<option value="TD">관광지</option>
										<option value="LM">숙박</option>
										<option value="CT">문화</option>
										<option value="LP">레포츠</option>
									</select>
								</div>
								<div class="form-group col-xs-3">
									<label for="travelgeRegion" class="sr-only">travelgeRegion</label>
									<select class="form-control" name="travelgeRegion"
										id="travelgeRegion">
										<option disabled="disabled">지역선택</option>
										<option value="SU">서울</option>
										<option value="GG">경기/인천</option>
										<option value="CB">충북/대전</option>
										<option value="CN">충남/세종</option>
										<option value="BS">부산</option>
										<option value="KB">경북/대구</option>
										<option value="KN">경남/울산</option>
										<option value="JB">전북</option>
										<option value="JN">전남/광주</option>
										<option value="JJ">제주</option>
									</select>
								</div>
								<button type="submit" class="btn btn-default">등록</button>
								<button type="reset" class="btn btn-default">다시쓰기</button>

							</div>
							<div class="row">
								<div class="form-group col-xs-3">
									<label for="travelgeName">travelgeName</label> <input
										type="text" class="form-control" name="travelgeName"
										id="travelgeName" placeholder="travelgeName">
								</div>

								<div class="form-group col-xs-3">
									<label for="travelgeAddr">travelgeAddr</label> <input
										type="text" class="form-control" name="travelgeAddr"
										id="travelgeAddr" placeholder="travelgeAddr">
								</div>
								<div style="vertical-align: bottom;">
									<button type="button" onclick="DaumPostcode()"
										class="btn btn-default" style="margin-top: 25px">주소검색</button>
									<br>
								</div>
							</div>
							<div class="form-group">
								<label for="travelgeDescription">travelgeDescription</label>
								<textarea class="form-control" rows="3" name="travelgeDescription"></textarea>
							</div>
							<div class="row">
								<div class="filebox">

									<div class="form-groupcol-xs-6" id="holder">
										<img
											src="${pageContext.request.contextPath}/resources/images/travelge/admin/null.png"
											width="100" height="100">

									</div>
									<div class="form-groupcol-xs-6">
										<input class="upload-name" value="파일선택" disabled="disabled">
										<label for="upload">사진 업로드</label> <input type="file"
											id="upload" class="upload-hidden" name="file">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-xs-6">
									<label for="travelgeDescription">travelgeCoordinates</label> <input
										type="text" id="travelgeCoordinates"
										placeholder="travelgeCoordinates" name="travelgeCoordinates"
										class="form-control">

									<div id="map"
										style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
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
							document.getElementById("travelgeAddr").value = fullAddr;

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
															.getElementById("travelgeCoordinates").value = coords;

												}
											});
						}
					}).open();
		}
	</script>

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {

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
