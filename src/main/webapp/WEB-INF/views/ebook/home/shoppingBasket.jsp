<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/ebook/home/ebookHeader.jsp">
	<jsp:param name="title" value="장바구니 - 문곰e북"/>
</jsp:include>
	
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/ebook/home/shoppingBasket.css">
	
	<main>
		<p>장바구니</p>
		<div><span id="totalPrice">0</span>원</div>
		
		<button id="payBtn">결제</button>
		<button id="payTest">결제 테스트</button>
		<button id="refundBtn">환불</button>
		
		<input type="checkbox" id="checkAll">
		<label for="checkAll">모두 체크 / 해제</label>
	</main>
	
	<input type="hidden" id="contextPath" value="${path}"/>
	
	<script src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	<script src = "${path}/resources/js/ebook/xml2json.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="${path}/resources/js/ebook/home/shoppingBasket.js"></script>
	
<jsp:include page="/WEB-INF/views/ebook/home/ebookFooter.jsp"/>