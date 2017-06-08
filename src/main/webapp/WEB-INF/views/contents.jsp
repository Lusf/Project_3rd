<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="clearfix grid"  id="indexGrid" >
<script type="text/javascript">
	function eat(){
		location.href="eating/eatingMain" 
	}
</script>
<script type="text/javascript">
</script>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeIn" style="width: 100%;">
				<img
					src="${pageContext.request.contextPath}/resources/images/index/Travelge.png"
					style="width: 100%; height: 28em" />
					<figcaption style="padding-top:6em">
					<h1 style="font-size: 2em">Travelge</h1>
					<p>
						여행지 정보가 모두<br>
					</p>
				</figcaption>
			</figure>
		</div>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%">
				<img
					src="${pageContext.request.contextPath}/resources/images/index/Entertainment.jpg"
					style="width: 100%; height: 28em" />
				<figcaption style="padding-top:6em">
					<h1 style="font-size: 2em">Entertainment</h1>
					<p>
						TV부터 공연까지<br>
					</p>
				</figcaption>
			</figure>

		</div>
		<div class=" col-xs-12 col-md-4" style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%;">
				<img src="${pageContext.request.contextPath}/resources/images/index/Food.png" style="width: 100%; height: 28em" />
				<figcaption style="padding-top:6em">
					<h1 style="font-size: 2em" onclick="eat()">Food</h1>
					<p>
						나에게 음식이란???<br>
					</p>
				</figcaption>
			</figure>
		</div>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
h1{font-size: 2em}
#desc{font-size:1em}
@media only screen and (max-width:1024px) and (min-width:768px)
{
	h1{font-size: 4em}
	#desc{font-size:2em}
}
</style>    
<div class="clearfix grid"  id="indexGrid" >

		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeIn" style="width: 100%;">
				<img
					src="${pageContext.request.contextPath}/resources/images/index/Travelge.png"
					style="width: 100%; height: 28em" />
					<figcaption style="padding-top:6em">
					<h1>Travelge</h1>
					<p>
					<p id="desc">
											<br><br>
						여행지 정보가 모두<br>
					</p>
				</figcaption>
			</figure>
		</div>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">
			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%">
				<img
					src="${pageContext.request.contextPath}/resources/images/index/Entertainment.jpg"
					style="width: 100%; height: 28em" />
				<figcaption style="padding-top:6em">
					<h1>Entertainment</h1>
					<p>
					<p id="desc">
											<br><br>
						TV부터 공연까지<br>
					</p>
				</figcaption>
			</figure>

		</div>
		<div class=" col-xs-12 col-md-4"
			style="padding-right: 0px; padding-left: 0px;">

			<figure class="effect-oscar  wowload fadeInUp" style="width: 100%;">
				<img
					src="${pageContext.request.contextPath}/resources/images/index/Food.png"
						style="width: 100%; height: 28em" />
				<figcaption style="padding-top:6em">
					<h1>Food</h1>
					<p id="desc">
						<br><br>
						나에게 음식이란???<br>
					</p>
				</figcaption>
			</figure>
		</div>
>>>>>>> accb2ac483257075381f0e464c0f5efd7fb5c843
	</div>