<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Choco - micro store </title>
	<meta content="" name="description">
	<meta content="width=device-width, initial-scale=1" name="viewport">
	<meta content="width=device-width" name="viewport">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<link href="${pageContext.request.contextPath}/resources/images/eating/favicon.png" rel="icon" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script%7CLato:300,400,700" rel="stylesheet">
	<link href="<c:url value='/resources/css/eating/bootstrap-eating.css'/>" rel="stylesheet">
	<link id="pagestyle" href="<c:url value='/resources/css/eating/theme-eating.css'/>" rel="stylesheet">
</head>

<!-- star plugin -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/starrr-gh-pages/dist/starrr.js"></script>
<script type="text/javascript">

var __slice = [].slice;

(function($, window) {
    var Starrr;

    Starrr = (function() {
        Starrr.prototype.defaults = {
            rating: void 0,
            numStars: 5,
            change: function(e, value) {}
        };

        function Starrr($el, options) {
            var i, _, _ref,
                _this = this;

            this.options = $.extend({}, this.defaults, options);
            this.$el = $el;
            _ref = this.defaults;
            for (i in _ref) {
                _ = _ref[i];
                if (this.$el.data(i) != null) {
                    this.options[i] = this.$el.data(i);
                }
            }
            this.createStars();
            this.syncRating();
            this.$el.on('mouseover.starrr', 'i', function(e) {
                return _this.syncRating(_this.$el.find('i').index(e.currentTarget) + 1);
            });
            this.$el.on('mouseout.starrr', function() {
                return _this.syncRating();
            });
            this.$el.on('click.starrr', 'i', function(e) {
                return _this.setRating(_this.$el.find('i').index(e.currentTarget) + 1);
            });
            this.$el.on('starrr:change', this.options.change);
        }

        Starrr.prototype.createStars = function() {
            var _i, _ref, _results;

            _results = [];
            for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
                _results.push(this.$el.append("<i class='fa fa-star-o'></i>"));
            }
            return _results;
        };

        Starrr.prototype.setRating = function(rating) {
            if (this.options.rating === rating) {
                rating = void 0;
            }
            this.options.rating = rating;
            this.syncRating();
            return this.$el.trigger('starrr:change', rating);
        };

        Starrr.prototype.syncRating = function(rating) {
            var i, _i, _j, _ref;

            rating || (rating = this.options.rating);
            if (rating) {
                for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
                    this.$el.find('i').eq(i).removeClass('fa-star-o').addClass('fa-star');
                }
            }
            if (rating && rating < 5) {
                for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
                    this.$el.find('i').eq(i).removeClass('fa-star').addClass('fa-star-o');
                }
            }
            if (!rating) {
                return this.$el.find('i').removeClass('fa-star').addClass('fa-star-o');
            }
        };

        return Starrr;

    })();
    return $.fn.extend({
        starrr: function() {
            var args, option;

            option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
            return this.each(function() {
                var data;

                data = $(this).data('star-rating');
                if (!data) {
                    $(this).data('star-rating', (data = new Starrr($(this), option)));
                }
                if (typeof option === 'string') {
                    return data[option].apply(data, args);
                }
            });
        }
    });
})(window.jQuery, window);  /* star plugin끝 */

$(function() {
    return $(".starrr").starrr();
});

$( document ).ready(function() {
      
  $('#stars').on('starrr:change', function(e, value){
    $('#count').html(value);
  });
  
  $('#stars-existing').on('starrr:change', function(e, value){
    $('#count-existing').html(value);
  });
});
</script>


<!-- detailView... -->
<section class="post-list" id="news">

	<!-- read more -->
	<div class="swiper-slide">
		<div class="post-entry wow fadeInUp">
			<br><br>
 			<a href="#"
				data-toggle="modal" data-target="#post-01" class="post-entry-more">
				read more 
			</a> 
		</div>
	</div> 

	<!-- modal -->
	<div class="modal fade" id="post-01" role="dialog" tabindex="-1">
		<div class="modal-dialog">
			<!-- NEWS MODAL CONTENT -->
			<div class="modal-content shadow">
				<a class="close" data-dismiss="modal"> <span class="ti-close"></span></a>

				<div class="modal-body">
					<div class="post-entry post-entry-modal">
						<h3 class="section-heading">Duis aute irure dolor in
							reprehenderit in voluptate.</h3>

						<span class="post-entry-cover"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/eating/blog-cover.jpg);"></span>
						
						<!-- star  -->
						<span class="container">

							<span class="row lead">
								<p>Also you can give a default rating by adding attribute
									data-rating</p>
								<span id="stars-existing" class="starrr" data-rating='1'></span>
								<span id="count-existing">1</span>점
								<span id="count">2</span>
							</span>
						</span><!-- star끝 -->

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam,</p>

					</div>
				</div>
			</div>
			<!-- / modal 끝 -->
		</div>
	</div>

</section>


	<script src="<c:url value='/resources/js/eating/vendor/wow.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery-1.11.2.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/swiper.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.countTo.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.inview.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/vendor/jquery.countdown.js'/>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_6m6Glf1-P7jvVdHZ00e3Ue_EoUNe39g"></script>
	<script src="<c:url value='/resources/js/eating/tt-cart.js'/>"></script>
	<script src="<c:url value='/resources/js/eating/main.js'/>"></script>

<!-- ScrollUp button start -->
<div class="scrollup">
	<a href="#"> <i class="icon-up-open"></i>
	</a>
</div>
