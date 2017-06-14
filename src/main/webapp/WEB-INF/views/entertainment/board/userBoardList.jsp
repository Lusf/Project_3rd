<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <title>board</title>

    <link href="${pageContext.request.contextPath}/enterBoard/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/enterBoard/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/enterBoard/css/style.css" rel="stylesheet">

  <script type="text/javascript">
	  $(document).ready(function(e){
		    $('.search-panel .dropdown-menu').find('a').click(function(e) {
				e.preventDefault();
				var param = $(this).attr("href").replace("#","");
				var concept = $(this).text();
				$('.search-panel span#search_concept').text(concept);
				$('.input-group #search_param').val(param);
			});
		});
  </script>  
  </head>
  <body>
	<%@include file="/WEB-INF/views/includeFile.jsp" %>
	<%@include file="/WEB-INF/views/header.jsp"%>
	<%@include file="/WEB-INF/views/entertainment/includePluton.jsp"%>
	<br><br><br><br><br><br>
	
<!-- 게시글목록 -->
<div class="container-fluid">
	<span style="font-size:9pt;color: white">&lt;<a href="${pageContext.request.contextPath}/entertainment/board/userBoardWrite">글쓰기</a>&gt;</span></div>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							글번호
						</th>
						<th>
							제목
						</th>
						<th>
							작성자
						</th>
						<th>
							작성일
						</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<c:choose>
								<c:when test="${empty requestScope.list}">
									<tr >
										<th colspan="4">게시글이 없습니다.</th>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="vo" varStatus="state">
										<tr>
											<td>${vo.lgbNum}</td>
											<td>
												<a href="${pageContext.request.contextPath}/entertainment/board/userBoardDetailView/${vo.lgbNum}">
													${vo.lgbTitle}
												</a>
											</td>
											<td>${vo.id}</td>
											<td>${vo.lgbDate}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tr>
				</tbody>
			</table>
			<ul class="pagination pagination-sm">
				<li>
					<a href="#">Prev</a>
				</li>
				<li>
					<a href="#">1</a>
				</li>
				<li>
					<a href="#">2</a>
				</li>
				<li>
					<a href="#">3</a>
				</li>
				<li>
					<a href="#">4</a>
				</li>
				<li>
					<a href="#">5</a>
				</li>
				<li>
					<a href="#">Next</a>
				</li>
			</ul>
		</div>
	</div>
</div>

<!-- 검색 -->
<div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">♡선택♡</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#no">글번호</a></li>
                      <li><a href="#id">작성자</a></li>
                      <li><a href="#content">내용</a></li>
                      <li class="divider"></li>
                      <li><a href="#all">전체</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>

<br><br>
<%@include file="/WEB-INF/views/footer.jsp"%>

    <script src="${pageContext.request.contextPath}/enterBoard/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/enterBoard/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/enterBoard/js/scripts.js"></script>
  </body>
</html>