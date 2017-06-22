<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
   content="${_csrf.headerName}" />
<meta charset="utf-8">
<title>travelge main - 오지랖</title>
<meta name="description" content="">
<meta name="viewport"
   content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/new_theme_mark2/theme/css/theme.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">
   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="//apis.daum.net/maps/maps3.js?apikey=46b3765fabdb091e03e9b1d9b145dc32&libraries=services"></script>

<script>
//Starrr plugin (https://github.com/dobtco/starrr)
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
      this.$el.on('mouseover.starrr', 'span', function(e) {
        return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('mouseout.starrr', function() {
        return _this.syncRating();
      });
      this.$el.on('click.starrr', 'span', function(e) {
        return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('starrr:change', this.options.change);
    }

    Starrr.prototype.createStars = function() {
      var _i, _ref, _results;

      _results = [];
      for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
        _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
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
          this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
        }
      }
      if (rating && rating < 5) {
        for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
        }
      }
      if (!rating) {
        return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
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
})(window.jQuery, window);

$(function() {
  return $(".starrr").starrr();
});
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$( document ).ready(function() {
         

      $('#stars-existing').on('starrr:change', function(e, value){
            $('#count-existing').html(value);
          $.ajax({
         url : "${pageContext.request.contextPath}/travelge/travelgeScoreUpdate",
         type : "post",
         dataType : "json",
         data : "value="+value +"&contentCode=${info.contentCode}",
         beforeSend : function(xhr) { 
            xhr.setRequestHeader(header, token)
         },
         success : function(result) {
         
            //alert(result.score);
            $('#count').html(result.score+'개' +result.count+'명');
            },
         error : function(err) {
            alert("오류 발생 : " + err);
         }
      });
       });    
})
  
</script>
<style type="text/css">
.infocard{
   position: relative;
}
.infocard img{
   
   height: 300px;
   margin: 1.4em 1.4em;
   width: 95%;
   
   -webkit-filter: contrast(60%);
}

.text-block1 {
    top: 6em;
    left: 3em;
    position: absolute;
    font-size: 200%;
    color: white;
   display: block;
}
.text-block2 {
    top: 15em;
    left: 3em;
    position: absolute;
    font-size: 100%;
    color: white;
    display: block;
}

.text-block3 {
    top: 18em;
    left: 5em;
    position: absolute;
    font-size: 100%;
    color: white;
    display: block;
}

