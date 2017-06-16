<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
				<div class="well profile">
					<div class="col-sm-12">
						<div class="col-xs-12 col-sm-8">
							<h2>${userInfo.id }</h2>
							<p>
								<strong>Tell : </strong>${userInfo.tell}
							</p>
							<p>
								<strong>Point : </strong>${userInfo.point}
							</p>
							<p>
<!--나중에 수정					<strong>Skills: </strong> <span class="tags">html5</span> <span
									class="tags">css3</span> <span class="tags">jquery</span> <span
									class="tags">bootstrap3</span> -->
							</p>
						</div>
						<div class="col-xs-12 col-sm-4 text-center">
							<figure> <img
								src="${pageContext.request.contextPath}/resources/images/eating/productBG1.jpg"
								alt="" class="img-circle img-responsive"></figure>
						</div>
					</div>
					<div class="col-xs-12 divider text-center">
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong> 20,7K </strong>
							</h2>
							<p>
								<small>Followers</small>
							</p>
							<button class="btn btn-success btn-block">
								<span class="fa fa-plus-circle"></span> Follow
							</button>
						</div>
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong>245</strong>
							</h2>
							<p>
								<small>Following</small>
							</p>
							<button class="btn btn-info btn-block">
								<span class="fa fa-user"></span> View Profile
							</button>
						</div>
						<div class="col-xs-12 col-sm-4 emphasis">
							<h2>
								<strong>43</strong>
							</h2>
							<p>
								<small>Snippets</small>
							</p>
							<div class="btn-group dropup btn-block">
								<button type="button" class="btn btn-primary">
									<span class="fa fa-gear"></span> Options
								</button>
								<button type="button" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown">
									<span class="caret"></span> <span class="sr-only">Toggle
										Dropdown</span>
								</button>
								<ul class="dropdown-menu text-left" role="menu">
									<li><a href="#"><span
											class="fa fa-envelope pull-right"></span> Send an email </a></li>
									<li><a href="#"><span class="fa fa-list pull-right"></span>
											Add or remove from a list </a></li>
									<li class="divider"></li>
									<li><a href="#"><span class="fa fa-warning pull-right"></span>Report
											this user for spam</a></li>
									<li class="divider"></li>
									<li><a href="#" class="btn disabled" role="button">
											Unfollow </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>