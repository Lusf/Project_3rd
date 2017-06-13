<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">  
<meta name="author" content="">

<!-- jquery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.cslider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.placeholder.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.inview.js"></script>
<!-- wow script -->
<script src="${pageContext.request.contextPath}/resources/assets/wow/wow.min.js"></script>
<!-- boostrap -->
<script src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.js"></script>
<!-- custom script --><%-- 
<script src="${pageContext.request.contextPath}/resources/assets/script.js"></script> --%>
<!-- app -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<!-- blog -->

<!-- style -->

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
<!-- Google Icon -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Load Roboto font -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<!-- font awesome -->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value= '/resources/pluton/css/bootstrap-responsive.css'/>" />
<!-- animate.css -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/animate.css'/>" >
<link rel="stylesheet" href="<c:url value= '/resources/assets/animate/set.css'/>" >
<!-- favicon -->
<link rel="shortcut icon" href="<c:url value= '/resources/images/favicon.ico'/>" type="image/x-icon">
<link rel="icon" href="<c:url value= '/resources/images/favicon.ico'/>" type="image/x-icon">
<link rel="stylesheet" href="<c:url value= '/resources/assets/main.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/style.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/style2.css'/>">
<link rel="stylesheet" href="<c:url value= '/resources/assets/carousel.css'/>">
<!-- blog -->
<link rel="stylesheet" href="<c:url value= '/resources/assets/bootstrap/css/bootstrap.min.css'/>" >

<style>
/* container 간격 조절 */
.container {margin-top: 7em; margin-bottom: 3em;}

/* 사이드바 메뉴 조절 */
.list-unstyled {
	margin-top: 10px;
	margin-left: 15px;
	line-height: 1.4;
}
.list-unstyled li{font-size: 20px;}

/* 화면 조절 */
.col-lg-8 {
	width: 73%;
}
.col-md-4 {
	width: 27%;
	position: absolute;
	top: 7em;
	left: 72%;
}

/* 내부 */
.blogTop {height: 50px; width: 100%;}
.blogTop tr td:FIRST-CHILD {width:80%; text-align: left; vertical-align: middle;}
.blogTop tr td:NTH-CHILD(2) {text-align: right; vertical-align: bottom;}

</style>

</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>
	
	<!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

                <!-- Blog Post -->                
                <c:forEach items="${list}" var="list">
                <table class="blogTop">
                	<tr>
                		<td>
                			<!-- Title -->
                			<h1>${list.blogTitle}</h1>
                		</td>
                		<td>
                			<!-- Date/Time -->
               				<p><span class="glyphicon glyphicon-time"></span>${list.blogDate}</p>
                		</td>
                	</tr>
                </table>

                <hr>

                <!-- Preview Image -->
                	<img src="${pageContext.request.contextPath}/resources/user/${list.id}/blog/${list.blogImg}" />
                

                <hr>

                <!-- Post Content -->
                <p class="lead">${list.blogCont}</p>

                <hr>

                <!-- Blog Comments -->

                <!-- Comments Form -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    <form role="form">
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Start Bootstrap
                            <small>August 25, 2014 at 9:30 PM</small>
                        </h4>
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                    </div>
                </div>

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Start Bootstrap
                            <small>August 25, 2014 at 9:30 PM</small>
                        </h4>
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        <!-- Nested Comment -->
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Nested Start Bootstrap
                                    <small>August 25, 2014 at 9:30 PM</small>
                                </h4>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                            </div>
                        </div>
                        <!-- End Nested Comment -->
                    </div>
                </div>

                </c:forEach>
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Travelge</a></li>
                                <li><a href="#">Entertainment</a></li>
                                <li><a href="#">Food</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Side Widget Well</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
                </div>
                
                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        	</button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

            </div>

        </div>
        <!-- /.row -->
        
    </div>
    <!-- /.container -->
	
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>