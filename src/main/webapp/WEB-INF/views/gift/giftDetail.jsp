<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="path" value="${pageContext.request.contextPath }"/>   
<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
	<jsp:param name="" value=""/>
</jsp:include>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문곰책방 | 문곰템</title>
    <link rel="stylesheet" href="${path }/resources/css/gift/giftDetail.css">
    <script src="${path }/resources/js/jquery-3.6.0.min.js"></script>
    <!-- <link rel="stylesheet" type="text/css" href="/plugin/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="/plugin/slick/slick-theme.css"/>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/plugin/slick/slick.js"></script> -->
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<!-- 문곰템의 모든 상품의 상세 보기는 여기서 -->
<body>

    <div class="wrap">
        <jsp:include page="/WEB-INF/views/gift/hotTracksMenu.jsp">
        <jsp:param name="" value=""/>
        </jsp:include>
        <div class="crossLine1"></div>
        <div class="proDetail-box">
            <div class="proDetail-img">
                <img src="${gift.gift_img }" alt="">
                <!-- 400x400 -->
                <div class="detailImg-box">
                    <img src="${gift.gift_img }" alt="">
                </div>
            </div>
        <form action="${path }/gift/giftPayment.do" method="post"> 
            <div class="proDetail-exp">
                <p class="expTitle">${gift.gift_title } </p>
                <div class="crossLine2"></div>
	                <div class="expChoice">
	                    <div style="display:flex;">
	                        포인트 적립  <p style="font-weight:bold; margin-left:5px;">배송비를 제외한 구매금액의 10%가 적립됩니다.</p>
	                    </div>
	                    <div class="exp-couponBox">
	                        <p>쿠폰등록</p>
	                        <input type="button" value="내 쿠폰" name="coupon" id="coupon" onclick="openWindow()">
	                    </div>
	                    <div class="exp-quanBox">
	                        <p>구매수량</p>
	                        <div class="exp-quan">
	                          
	                            <input type="number" name="quan" id="quan" value="1" maxlength="3" min="1">
	                            <!-- <span>
	                                <a href=""></a>
	                                클릭시 수량 증가
	                                <a href=""></a>
	                                클릭시 수량 감소
	                            </span> -->
	                            <span>개</span>
	                           
	                        </div>
	                    </div>
	                </div>         
                 <div class="discount-price">
                    <p class="discount" id="ds"></p>                
                    <p class="price" id="totalPrice"><fmt:formatNumber type="number" value="${gift.gift_price }"/>원</p>
                	<input type="hidden" value="${gift.gift_price }" id="totalP">
                </div>
                <div class="crossLine2"></div>
                <div class="purBtn-box">
                    <button type="submit">구매하기</button>                
                    <button type="button" id="shopList">장바구니</button>
                    <!-- <button>찜하기</button> -->
                </div>           
                <!-- <div style="text-align: center; margin-top: 30px;">
                    <button class="kakaoPay" id="kakaoPay">[간편결제] 카카오페이</button>
                </div> -->
            </div>
            <input type="hidden" value="${loginMember.memberId }" id="loginMemberId" name="loginMemberId">
            <input type="hidden" value="${gift.gift_no }" name="giftNo" id="giftNo">
            <input type="hidden" value='G' name="shopingList_cate" id="shopingList_cate">
            <input type="hidden" value='0' name="couponNo" id="couponNo">
            <input type="hidden" value='0' name="couponAmount" id="couponAmount">
          </form>       
        </div>
        <div class="crossLine3"></div>
        <div class="wrap">
            <div class="reco-product">
                <p class="reco-product-font">함께 볼 만한 문곰템</p>
            </div>
            <div id="slider-div">
            <c:forEach var="i" items="${list }" begin="${begin }" end="${begin+7 }">
                <div class="reco-content">
                <a href="${path }/gift/giftDetail.do?giftNo=${i.gift_no}">
                    <img src="${i.gift_img }" alt="">
                    <p class="productName" style="text-overflow:ellipsis; overflow: hidden;">${i.gift_title }</p>
                    <!-- <p class="discount margin-bottom24">할인율</p> -->
                    <p class="price margin-bottom24"><fmt:formatNumber value="${i.gift_price }" type="number"/>원</p>
                </a>
                </div>
            </c:forEach>   
                <%-- <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필2.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필3.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필4.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필1.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필2.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필3.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div>
                <div class="reco-content">
                    <img src="${path }/resources/images/gift/만년필4.jpg" alt="">
                    <p class="productName">독일산 만년필</p>
                    <p class="discount margin-bottom24">할인율</p>
                    <p class="price margin-bottom24">가격</p>
                </div> --%>
    </div>
        <div class="crossLine3"></div>
        <div class="proDetail-bar">
            <a id="bar1">상품설명</a>
            <a id="bar2" class="productR">상품리뷰</a>
            <!-- <a id="bar3" class="productQ">상품Q&A</a> -->
            <a id="bar4">알려드립니다</a>
        </div>
        <input type="hidden" value="${gift.gift_no }" id="giftNo"/>         

      
        <div class="product-exp">
            <img src="${path }/resources/images/gift/상품상세이미지.jpg" alt="">
            <img src="${path }/resources/images/gift/상품상세이미지.jpg" alt="">
            <img src="${path }/resources/images/gift/상품상세이미지.jpg" alt="">
            <img src="${path }/resources/images/gift/상품상세이미지.jpg" alt="">
        </div>
        <div class="product-review">
            <div class="writeBox">
                <button class="reviewWrite" onclick="window.open('<%=request.getContextPath()%>/gift/insertReview?giftNo=${gift.gift_no }&loginMember=${loginMember.memberId }', '리뷰를 남겨주세요!', 'width=500, height=600')">상품 리뷰 작성하기</button>
            </div>
           <table class="review-exp review-board" id="targetTable">
                      
            </table>
            <!-- <div>&lt;pageBar&gt;</div> -->
        <div id="pageBar"></div> 
        </div>
     
          <script>
        /* 상품리뷰, 상품문의 */
    	    var btnR = document.getElementById("bar2");   	    
    	    var giftNo = document.getElementById("giftNo").value; 	     
 	    
    	   	let pageBar = document.getElementById("pageBar");
    	   	let pager = "";
    	    let exp = document.getElementsByClassName('review-board');
    	    
    	   /*  console.log("exp");
    	    console.log(exp);
    	    console.log(exp[0]);
    	    console.log(exp[0].lastChild); */
    	    
  
    	   // let tb = document.getElementsByTagName("tbody");
    	   let tb = document.createElement('tbody');
    	   /* console.log("tb 입니다 ; ->>>>"+tb); */
  			let tr = ""; 
  			let tr2 = ""; 
       		let html2 = ""; /* thead */
       		html2 += "<tr><th style='width:105px;'>번호</th>";
            html2 += "<th style='width:145px;'>만족도</th>";    
            html2 += "<th style='width:370px;'>상품평</th>";    
            html2 += "<th style='width:165px;'>작성자</th>";    
            html2 += "<th style='width:165px;'>작성일</th></tr>";    
            /* console.log(html2); */    
  			tr2 = document.createElement("tr");
  			tr2.innerHTML=html2;
  			
  			
         $(btnR).on('click', getTrs(1)); 
          
          function getTrs(cPage) {
        	 $.ajax({
            		type: 'post',
            		url: '${path}/gift/productReview2.do',
            		data: {
            			giftNo: giftNo,
            			cPage: cPage,
            			numPerPage: 10
            		},
            		/* dataType: "json", */
            		success: data => {
            			
            			//console.log("페이지바 넘겨온 데이터"+data);
            			pageBar.innerHTML = data;
            		} 
            	}); // pageBar ajax
         
         	 exp[0].lastChild.innerHTML = "";
         	
         	$.ajax({
              	type: 'post',
              	url: '${path}/gift/productReview.do',
              	data: {
              		giftNo: giftNo,
              		cPage: cPage,
              		numPerPage: 10
              	},
              	dataType: "json",
              	success: data => {  
              		
              		exp[0].appendChild(tb).appendChild(tr2);
              		data.forEach((v, i) => {   
						 //console.log("어떻게 나왔지 ?? "+v.rownum);
						 
              			 let html = ""; /* 테이블 본문 내용 */
              		     html += "<tr class='review-text review-tr'>";   
                 	     html += "<td class='review-num'>"+v.rownum+"</td>";
                 	     html += "<td class='gpa'>";
                 	     html += "<div class='gpa-circle'>";
                 	     html += "<p class='gpa-circle-a'>"+v.gift_score+"</p></div></td>";
                 	     html += "<td><div class='review'><a class='review-title-a' onclick='reviewDetail("+i+");'>"+v.gift_board_content+"</a></div></td>";
                 	     html += " <td class='review-writer'>"+v.writer+"</td>";
                 	     html += "<td class='review-date'>"+v.write_date+"</td></tr>";
                 	     
                 	    var reviewA = document.getElementsByClassName("review-title-a"); 
                 	    // console.log(reviewA);
                 	    tr = document.createElement('tr'); 
               			tr.classList.add('review-text');
                 	    tr.classList.add('review-tr');
                 	    tr.innerHTML=html;
                 	       
                 	    pager = document.createElement('div');
                 	    pager.innerHTML = pageBar;
                 	    
                 	    //console.log(tb);
                 	    
                 	    exp[0].appendChild(tb).appendChild(tr);
                 	                	    
             		 });    
              		
              	  } 
              	
              }); // 1번째 ajax 끝
                       
         }
          
         function reviewDetail(i){
        	 let gpa = document.getElementsByClassName("gpa")[i];
        	 //let review = document.getElementsByClassName("review")[i];
        	 let reviewTr = document.getElementsByClassName("review-tr")[i];
        	 let reviewTitle = document.getElementsByClassName("review-title-a")[i];      	 
        	 reviewTr.classList.toggle("review-toggle"); 
     		 /* if(gpa.classList){
        	 gpa.classList.add();
     			 
     		 } */
     		 gpa.classList.toggle("gpa-re");
         }        
     	          		  			
        </script>
     
        <div class="notify">
            <img src="${path }/resources/images/gift/교환반품1.PNG" alt="">
            <img src="${path }/resources/images/gift/교환반품2.PNG" alt="">
            <img src="${path }/resources/images/gift/교환반품3.PNG" alt="">
            <img src="${path }/resources/images/gift/교환반품4.PNG" alt="">
            <img src="${path }/resources/images/gift/교환반품5.PNG" alt="">
        </div>
    </div>
