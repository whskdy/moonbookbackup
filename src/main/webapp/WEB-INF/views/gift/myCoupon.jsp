<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="path" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${path }/resources/css/gift/myCoupons.css">
</head>
<body style="background-color: #E5E2DB;">
    <div class="couponBox">
        <div class="flex">
     		<p class="userName">${member.memberName }</p>님이 보유하고 계신 쿠폰 정보입니다.
        </div>
        <div class="couponList">
        	<c:forEach val="i" items="${couponlist }">
	            <div class="couponView"> 
	                <img src="${path }/resources/upload/${i.couponImg}" alt="">
	                <p>${i.couponlistName }</p><p class="cp-count"></p>
	                <div><p>쿠폰 사용가능 여부 ${i.couponlist_foruse }</p></div>
	                <button class="useCoupon" value="">쿠폰사용</button>
	            </div>
	        </c:forEach>    
            <%-- <div class="couponView">  
                <img src="${path }/resources/images/gift/silverbear.png" alt="">
                <p>보유 실버 쿠폰</p><p class="cp-count"></p>
                <button class="useCoupon" value="실버 쿠폰">쿠폰사용</button>
            </div>
            <div class="couponView">
                <img src="${path }/resources/images/gift/goldbear.png" alt="">
                <p>보유 골드 쿠폰</p><p class="cp-count">${coupon. }</p>
                <button class="useCoupon" value="골드 쿠폰">쿠폰사용</button>
            </div> --%>
        </div>
        <p class="couponMsg">＊쿠폰사용은 구매 1회당 1회로 제한됩니다.</p>
        	<div class="eventBanner">
        </div>
    </div>
    
    <script>
    	const useCoupon = document.getElementsByClassName("useCoupon");
    	
    	console.log("유즈쿠폰 줄여서 유쿠"+useCoupon[0]);
    	
    	useCoupon[0].addEventListener("click", function(e) {
    		
    		if(confirm(e.target.value+"을 사용하시겠습니까?"))
    	})
    	
    </script>
    
</body>
</html>