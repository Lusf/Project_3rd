<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script language=javascript>
function sendUpdate(){
	document.requestForm.action="${pageContext.request.contextPath}/entertainment/board/userBoardUpdate";
	document.requestForm.submit();
}

function sendDelete(){	
	/* <input type="hidden"   name="${_csrf.parameterName}" value="${_csrf.token}"/> */

	/* $('requestForm').append('<input type="hidden" name="'+${_csrf.parameterName}+'" value="'+${_csrf.token}+'">'); */
	
	document.requestForm.action = "${pageContext.request.contextPath}/entertainment/board/userBoardDetailView/delete";
	document.requestForm.submit();
}

/* function doSubmit(actionName,token, param_name, param_value) {

	 var actionUrl = actionName;
	    var forms = document.forms[0];
	    if ( param_name != null ) {
	     var isType = $('input[name="'+param_name+'"]').val();
	        if( isType != null &&  isType != undefined ) {
	            $('input[name="'+param_name+'"]').val(param_value);
	        } else {
	         $('form').append('<input type="hidden" name="'+param_name+'" value="'+param_value+'">');
	         //Spring Security의 token값 설정
	         $('form').append('<input type="hidden" name="_csrf" value="'+token+'">');
	        }
	    }
	    forms.method="POST";
	    forms.action= actionUrl;
	    forms.submit();
	} */

</script>

</head>
<body>
<table align="center" cellpadding="5" cellspacing="2" width="600" border='1'>
    <tr>
        <td width="1220" height="20" colspan="4" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b>
             게시물 자세히보기</b></font></p>
        </td>
    </tr>
    <tr>
        <td width="100" height="20" >
            <p align="right"><b><span style="font-size:9pt;">제목</span></b></p>
        </td>
        <td width="450" height="20" colspan="3">
        	<span style="font-size:9pt;"><b>${requestScope.boardList.lgbTitle}</b></span>
        </td>
    </tr>
    <tr>
        <td width="100" height="20" >
            <p align="right"><b><span style="font-size:9pt;">작성자</span></b></p>
        </td>
        <td width="300" height="20">
        	<span style="font-size:9pt;"><b>${requestScope.boardList.id}</b></span>
        </td>
        <td width="100" height="20" >
			<p align="right"><b><span style="font-size:9pt;">작성일</span></b></p>
		</td>
        <td width="100" height="20">
			<p><b><span style="font-size:9pt;"></span>${requestScope.boardList.lgbDate}</b></p>
		</td>
    </tr>
    <tr>
        <td width="100" height="20">
            <p align="right"><b><span style="font-size:9pt;">내용</span></b></p>
        </td>
        <td width="450" height="20" colspan="3">
        	<span style="font-size:9pt;"><b>${requestScope.boardList.lgbCont}</b></span>
        </td>
    </tr>
    
    <tr>
        <td height="20" colspan="4" align="center" valign="middle">
			<form name="requestForm" method=post >
				
				<input type=hidden name="lgbNum" value="${boardList.lgbNum}">
				<input type="hidden"   name="${_csrf.parameterName}" value="${_csrf.token}"/>
 				<input type=button value="수정하기" onClick="sendUpdate()">
				<input type=button value="삭제하기" onClick="sendDelete()">
			</form>
		</td>
    </tr>
</table>
</body>
</html>