</div>
    <!-- <div class="slide-wrap">
        <div class="product-slide">
            <ul class="slickTest">
                <li>slide1</li>
                <li>slide2</li>
                <li>slide3</li>
                 <li class="product-slideContent">
                    <div class="reco-product">
                        <img src="" alt="">
                    </div>
                    <div class="reco-product">
                        
                    </div>
                    <div class="reco-product">
                        
                    </div>
                    <div class="reco-product">
                        
                    </div>
                </li>
            </ul>
        </div> -->
        <input type="hidden" value="${path }" id="contextPath">
	<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
		<jsp:param name="" value=""/>
	</jsp:include>


   <%--   <jsp:include page="/WEB-INF/views/common/quickBar.jsp">
			<jsp:param name="" value=""/> 
	 </jsp:include>  --%>   
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="${path }/resources/js/gift/gift_buy.js"></script>
<script src="${path }/resources/js/gift/gift_detail.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>	 
<script>

	  let sl = document.getElementById("shopList");
	  let mId = document.getElementById("loginMemberId").value;
	  let gNo = document.getElementById("giftNo").value; 
	  let shopCate = document.getElementById("shopingList_cate").value;
	  
	  sl.addEventListener('click', function(){
	  let quan = document.getElementById("quan").value;
		 location.assign("<%=request.getContextPath()%>/gift/shopingList.do?giftNo="+gNo+"&memberId="+mId+"&cate="+shopCate+"&shopingListCount="+quan);
	  });
	  
	  
      $('#slider-div').slick({
          slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
          infinite : true, 	//무한 반복 옵션	 
          slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
          slidesToScroll : 2,		//스크롤 한번에 움직일 컨텐츠 개수
          speed : 500,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
          arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
          dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
          autoplay : true,			// 자동 스크롤 사용 여부
          autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
          pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
          vertical : false,		// 세로 방향 슬라이드 옵션
          prevArrow : "<button type='button' class='slick-prev'>⊲</button>",		// 이전 화살표 모양 설정
          nextArrow : "<button type='button' class='slick-next'>⊳</button>",		// 다음 화살표 모양 설정
           	//아래 나오는 페이지네이션(점) css class 지정
          draggable : true, 	//드래그 가능 여부 
          pauseOnHover : true
          /* responsive: [ // 반응형 웹 구현 옵션
              {  
                  breakpoint: 1350, //화면 사이즈 960px
                  settings: {
                      //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                      slidesToShow:3 
                  } 
              },
              { 
                  breakpoint: 950, //화면 사이즈 768px
                  settings: {	
                      //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                      slidesToShow:2 
                  } 
              }
          ] */

      });
    let slickBtn = $('.slick-dots li>button');
    /* console.log(slickBtn); */
    $(slickBtn).click(function(){
        $(this).css('transform',"rotate( 90deg )");
        $(this).css('transition',"all ease 0.5s");
    })
    let hot = $('.hot');
    /* console.log(hot); */
    $(hot).mouseover(function(){
        $(this).css("color","black");
    })
    $(hot).mouseout(function(){
        $(this).css("color","#696969");
    })
    
    /* 카카오 페이 */
    $("#kakaoPay").click(function(){
    	$.ajax({
    		url: '${path}/kakaopay.do',
    		dataType:'json',
    		success:function(data){   			
    			console.log("정상 실행 : "+data.tid);
    			window.open(data.next_redirect_pc_url);
    		},
    		error:function(error){
    			console.log("에러 : "+error);
    		}  		
    	})
    });
   

    function openWindow(){
    	let memberId=document.getElementById("loginMemberId").value;
    	console.log(memberId);
    	window.name="쿠폰함";
    	window.open("<c:url value='/gift/myCoupon.do?memberId="+memberId+"'/>",'myCoupon','width=800, height=700, location=no, status=no, scrollbars=yes');
    }
  
    
</script>

     

</body>
</html>