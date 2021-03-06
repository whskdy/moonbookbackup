<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${pageContext.request.contextPath }"/>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>경매 선금 충전</title>
	<link rel="icon" href="${path}/resources/images/ebook/favicon.png" sizes="16x16">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/auction/auctionpay.css">
</head>
<body>

	<div id="wrap">
		<div id="container">
			<div class="auctionPay">
				<p>카카오페이 결제</p>
				
				<div>
					<label>충전할 금액 : </label>
					<input type="number" name="cp_item" placeholder="금액(원)">			
				</div>
				
				<p class="pay-alert">※ 반드시 부모님의 허락을 받고 결제해주세요 !</p>
				
				<button type="button" class="btn btn-lg btn-block  btn-custom" id="charge_kakao">충 전 하 기</button>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script>
		$('#charge_kakao').click(function () {
	        // getter
	        var IMP = window.IMP;
	        IMP.init('imp66510369');
	        var money = $('input[name="cp_item"]').val();
	        console.log(money);
	
	        IMP.request_pay({
	            pg: 'kakao',
	            merchant_uid: 'merchant_' + new Date().getTime(),
	            name: '주문명 : 경매 포인트',
	            amount: money,
	            buyer_email: '${loginMember.memberEmail}',
	            buyer_name: '${loginMember.memberName}',
	            buyer_tel: '${loginMember.memberPhone}',
	            buyer_addr: '${loginMember.memberAddress}',
	        }, function (rsp) {
	            console.log(rsp);
	            if (rsp.success) {
	                var msg = '결제가 완료되었습니다.';
					location.replace('${path}/auction/auctionpayEnd.do?memberId=${loginMember.memberId}&memberPoint='+money)
	            } else {
	                var msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	            }
	            alert(msg);
	            
	            window.close();
	        });
		});
	</script>

</body>
</html>