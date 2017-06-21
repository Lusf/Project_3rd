<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 	
        <form action="blogList.do">
            <input type="text" name="keyword" >
            <input type="submit" value="검색">
        </form>
       
    
    <table>
        <tr>
            <td colspan="7" width="100%" bgcolor="pink"></td>
        </tr>
        <c:forEach items="${blogList}" var ="b">
            <tr>
                <td width="200">${b.title}</td>
                <td width="200">${b.link}</td>
                <td width="200">${b.description}</td>
                <td width="200">${b.bloggername }</td>
                <td width="200">${b.bloggerlink }</td>
            </tr>

            <tr>
                <td colspan="7" width="100%" bgcolor="pink"></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>