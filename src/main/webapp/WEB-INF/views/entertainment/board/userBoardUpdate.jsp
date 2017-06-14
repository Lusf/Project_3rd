<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<BODY>

<form name=updateForm method=post action="${pageContext.request.contextPath}/entertainment/board/userBoardUpdate/update">

    
	<table align="center" cellpadding="5" cellspacing="1" width="600" border="1">
    <tr>
        <td width="1220" height="20" colspan="2" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b>수정하기</b></font></p>
        </td>
    </tr>
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">제목</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<input type=text name="lgbTitle" size="30"
		 value="${requestScope.boardUpBefore.lgbTitle}"></span></b></td>
    </tr>
    
    <tr>
        <td width="150" height="20" >
            <p align="right"><b><span style="font-size:9pt;">내용</span></b></p>
        </td>
        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<textarea name="lgbCont" cols="50" rows="10">${requestScope.boardUpBefore.lgbCont}</textarea></span></b></td>
    </tr>

    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;">
        <input type="hidden"   name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="hidden" name="id" value="${boardUpBefore.id}"/>
        <input type='hidden' name='lgbNum' value="${boardUpBefore.lgbNum}">     
		<input type="submit" value="수정하기"> <input type="reset" value="다시쓰기"></span></b></td>
    </tr>
</table>
</form>
<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="${pageContext.request.contextPath}/entertainment/board/userBoardList">리스트로 돌아가기</a>&gt;</span></div>
</BODY>
</html>