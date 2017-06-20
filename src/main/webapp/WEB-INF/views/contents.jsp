<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
h1 {
	font-size: 2em
}

#desc {
	font-size: 1em
}

#astyle {
	border: 1px white solid;
	margin-top: 1em;
	display: inline-block;
	color: white;
	padding: 1em 2em;
	font-size: 0.7em;
}

#astyle:hover {
	text-decoration: none;
	padding: 1em 3em;
}

#indexGrid {
	padding-top: 6em
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	h1 {
		font-size: 4em
	}
	#desc {
		font-size: 2em
	}
	#astyle {
		border: 1px white solid;
		margin-top: 0.5em;
		display: inline-block;
		color: white;
		padding: 0.7em 2em;
		font-size: 0.7em;
	}
	#astyle:hover {
		text-decoration: none;
		padding: 0.7em 3em;
	}
	#indexGrid {
		padding-top: 10em
	}
}
</style>
<script type="text/javascript">
	function eat() {
		location.href = "eating/eating_Main"
	}
</script>

</head>

<div class="clearfix grid" id="indexGrid">

	<div class=" col-xs-12 col-md-4"
		style="padding-right: 0px; padding-left: 0px;">
		<figure class="effect-oscar  wowload fadeIn" style="width: 100%;">
			<img
				src="${pageContext.request.contextPath}/resources/images/index/Travelge.png"
				style="width: 100%; height: 28em;" />
			<figcaption style="padding-top: 1em; cursor: default">
				<h1>Travelge</h1>
				<p id="desc">
					<br> 여행지 정보가 모두<br> <a href="travelge/main" id="astyle">View
						more</a>
			</figcaption>
		</figure>
	</div>
	<div class=" col-xs-12 col-md-4"
		style="padding-right: 0px; padding-left: 0px;">
		<figure class="effect-oscar  wowload fadeInUp" style="width: 100%">
			<img
				src="${pageContext.request.contextPath}/resources/images/index/Entertainment.jpg"
				style="width: 100%; height: 28em" />
			<figcaption style="padding-top: 1em">
				<h1>Entertainment</h1>
				<p id="desc">
					<br> TV부터 공연까지<br> 
					<!-- <a href="entertainment/enterMain" id="astyle">View more</a> -->
					<a href="entertainment/new/enterMain" id="astyle">View more</a>
			</figcaption>
		</figure>
	</div>
	<div class=" col-xs-12 col-md-4"
		style="padding-right: 0px; padding-left: 0px;">


		<figure class="effect-oscar  wowload fadeInUp" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/resources/images/index/Food.png" style="width: 100%; height: 28em" />
			<figcaption style="padding-top: 1em" >
				<h1>Food</h1>
				<p id="desc">
					<br> 나에게 음식이란???<br> 
					<a href="eating/newdesign" id="astyle">View more</a>
				</p>
			</figcaption>
		</figure>
	</div>
</div>

