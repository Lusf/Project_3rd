<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#blank-row{
	height:3em;
}
.footer {
	position: fixed;
	width: 100%;
	height: 3em;
	bottom: 0em;
	z-index: 999;
	background-color: #eeeeee ;
	border-top: 1px grey solid;
}

@media only screen and (max-width:1024px) and (min-width:768px) {
#blank-row{
	height:10em;
}
	.footer {
		position: fixed;
		width: 100%;
		height: 10em;
		bottom: 0em;
		z-index: 999;
		background-color: #eeeeee ;
		border-top: 1px grey solid;
	}
}
</style>
<!-- Footer Starts -->
<div class="row" id="blank-row"></div>
<div class="footer text-center">
<span class="glyphicon glyphicon-list-alt"></span>
<i class="material-icons">map</i>
<span class="glyphicon glyphicon-search"></span>
<i class="material-icons">my_location</i>

</div>
<!-- # Footer Ends -->