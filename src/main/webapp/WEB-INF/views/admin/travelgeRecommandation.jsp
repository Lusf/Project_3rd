<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel=stylesheet type=text/css
	href="<c:url value= '/resources/assets/daumOpenEditor/css/editor.css'/>">
<title>Travelge Recommandation</title>

<script
	src="${pageContext.request.contextPath}/resources/assets/daumOpenEditor/js/editor_loader.js"
	type="text/javascript" charset="utf-8"></script>


</head>

<body>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/admin/nav.jsp"%>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Travelge <small>Travelge Recommandation</small>
						</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-file"></i> Travelge
								Recommandation</li>
						</ol>
					</div>
					<div class="col-lg-12">
						<form name="tx_editor_form" id="tx_editor_form"
							action="${pageContext.request.contextPath }/travelge/travelgeRecommandInsert"
							method="post" accept-charset="utf-8">
													<div class="panel panel-default">
							                            <div class="form-group">
								
									
									                            <div class="form-group input-group">
                                <span class="input-group-addon">제목</span>
                                <input type="text" class="form-control" placeholder="제목을 작성해주세요">
                            </div>
									
								</div>
							<div class="panel-body"><jsp:include
								page="/WEB-INF/views/daumOpenEditor/editor_frame.jsp"></jsp:include></div>
						</div>
							<input type="hidden" name="contentCode" value="A2RECODE">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}"> 
							<div style="text-align: center; margin-bottom: 3em">
							<button type="submit" class="btn btn-default" onclick="saveContent()">전송</button>
							<button type="reset" class="btn btn-default">다시쓰기</button>
							</div>	
							
								
						</form>



						<script type="text/javascript">
							if ('${board!=null}' == 'true')
								Editor.modify({
									'content' : '${board.board_content}'
								});

							var config = {
								txHost : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
								txPath : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
								txService : 'sample', /* 수정필요없음. */
								txProject : 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
								initializedId : "", /* 대부분의 경우에 빈문자열 */
								wrapper : "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
								form : 'tx_editor_form' + "", /* 등록하기 위한 Form 이름 */
								txIconPath : "${ pageContext.request.contextPath }/resources/assets/daumOpenEditor/images/icon/editor/", /* 에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
								txDecoPath : "${ pageContext.request.contextPath }/resources/assets/daumOpenEditor/images/deco/contents/", /* 본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
								canvas : {
									exitEditor : { /* desc:'빠져 나오시려면 shift+b를 누르세요.', hotKey: { shiftKey:true, keyCode:66 }, nextElement: document.getElementsByTagName('button')[0] */},
									styles : {
										color : "#123456", /* 기본 글자색 */
										fontFamily : "굴림", /* 기본 글자체 */
										fontSize : "10pt", /* 기본 글자크기 */
										backgroundColor : "#fff", /*기본 배경색 */
										lineHeight : "1.5", /*기본 줄간격 */
										padding : "8px" /* 위지윅 영역의 여백 */
									},
									showGuideArea : false
								},
								events : {
									preventUnload : false
								},
								sidebar : {

									attachbox : {
										show : true,
										confirmForDeleteAll : true
									},
									attacher : {
										image : {
											features : {
												left : 250,
												top : 65,
												width : 465,
												height : 220,
												scrollbars : 0
											}, //팝업창 사이즈 
											popPageUrl : '${pageContext.request.contextPath}/daumOpenEditor/imagePopup' //팝업창 주소 
										}
									}

								},
								size : {
									contentWidth : 700
								/* 지정된 본문영역의 넓이가 있을 경우에 설정 */}
							};
							EditorJSLoader.ready(function(Editor) {
								var editor = new Editor(config);
							});

							function saveContent() {
								Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
							}

							function validForm(editor) {
								// Place your validation logic here

								// sample : validate that content exists
								var validator = new Trex.Validator();
								var content = editor.getContent();
								if (!validator.exists(content)) {
									alert('내용을 입력하세요');
									return false;
								}

								return true;
							}

							function setForm(editor) {
								var i, input;
								var form = editor.getForm();
								var content = editor.getContent();

								// 본문 내용을 필드를 생성하여 값을 할당하는 부분
								var textarea = document
										.createElement('textarea');
								textarea.name = 'recommadationDescription';
								textarea.value = content;
								textarea.style.display = "none";
								form.createField(textarea);
								return true;
							}
						</script>


					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js"></script>


</body>

</html>
