<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
	<jsp:param name="" value="" />
</jsp:include>
<link rel="stylesheet" href="${path}/resources/css/login/reset.css">
<link rel="stylesheet" href="${path}/resources/css/service/serviceMain.css">
<link rel="stylesheet" href="${path }/resources/css/bookdetail/bookdetail.css">
<body>
<div class="service-container">
	<div class="service-box1">
		<div class="service-box3">
			<jsp:include page="/WEB-INF/views/common/serviceSideBar.jsp">
				<jsp:param name="" value="" />
			</jsp:include>
		</div>
		<div class="service-box2">
		<div style="display:flex; justify-content:center; margin-top:20px; margin-bottom:30px;" ><img src="${path }/resources/img/sellLev1/event.png" alt="이벤트"></div>
			<div style="display:flex; justify-content:flex-end; margin-right:5px; margin-bottom:8px;">
			<c:if test="${loginMember.memberId eq 'admin'}">
        	<button class="reviewBtn"style="width:110px; height:40px; border:3px solid rgba(88,40,16,1); font-weight:bold; font-family:'한컴 말랑말랑'; font-size:19px;" onclick="window.open('<%=request.getContextPath()%>/ServiceboardController/insertEventBoard.do', '이벤트 작성!', 'width=500, height=600')">작성하기</button>
			</c:if>        
        </div>
          <div class="service-box2" style="border:none;">
           <table class="review-exp review-board" id="targetTable" style="width:770px;">
               <tr>
            <th style='width:50px;'>번호</th>
            <th style='width:498px;'>제목</th>
            <th style='width:110px;'>작성자</th>
            <th style='width:110px;'>작성일</th>
            <c:if test="${loginMember.memberId eq 'admin'}">
            <th style='width:50px;'>삭제</th>
            </c:if>
            </tr>
            <c:forEach var="e" items="${event }">
            <tr class='review-text review-tr'>
	            <td class='review-num' id="noticeboardNo">${e.eventboardNo}</td>
		   	    <td>
			   	    <div class='review'>
			   	    	<a class='review-title-a' href="${path }/service/eventBoardDetail.do?eventboardNo=${e.eventboardNo}">${e.eventboardTitle}</a>
			   	    </div>
		   	    </td>
		   	    <td class='review-writer'>${e.memberId}</td>
		   	    <td class='review-date'>${e.eventboardDate}</td>
		   	    <c:if test="${loginMember.memberId eq 'admin'}">
		   	    <td><button type="button" id="deleteBtn" style="background-color:white; color:rgba(88,40,16,1); font-family:'한컴 말랑말랑';" onclick="location.assign('<%=request.getContextPath()%>/ServiceboardController/deleteEventBoard.do?eventboardNo='+${e.eventboardNo})">삭제</button></td>
		   	    </c:if>
	   	    </tr>
	   	   </c:forEach>
           </table>		
        <div style="display:flex; justify-content:center; align-items:center; opacity:0.2;">	
			<img src="${path }/resources/img/sellLev1/sellpartsmall.png" alt>
		</div>
        <div id="pageBar"></div> 
		</div>
		</div>
		</div>
		
	</div>

</body>
<script>
		
        /* 상품리뷰, 상품문의 */
    	    var noticeBtn = document.getElementById("noticeBtn");
    	    var eventBtn = document.getElementById("eventBtn");
    	    var faqBtn = document.getElementById("faqBtn");
    	         
 	       	let pageBar = document.getElementById("pageBar");
    	   	let pager = "";
    	    let exp = document.getElementsByClassName('review-board');
    	    
    	   let tb = document.createElement('tbody');
    	   /* console.log("tb 입니다 ; ->>>>"+tb); */
  			let tr = ""; 
  			let tr2 = ""; 
       		let html2 = ""; /* thead */
       		html2 += "<tr><th style='width:105px;'>번호</th>";
            html2 += "<th style='width:515px;'>내용</th>";    
            html2 += "<th style='width:165px;'>작성자</th>";    
            html2 += "<th style='width:165px;'>작성일</th></tr>";    
            /* console.log(html2); */    
  			tr2 = document.createElement("tr");
  			tr2.innerHTML=html2;
  			
  			/* 상품리뷰 JS */
         $(noticeBtn).on('click', getTrs(1)); 
          
          function getTrs(cPage) {
        	 $.ajax({
            		type: 'post',
            		url: '${path}/SellbookController/productReview2.do',
            		data: {
            			bindNo: bindNo,
            			cPage: cPage,
            			numPerPage: 10
            		},
            		/* dataType: "json", */
            		success: data => {
            			
            			pageBar.innerHTML = data;
            		} 
            	}); // pageBar ajax
         	 exp[0].lastChild.innerHTML = "";
            	 
         	$.ajax({
              	type: 'post',
              	url: '${path}/SellbookController/productReview.do',
              	data: {
              		bindNo: bindNo,
              		cPage: cPage,
              		numPerPage: 10
              	},
              	dataType: "json",
              	success: data => {  
              		console.log(data);
              		exp[0].appendChild(tb).appendChild(tr2);
              		data.forEach((v, i) => {   

              			 let html = ""; /* 테이블 본문 내용 */
              		     html += "<tr class='review-text review-tr'>";   
                 	     html += "<td class='review-num'>"+v.rownum+"</td>";
                 	     html += "<td class='gpa'>";
                 	     html += "<div class='gpa-circle'>";
                 	     html += "<p class='gpa-circle-a'>"+v.book_score+"</p></div></td>";
                 	     html += "<td><div class='review'><a class='review-title-a'>"+v.book_board_content+"</a></div></td>";
                 	     html += " <td class='review-writer'>"+v.writer+"</td>";
                 	     html += "<td class='review-date'>"+v.write_date+"</td></tr>";
     
                 	    tr = document.createElement('tr'); 
               			tr.classList.add('review-text');
                 	    tr.classList.add('review-tr');
                 	    tr.innerHTML=html;
                 	       
                 	    pager = document.createElement('div');
                 	    pager.innerHTML = pageBar;
                 	    
                 	    
                 	    exp[0].appendChild(tb).appendChild(tr);

             		 });    
              		
              	  } 
              	
              }); // 1번째 ajax 끝
                       
         }
             		  			
        </script>

<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
	<jsp:param name="" value="" />
</jsp:include>