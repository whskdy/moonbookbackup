<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/ebook/ebookHeader.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/ebook/ebookHome.css">
	
	<main>
	
	</main>
	
	<input type="hidden" id="contextPath" value="${path}"/>
	
	<script src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	<script src = "${path}/resources/js/ebook/xml2json.js"></script>
	<script src="${path}/resources/js/ebook/ebookHome.js"></script>
	
<jsp:include page="/WEB-INF/views/ebook/ebookFooter.jsp"/>

</body>
</html>