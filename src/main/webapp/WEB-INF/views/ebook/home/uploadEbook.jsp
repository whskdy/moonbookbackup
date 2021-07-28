<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${path}/ebook/uploadEbook.do" method="post" enctype="multipart/form-data">
		<div>
			<p>올리실 eBook에 상응하는 BOOK_EBOOK_DATABIND의 BIND_NO를 입력하세요<p>
			<input type="number" name="ebookNo" min="1" step="1" required>
		
			<input type="file" name="upFile">
		
			<input type="submit" value="업로드">
		</div>
	</form>
</body>
</html>