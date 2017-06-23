<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
</head>
<body>

<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="${pageContext.request.contextPath}/eating/restaurantSearch">
								<div class="form-group col-md-2"  >
									<select id="type" class="selectpicker" data-live-search="false"  name="category">
										<option value="AL">전체</option>
										<option value="SU">서울</option>
										<option value="DJ">대전</option>
										<option value="DG">대구</option>
										<option value="BS">부산</option>
										<option value="KW">강원도</option>
									</select> 
								</div>

								<div class="form-group col-md-2">
									<select id="type" class="selectpicker" data-live-search="false"  name="category2">
										<option value="AL">전체</option>
										<option value="KR">한식</option>
										<option value="CN">중식</option>
										<option value="EN">양식</option>
									</select>
								</div>

								<div class="form-group col-md-5">
									<input type="text" class="form-control"	placeholder="지역, 식당 또는 음식"  name="keyWord"/>
								</div>

								<div class="form-group col-md-2">
									<button type="submit" class="btn btn-primary" id="searchBtn"> search! </button>
									<!-- <span class="ti-angle-right"></span> -->
									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>