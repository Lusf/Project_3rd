<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#blank-row {
	height: 3em;
	margin-top: 5em;
}

.footer {
	position: fixed;
	width: 100%;
	height: 5em;
	bottom: 0em;
	z-index: 999;
	background-color: #212121;
	border-top: 1px grey solid;
	padding: 00.5em;
	text-align: center;
}

#icon {
	font-size: 2.2em;
	margin: 0 2.1em;
}

#tabelAlign{
		margin:auto;
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
		font-size: 3em;
		margin: 0 0.3em;
	}
}
</style>
<!-- Footer Starts -->
<div id="blank-row"></div>
<div class="footer" >

	<table id="tabelAlign">
	<tr>
	<td>	
	<a href="${pageContext.request.contextPath }/travelge/main" title="채널"> 
	<i class="glyphicon glyphicon-list-alt" id="icon" ></i></a> </td>
	<td>	
	<a href="${pageContext.request.contextPath}/travelge/travelgeInfoSearch" title="지역별">
	<i class="material-icons" id="icon">map</i></a> </td>
	<td>	
	<a href="${pageContext.request.contextPath}/travelge/travelgeAroundMe" title="내주변"> 
	<i class="material-icons" id="icon">my_location</i></a></td>
	<td>	
	<a href="${pageContext.request.contextPath}/travelge/searchPage" title="검색"> 
	<i class="glyphicon glyphicon-search" id="icon"></i></a></td>
	</tr>
	<tr>
	<td><label style="vertical-align: bottom;">채널</label></td>
	<td><label style="vertical-align: bottom;">지역별</label></td>
	<td><label style="vertical-align: bottom;">내주변</label></td>
	<td><label style="vertical-align: bottom;">검색</label></td>
	</tr>
	</table>	

</div>
<!-- # Footer Ends -->