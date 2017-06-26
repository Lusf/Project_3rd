<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
<!-- Bootstrap Core JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>
<!-- daumOpenEditor -->
<link rel=stylesheet type=text/css
	href="<c:url value= '/resources/assets/daumOpenEditor/css/editor.css'/>">
<script
	src="${pageContext.request.contextPath}/resources/assets/daumOpenEditor/js/editor_loader.js"
	type="text/javascript" charset="UTF-8"></script>

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
	width: 70%;
}
.ct {position: relative;}
.side {
	width: 20%;
	position: absolute;
	top: 5em;
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
		checkForHash();
		
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
						str += "<td><a href='javascript:;' id='${blogId}/"+item.contentCode+"'>" + item.blogTitle + "<input type='hidden' name='contentCode' value='"+item.contentCode+"'/></a></td>";
						str += "</tr>";
					});

					$("#blogTitle").append(str);
					
					cont();
				},
				error : function(err) {
					console.log("오류발생: " + err)
				}
			});
		});

		function cont(){
			$("#blogTitle tr td a").click(function() {
				document.body.scrollTop = 0;
				document.location.hash = "#"+$(this).attr("id");
				$.ajax({
					url : "${pageContext.request.contextPath}/blog/selectBlogCont",
					type : "post",
					data : "contentCode="+$(this).children().attr('value'),
					dataType : "json",
					success : function(result) {
						$(".cont").empty();

						var conCode = "";
						var s = "";
						var c = "";
						var str = "";
						$.each(result, function(index, item) {
							document.body.scrollTop = 0;
							conCode = item.contentCode;
							s = item.blogTitle;
							c = item.blogCont;
							str+="<table class='blogTop'><tr><td id='bcTitle'><h2>"+item.blogTitle+"</h2></td><td>";
							
							//수정, 삭제 권한 판단
							str+="<sec:authorize access='isAuthenticated()'>";
							str+="<sec:authentication property='Principal.id' var='loginId'/>";
							str+="<sec:authorize access='${loginId == blogId}'>";	
								str+="<a href='javascript:;' alt='수정하기' id='udt'><img src='${pageContext.request.contextPath}/resources/images/blog/update.png'/>수정</a>&nbsp;";
								str+="<a href='javascript:;' alt='삭제하기' id='dlt'><img src='${pageContext.request.contextPath}/resources/images/blog/delete.png'/>삭제</a><p>"
							str+="</sec:authorize>";
							str+="</sec:authorize>";
							
							str+="<span class='glyphicon glyphicon-time'></span>"+item.blogDate+"</p></td></tr></table>";
							str+="<hr>"
							
							str+="<div class='ct' style='word-break:break-all;'>"+item.blogCont+"</div>";
						});
						$(".cont").html(str);
						
						$(".ct img").attr("style","max-width:90%");

						//수정하기
						$("#udt").click(function(){
							var ti = "blogTitle="+s+"&blogCont="+c+"&contentCode="+conCode;
							$(".cont").load("blogUpdateCall",ti);
						});
						
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
		
		function checkForHash() {
		    if(document.location.hash){
		        var HashLocationName = document.location.hash;
		        HashLocationName = HashLocationName.replace("#","");
		        $(".cont").html(HashLocationName)
		    }
		}
		cont();
	});
</script>

</head>
<body>
	<%@include file="/WEB-INF/views/includeFile.jsp" %>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<!-- Blog Post Content Column -->
		<div class="cont">
			<table id="">
				<tr>
					<td><h4>Title</h4></td>
				</tr>
				<c:forEach items="${blogAllTitle}" var="title">
				<tr>
					<td><a href='javascript:;' id='${blogId}/${title.contentCode}'>${title.blogTitle}<input type="hidden" name="contentCode" value="${title.contentCode}"/></a></td>
				</tr>
				</c:forEach>
			</table>
			
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
								<li><a href="javascript:;" id="Travelge">Travelge</a></li>
								<li><a href="javascript:;" id="Entertainment">Entertainment</a></li>
								<li><a href="javascript:;" id="Food">Food</a></li>
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
						<td><a href='javascript:;' id='${blogId}/${title.contentCode}'>${title.blogTitle}<input type="hidden" name="contentCode" value="${title.contentCode}"/></a></td>
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