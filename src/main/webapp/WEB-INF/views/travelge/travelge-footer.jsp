<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#blank-row {
	height: 3em;
}

.footer {
	position: fixed;
	width: 100%;
	height: 3em;
	bottom: 0em;
	z-index: 999;
	background-color: #eeeeee;
	border-top: 1px grey solid;
	padding: 00.5em;
	text-align: center;
}

#icon {
	font-size: 2.3em;
	margin: 0 2.1em;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
	#blank-row {
		height: 10em;
	}
	.footer {
		position: fixed;
		width: 100%;
		height: 10em;
		bottom: 0em;
		z-index: 999;
		background-color: #eeeeee;
		border-top: 1px grey solid;
		text-align: left;
	}
	#icon {
		font-size: 8em;
		margin: 0 0.3em;
	}
}
</style>
<!-- Footer Starts -->
<div id="blank-row"></div>
<div class="footer">
	<a href="${pageContext.request.contextPath }/travelge/main"> <i
		class="glyphicon glyphicon-list-alt" id="icon"></i></a> <a
		href="${pageContext.request.contextPath}/travelge/travelgeInfoSearch"><i
		class="material-icons" id="icon">map</i> </a> <a href=""> <i
		class="material-icons" id="icon">my_location</i>
	</a><a href=""> <i class="glyphicon glyphicon-search" id="icon"></i>
	</a>
</div>
<!-- # Footer Ends -->