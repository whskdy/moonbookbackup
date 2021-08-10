<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>  


<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
   <jsp:param name="" value=""/>
</jsp:include>
 <div id="wrap">
 ${auction }

        <div id="container">	
			<div>
				<table style="width: 100%;  text-align: center;">
					<tr style="    font-weight: bold; font-size: 19px;    ">
						<th>경매번호</th>
						<th>경매이름</th>
						<th>경매 시작일</th>
						<th>경매 종료일</th>
						<th>입찰 금액</th>
						<th>경매 상태</th>
					</tr>	
					<c:forEach items="${auction }" var="a">
						<tr class="buylisttr">
							<td>${a.auctionNo }</td>
							<td>${a.auctionName }</td>
							<td>${a.startDate }</td>
							<td>${a.endDate }</td>
							<td>${a.auctionbid[0].bidPrice }</td>
							<td>
							<c:if test="${a.auctionState eq 'S' && a.state eq '낙찰'}">				
									<span style="color:blue">낙찰</span>
									<c:if test="${a.buylerState eq 'N'}">
									<button onclick="open('${path}/auction/auctionBpage?auctionNo=${a.auctionNo }&bidId=${a.memberId }','auctionbid','width=500,height=600')">배송 확인하기</button>	
									</c:if>
									<c:if test="${a.buylerState eq 'Y'}">
									<span style="color:blue;">배송 확인</span>	
									</c:if>
																						
							</c:if>
							<c:if test="${a.auctionState eq 'S' && a.state eq '유찰'}">				
									<span style="color:red">유찰</span>
									<c:forEach items="${a.auctionbid }" var="bid">
							
									<c:if test="${bid.bidId eq member.memberId}">
										<span>${bid.bidPrice }<button>포인트 돌려받기</button></span>
									</c:if>
									</c:forEach>														
							</c:if>
							<c:if test="${a.auctionState eq 'Y'}">				
									<span style="color:blue">진행중</span>																
							</c:if>
						
							</td>
						</tr>		
					</c:forEach>	
				</table>
			</div>

        </div>
    </div>
<style>
.auction_mylist_img{
    width: 150px;
    height: 150px;
    border: 1px solid black;
}
.auction_mylist_img img{
    width: 150px;
    height: 150px;
    border: 1px solid black;
}
#auction_mylist_table{
    width: 100%;
    text-align: center;
}
#auction_mylist_table>tbody>tr>td{
	text-aglin:center;
	vertical-align: middle;
}
#wrap{
	text-align:center;
}
#container{
	text-align: left;
    width: 950px;
    border: 1px solid black;
	display: inline-block;
}
.auction_main_po_right{
	width:300px
}
th{
    font-weight: bolder;
}
.buylisttr td{
	vertical-align: middle;
}

</style>

<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
<jsp:param name="" value=""/>
</jsp:include>