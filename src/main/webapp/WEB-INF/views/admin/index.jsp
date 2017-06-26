<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>
    <title>Admin Page</title>
<!-- TABLE SORT -->
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.metadata.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/table/jquery.tablesorter.min.js"></script>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
$(function()
{
    Morris.Line({
        element: 'morris-line-chart',
        data:   [
         		<c:forEach items="${totalUserCount}" var="item" varStatus="i">    
            			<c:if test="${!i.first }">,</c:if>   
            	{
            		day: '${item.join_date}',
    			users: ${item.cntUser}
            	}
        </c:forEach> 
        ],
        xkey: 'day',
        ykeys: ['users'],
        labels: ['users'],
        smooth: false,
        resize: true
    });

 // Donut Chart
    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Travelge",
            value: ${travelgeCount}
        }, {
            label: "Food",
            value: ${foodCount}
        }, {
            label: "Entertainment",
            value: ${lookCount}
        }],
        colors:['#f44336', '#ff9800', '#000000'],
        resize: true
    });
})
</script>


</head>

<body style="padding-top: 0px">

    <div id="wrapper">

     	<%@include file="/WEB-INF/views/admin/nav.jsp" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard
                        </h1>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                        	현재접속자수 : ${count }      
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                <div class="col-lg-4 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-user-circle fa-5x"></i>	
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${userCount.cntUser }</div>
                                        <div>현재 유저 수</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#userCount">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-comments fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${latestReviewCount}</div>
                                        <div>오늘 등록된 리뷰</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#scoreRank2">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-files-o fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${contentCount }</div>
                                        <div>등록된 정보의 수</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#contentCount">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                <div class="col-lg-12" id="userCount">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <h3 class="panel-title">유저의 수</h3>
                            </div>
                            <div class="panel-body">
                                <div id="morris-line-chart"></div>
                              </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4" id="contentCount">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <h3 class="panel-title">등록된 정보의 수 (${contentCount }개)</h3>
                            </div>
                            <div class="panel-body">
                                <div id="morris-donut-chart"></div>
                            </div>
                        </div>
                    </div>
				<div class="col-lg-4">
                        <div class="panel panel-teal">
                            <div class="panel-heading">
                                <h3 class="panel-title">좋아요 순위</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>장소</th>
                                                <th>좋아요</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${wishRank}" var="list">
                                            <tr>
                                                <td style="overflow: hidden;text-overflow: ellipsis; width: 80%;">${list.name}</td>
                                                <td style="text-align: center;">${list.cnt}</td>
                                            </tr>
                                         </c:forEach>   
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="col-lg-4" id="scoreRank">
                        <div class="panel panel-purple">
                            <div class="panel-heading">
                                <h3 class="panel-title">평점 순위</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>장소</th>
                                                <th>평점/인원</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${scoreRank}" var="list">
                                            <tr>
                                                <td class="pcontent">${list.name}</td>
                                                <td>${list.avg} / ${list.cnt}(명)</td>
                                            </tr>
                                         </c:forEach>   
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
            </div><!-- row -->
            <div class = "row">
            <div class="col-lg-12" id="scoreRank">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">최신 리뷰</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>카테고리</th>
                                                <th>컨텐츠 이름</th>
                                                <th>리뷰 제목</th>
                                                <th>작성 날짜</th>
                                                <th>작성자</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${commentList}" var="list" varStatus="vs">   
                                       
                                            <tr>
                                            
                                                <td>${list.category}</td>
                                                <td> <a data-toggle="modal" data-target="#comment${vs.index}">      ${list.name} </a></td>
                                                <td> <a data-toggle="modal" data-target="#comment${vs.index}">      ${list.blogTitle}</a></td>
                                                <td>${list.blogDate}</td>
                                                <td>${list.id }</td>
                                            </tr>
                                        
               <div id="comment${vs.index}" class="modal fade services-modal"
                     role="dialog">
                     <div class="modal-dialog">
                        <div class="modal-content shadow">
                           <div class="offer-box">
                              <div class="offer-content pl-30 pr-30">
                                 <span class="h4 offer-box-title">${list.blogTitle }</span>
                                 <span> ${comment.id}</span>  <span
                                    class="descriptionImg">${list.blogDate }<br>${list.blogCont } </span> <a
                                    class="close" data-dismiss="modal"><span
                                       class="ti-close"></span></a>
                                 </span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div> <!-- comment${vs.index} -->
                                         </c:forEach>   
                                         
                                        </tbody>
                                    </table>
                                    <div id="scoreRank2"></div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/plugins/morris/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/admin/js/plugins/morris/morris-data.js"></script>

</body>

</html>