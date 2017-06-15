<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.cslider.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.placeholder.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.inview.js"></script>
<!-- wow script -->
<script
	src="${pageContext.request.contextPath}/resources/assets/wow/wow.min.js"></script>
<!-- boostrap -->
<script
	src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.js"></script>
<!-- custom script -->
<%-- 
<script src="${pageContext.request.contextPath}/resources/assets/script.js"></script> --%>
<!-- app -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<!-- blog -->

<!-- style -->

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- Google Icon -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Load Roboto font -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet"
	href="<c:url value= '/resources/pluton/css/bootstrap-responsive.css'/>" />
<!-- animate.css -->
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/animate/animate.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/animate/set.css'/>">
<!-- favicon -->
<link rel="shortcut icon"
	href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">
<link rel="icon" href="<c:url value= '/resources/images/favicon.ico'/>"
	type="image/x-icon">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/main.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/style2.css'/>">
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/carousel.css'/>">
<!-- blog -->
<link rel="stylesheet"
	href="<c:url value= '/resources/assets/bootstrap/css/bootstrap.min.css'/>">
<link href="<c:url value= '/resources/css/blog/blog-post.css'/>"
	rel="stylesheet">
	
<style>
/* container 간격 조절 */
.container {
	margin-top: 3em;
	margin-bottom: 5em;
}

/* 사이드바 메뉴 조절 */
.list-unstyled {
	margin-top: 10px;
	margin-left: 15px;
	line-height: 1.4;
}

.list-unstyled li {
	font-size: 20px;
}

.profileImg {
	margin: 0 auto;
	width: 100px;
	height: 100px;
}

/* 화면 조절 */
.cont {
	width: 73%;
}

.side {
	width: 20%;
	position: absolute;
	top: 7.7em;
	left: 73%;
}
.footer {margin-top: 300px;}

/* 내부 */
.blogTop {
	height: 50px;
	width: 100%;
}

.blogTop tr td:FIRST-CHILD {
	width: 80%;
	text-align: left;
	vertical-align: middle;
}

.blogTop tr td:NTH-CHILD(2) {
	text-align: right;
	vertical-align: bottom;
}

/* insert를 위한 modal화면 수정 */
.modal-dialog {width: 900px;}
</style>

<!-- security + ajax를 위해.. -->
<script type="text/javascript">
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
 
$(function() {
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
</script>

<!-- blogTitle을 위한 script -->
<script>
	$(function() {
		$(".list-unstyled li a").click(function() {
			$.ajax({
				url : "${pageContext.request.contextPath}/blog/selectBlogTitle",
				type : "post",
				data : "category="+$(this).attr('id'),
				dataType : "json",
				success : function(result) {
					$("#blogTitle tr:eq(0)").nextAll().remove();

					var str = "";
					$.each(result, function(index, item) {
						str += "<tr>";
						str += "<td><a href='#'>" + item.blogTitle + "<input type='hidden' name='contentCode' value='"+item.contentCode+"'/></a></td>";
						str += "</tr>";
					});

					$("#blogTitle").append(str);
					
					title();
				},
				error : function(err) {
					console.log("오류발생: " + err)
				}
			});
		});
		
		function title(){
			$("#blogTitle tr td a").click(function() {
				$.ajax({
					url : "${pageContext.request.contextPath}/blog/selectBlogCont",
					type : "post",
					data : "contentCode="+$(this).children().attr('value'),
					dataType : "json",
					success : function(result) {
						$(".cont").empty();
	
						var str = "";
						var conCode = "";
						$.each(result, function(index, item) {
							conCode = item.contentCode;
							
							str+="<table class='blogTop'><tr><td id='bcTitle'><h1>"+item.blogTitle+"</h1></td><td>";
								str+="<a href='#' alt='수정하기' id='udt'><img src='${pageContext.request.contextPath}/resources/images/blog/update.png'/>수정</a>&nbsp;";
								str+="<a href='#' alt='삭제하기' id='dlt'><img src='${pageContext.request.contextPath}/resources/images/blog/delete.png'/>삭제</a><p>"
							str+="<span class='glyphicon glyphicon-time'></span>"+item.blogDate+"</p></td></tr></table>";
							str+="<hr>"
							
							var img = item.blogImg.split(";");
							$.each(img, function(imgIndex, imgName){
								str+="<img src='${pageContext.request.contextPath}/resources/user/"+item.id+"/blog/"+imgName+"' alt='"+imgName+"' />";
							});
							
							str+="<hr>"
							str+="<p class='lead'>"+item.blogCont+"</p>";
						});
	
						$(".cont").html(str);
						
						//삭제하기
						$("#dlt").click(function(){
							if(confirm("정말 삭제하시겠습니까?")){
								$.ajax({
									url : "${pageContext.request.contextPath}/blog/deleteBlogCont",
									type : "post",
									data : "contentCode="+conCode,
									dataType : "text",
									success : function(result) {
										alert("삭제를 완료하였습니다.");
										location.href = "${pageContext.request.contextPath}/blog/${blogId}";
									},
									error : function(err) {
										console.log("오류발생: " + err)
									}
								})
							}
							else{
								return false;
							}
						});
					},
					error : function(err) {
						console.log("오류발생: " + err)
					}
				});
			});
		}
		title();
	});
</script>

</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<!-- Blog Post Content Column -->
		<div class="cont">
			<h1>리뷰 좀 적어봐!!</h1>
			<a href="#"data-toggle="modal" data-target="#insertReview" class="post-entry-more">
				Review 
			</a>
			
			<!-- detail MODAL -->
			<div class="modal fade" id="insertReview" role="dialog" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content shadow">
						<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>
						<div class="modal-body">
							<%@include file="/WEB-INF/views/blog/blogReviewInsert.jsp" %>
						</div>
					</div>
				</div>
			</div>
			<!-- /detail modal 끝 -->
			<div style="height: 500px"></div>
		</div>

		<!-- Blog Sidebar Widgets Column -->
		<div class="side">
			<!-- Blog Profile Well -->
			<div class="well">
				<h4>Blog Owner</h4>
				<div class="input-group profileImg">
					<img src="${pageContext.request.contextPath}/resources/user/${blogId}/profile/${blogUserPic}" alt="${blogUserPic}"/>
					<a href="${pageContext.request.contextPath}/blog/${blogId}"><h1>${blogId}</h1></a>
				</div>
				<!-- /.input-group -->
			</div>
			
			<!-- Blog Categories Well -->
			<div class="well">
				<h4>Blog Categories</h4>
				<div class="row">
					<div class="col-lg-6">
						<form name="listForm" method="post" id="listForm">
							<ul class="list-unstyled">
								<li><a href="#" id="Travelge">Travelge</a></li>
								<li><a href="#" id="Entertainment">Entertainment</a></li>
								<li><a href="#" id="Food">Food</a></li>
							</ul>
						</form>
					</div>
				</div>
				<!-- /.row -->
			</div>

			<!-- Side Widget Well -->
			<div class="well">
				<table id="blogTitle">
					<tr>
						<td><h4>Title</h4></td>
					</tr>
					<c:forEach items="${blogAllTitle}" var="title">
					<tr>
						<td><a href='#'>${title.blogTitle}<input type="hidden" name="contentCode" value="${title.contentCode}"/></a></td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>