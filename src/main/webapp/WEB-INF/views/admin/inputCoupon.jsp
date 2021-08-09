<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
	<jsp:param name="" value="" />
</jsp:include>
<link rel="stylesheet" href="${path}/resources/css/login/reset.css">
<link rel="stylesheet" href="${path}/resources/css/admin/inputCoupon.css">

<div class="addProduct-container">
	<div class="addProduct-box1">
		<div class="addProduct-box3">
			<jsp:include page="/WEB-INF/views/common/adminSideBar.jsp">
				<jsp:param name="" value="" />
			</jsp:include>
		</div>
		<div class="addProduct-box2">
			<div class="addProduct-box4">
					<p>쿠폰 발급</p>
			</div>
			<div class="addProduct-container3">
				
				<table class="ChooseTable1">
						<tr>
							<th>쿠폰 별 등급</th>
							<th>발급하기</th>
						</tr>
						<tr>
							<td colspan="2" class="product-category">단체 발급</td>
						</tr>
						<tr>
							<th>프렌즈 등급</th>
							<td class="Ch-td">
								<input type="button" onclick="location.assign('${path}/admin/addProductPage2.do?categoryCode=308')" value="발급">
							</td>
						</tr>
						<tr>
							<th>실버 등급</th>
							<td class="Ch-td">
								<input type="button" onclick="location.assign('${path}/admin/addProductPage2.do?categoryCode=1167')" value="발급">
							</td>
						</tr>
						<tr>
							<th>골드 등록</th>
							<td class="Ch-td">
								<input type="button" onclick="location.assign('${path}/admin/addProductPage2.do?categoryCode=1142')" value="발급">
							</td>
						</tr>
						<tr>
							<th>플래티넘 등록</th>
							<td class="Ch-td">
								<input type="button" onclick="location.assign('${path}/admin/addProductPage2.do?categoryCode=1142')" value="발급">
							</td>
						</tr>
						<tr>
							<td colspan="2" class="product-category">개인회원 발급</td>
						</tr>
						<tr>
							<th>개인 회원</th>
							<td class="Ch-td">
								<input type="button" onclick="location.assign('${path}/admin/addProductPage2.do?categoryCode=1073')" value="발급">
							</td>
						</tr>
						
						
					</table>
				
			</div>
			
 
			
			
		</div>
	</div>
</div>


<script>
	
</script>

<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
	<jsp:param name="" value="" />
</jsp:include>