.container{
   width: 80%;
}
.pcontent {
overflow: hidden; 
text-overflow: ellipsis;
white-space: nowrap; 
width: 600px;
height: 20px;
color: black;
}
</style>
</head>
<body>

   <%@include file="/WEB-INF/views/travelge/travelge-header.jsp"%>
   <div class="container">
   <div class="container">
   
      <div class="infocard">
         <div class="card content">
            <img src="${pageContext.request.contextPath }/resources/travelge/${info.contentCode }/photos/${info.travelgePhotos}" style="">

            <span class="text-block1">
               ${info.travelgeName }
            </span>
            <span class="text-block2">별점위치</span>
            <span class="text-block3">찜하기 리뷰위치</span>
         </div>
      <div>
      버튼 위치 1 버튼 위치 2 버튼 위치 3 버튼 위치 4
      </div>
         <hr>
      </div>

   </div>
   
   <div class="container" style="width: 80%">
     <h3>소개</h3>
     <div style="text-align: center;">
     <p class="pcontent"> ${info.travelgeDescription }</p>
     <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content" style="background-color: #FF6B6B; border: none;">더보기</button>
     <div id="content" class="collapse">
      ${info.travelgeDescription }
     </div>
     </div>
   </div>
   <br>

   <%--    <div class="card-panel" style="text-align: center">
      <span><img style="width: 80%; height: 400px"
         src="${pageContext.request.contextPath }/resources/travelge/${info.contentCode }/photos/${info.travelgePhotos}"></span>
      <h2>${info.travelgeName }</h2>
      <span>${info.travelgeDescription } </span>
   </div> --%>
   
   <div class="container" id="map" style="width: 90%; height: 300px;"></div>
   <Br>
    <p>주소: ${info.travelgeAddr }</p>
   </div>
   
   <script>

         var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = { 
              center: new daum.maps.LatLng(${info.x}, ${info.y}), // 지도의 중심좌표
              level: 3 // 지도의 확대 레벨
          };


      var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

       // 마커가 표시될 위치입니다 
      var markerPosition  =new daum.maps.LatLng(${info.x}, ${info.y}); 

      // 마커를 생성합니다
      var marker = new daum.maps.Marker({
          position: markerPosition
      });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map); 

       var iwContent = "<div style='padding:5px;'>${info.travelgeName }</div>" // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
      iwPosition = new daum.maps.LatLng(${info.x}, ${info.y}); //인포윈도우 표시 위치입니다

      // 인포윈도우를 생성합니다
      var infowindow = new daum.maps.InfoWindow({
          position : iwPosition, 
          content : iwContent 
      });
        
      // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
      infowindow.open(map, marker);    
      
      </script>
      <!-- <div class="container"> -->
   
      
      <div class="container" style="width: 80%">
         <hr>
      <h3>블로그 리뷰(${fn:length(blogList)})</h3>
         <c:forEach items="${blogList }" var="b">
            <a href="${b.link}">
               <table style="text-align: left; border-bottom: gray 1px solid;">
               <tr>
                     <th colspan="2">${b.title}</th>
                  </tr>
                  <tr>
                     <td colspan="2">${b.description}</td>
                  </tr>
                  <tr>
                     <td>${b.postdate }</td>
                     <td>${b.link}</td>
                  </tr>
               </table>
            </a>
            <br>
         </c:forEach>


         <!-- --------------------평점  -->
         <h3>평점</h3>
         <div>
            <div class="row lead">
               <c:if test="${info.avgScoreVo.personCount != null}">
               ★ <span id="count">${info.avgScoreVo.score }개
                     (${info.avgScoreVo.personCount }명)</span>
               </c:if>
               <c:if test="${info.avgScoreVo.personCount == null }">
               ★ <span id="count">0개 (0명)</span>
               </c:if>
            </div>

         </div>
         <hr>

         <div class="row lead">

            <sec:authorize access="isAuthenticated()">
               <h3>이곳을 평가해 주세요</h3>
               <div class="row lead">
                  <div id="stars-existing" class="starrr"
                     data-rating='${userScore.score }'></div>
                  선택한 평점 : <span id="count-existing">${userScore.score }</span> 개
               </div>
            </sec:authorize>
            <!-- 
         <div class="row lead">
            <p>Also you can give a default rating by adding attribute
               data-rating</p>
            <div id="stars" class="starrr" data-rating='4'></div>
            You gave a rating of <span id="count">4</span> star(s)
         </div>
          -->

            <!-- Blog Post Content Column -->
            <div class="cont">
               <h3>Review</h3>
               <sec:authorize access="isAuthenticated()">
                  <a style="cursor: pointer;" data-toggle="modal"
                     data-target="#insertReview" class="post-entry-more"> 리뷰 작성 </a>
               </sec:authorize>

               <!-- detail MODAL -->
               <div class="modal fade" id="insertReview" role="dialog"
                  tabindex="-1">
                  <div class="modal-dialog">
                     <div class="modal-content shadow">
                        <a class="close" data-dismiss="modal"> <span
                           class="ti-close"></span></a>
                        <div class="modal-body">
                           <%@include file="/WEB-INF/views/blog/blogReviewInsert.jsp"%>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- /detail modal 끝 -->
               <c:forEach var="comment" items="${commentList }" varStatus="vs">
                  <div class="row">
                     <a href="${pageContext.request.contextPath}/blog/${comment.id}">

                        <span class="col-md-2"> <img
                           style="width: 100px; height: 100px; vertical-align: center;"
                           class="img-circle"
                           src="${pageContext.request.contextPath }/resources/user/${comment.id }/profile/${comment.userPic}"></span>
                        <span class="col-md-2"> ${comment.id } </span>
                     </a> <a class="col-md-4" data-toggle="modal"
                        data-target="#comment${vs.index}"> <span style="color: red">${comment.blogTitle }</span>
                     </a>
                  </div>

                  <!--  comment Modal -->
                  <div id="comment${vs.index}" class="modal fade services-modal"
                     role="dialog">
                     <div class="modal-dialog">
                        <div class="modal-content shadow">
                           <div class="offer-box">
                              <div class="offer-content pl-30 pr-30">
                                 <span class="h4 offer-box-title">${comment.blogTitle }</span>
                                 <span> ${comment.id}</span> <span class="offer-box-location">
                                    <span class="offer-box-meta">${comment.blogDate }</span> <span
                                    class="descriptionImg"> ${comment.blogCont } </span> <a
                                    class="close" data-dismiss="modal"><span
                                       class="ti-close"></span></a>
                                 </span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </c:forEach>
            </div>
         </div>
      </div>
   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/wow.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/swiper.min.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap.min.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countTo.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.inview.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/jquery.countdown.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/bootstrap-select.js'/>"></script>
   <script
      src="<c:url value='/resources/assets/new_theme_mark2/js/main.js'/>"></script>

   <script
      src="${pageContext.request.contextPath}/resources/js/starrr-gh-pages/dist/starrr.js"></script>
</body>
</html>
