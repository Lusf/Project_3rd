<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--�˻� -->
<section class="home">
		<div class="box home-search">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="box">
							<form class="form-inline" action="${pageContext.request.contextPath}/eating/restaurantSearch">
								<div class="form-group col-md-2"  >
									<select id="type" class="selectpicker" data-live-search="false"  name="category">
										<option value="AL">��ü</option>
										<option value="SU">����</option>
										<option value="DJ">����</option>
										<option value="DG">�뱸</option>
										<option value="BS">�λ�</option>
										<option value="KW">������</option>
									</select> 
								</div>

								<div class="form-group col-md-2">
									<select id="type" class="selectpicker" data-live-search="false"  name="category2">
										<option value="AL">��ü</option>
										<option value="KR">�ѽ�</option>
										<option value="CN">�߽�</option>
										<option value="EN">���</option>
									</select>
								</div>

								<div class="form-group col-md-5">
									<input type="text" class="form-control"	placeholder="����, �Ĵ� �Ǵ� ����"  name="keyWord"/>
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
<!-- �˻��� -->
</body>
</html>