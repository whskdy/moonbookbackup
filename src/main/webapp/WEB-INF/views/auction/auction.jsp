<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
   <jsp:param name="" value=""/>
</jsp:include>
<c:set var="path" value="${pageContext.request.contextPath }"/>


<div id="wrap">
<div id="container">
        <div class="auction_main line">
            <div class="auction_main_left line">배너</div>
            <div class="auction_main_right line">정보
                <p><span>${loginMember.memberName}</span>님 환영합니다.</p>
                <p>경매 포인트 :<span><fmt:formatNumber value="${loginMember.memberPoint }" type="currency"/>point</span> </p> 
                <button>포인트 충전하기</button>
                <button><a href="${path }/auction/auctionwrite.do">물픔 등록하기</a></button>
                <button>내 경매 등록품 확인</button>
                <button>내 경매 입찰목록 확인</button>
            </div>
        </div>
        
        <div class="acution_category">
            
            <div class="acution_category_left">
                <div>
                    <a href="">도서</a>
                    <div>
                        <a href="">고서</a>
                        <a href="">신문</a>
                        <a href="">수필</a>
                        <a href="">시</a>
                        <a href="">고서</a>
                        <a href="">신문</a>
                        <a href="">수필</a>
                        <a href="">시</a>
                    </div>                   
                </div>

                <div>
                    <a href="">문구</a>
                    <div>
                        <a href="">장난감</a>
                        <a href="">수필</a>
                        <a href="">시</a>
                        <a href="">고서</a>
                        <a href="">신문</a>
                        <a href="">수필</a>
                        <a href="">시</a>
                    </div>                   
                </div>

                <div>
                    <a href="">기타</a>
                    <div>
                        <a href="">음반</a>
                        <a href="">CD</a>
                    </div>                   
                </div>
               
    
            </div> 


        </div>
        
        <div id="auction_serach_name">
            <div>
                <form action="">
                    <select name="" id="">
                        <option value="">상품명</option>
                    </select>
                    <input type="text">
                    <input type="submit" value="검색">
                </form>
            </div>
        </div>
        <!--입찰자가 많은 순-->

        <div class="auction_main_po">
            <h2 class="auction_main_title">인기 매물</h2>
            <%int num=0; %>
            <c:forEach var="t" items="${timelist }">
	            <div style="display: flex;" class="line">
	                <div class="auction_main_po_img">
	                    <img src="data:image/jpeg;base64,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" alt="#">
	                </div>
	                <div class="auction_main_po_center">
	                    <strong>${t.auctionName} </strong>
	                    <fmt:formatDate value="${t.endDate }" pattern="MM/dd/yyyy"/>
						<input type="hidden" value="${t.endDate }" name="timestemp">
	                    <p class="countdown">마감까지 남은 시간 : <span id="countdown<%=num++ %>" style="font-size:20px"></span></p>
	                    <p>경매시작 가격 : <span>${t.startPrice }</span></p>
	                    <p class="" >입찰가: <span>1000</span></p>
	                    <p>입찰 인원 수: <span>0</span></p>
	                    <p class="">바로 구매 : <span>${t.buyNow }</span></p>   
	                </div>
	                <div class="auction_main_po_right">
	                    <div class="btn1">입찰하기</div>
	                    <div class="btn1">바로구매</div> 
	                </div>
	            </div>
            </c:forEach>

            <div class="pagebar">${pageBar }</div>
        </div>

        <!--마감 직전 경매물품-->
        <div class="auction_main_de">
            <h2>마감이 별로 안남은 물품</h2>
            <div style="display: flex;" class="line">
                <div class="auction_main_po_img">
                    <img src="data:image/jpeg;base64,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" alt="#">
                </div>
                <div class="auction_main_po_center">
                    <strong>상품 이름</strong>
                    <p>마감까지 남은 시간 : <span>20:10:20</span></p>
                    <p>경매시작 가격 : <span>1000</span></p>
                    <p class="" >입찰가: <span>1000</span></p>
                    <p>입찰 인원 수: <span>0</span></p>
                    <p class="">바로 구매 : <span>200,000,000</span></p>   
                </div>
                <div class="auction_main_po_right">
                    <div class="btn1">입찰하기</div>
                    <div class="btn1">바로구매</div> 
                </div>
            </div>
            <div style="display: flex;" class="line">
                <div class="auction_main_po_img">
                    <img src="data:image/jpeg;base64,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" alt="#">
                </div>
                <div class="auction_main_po_center">
                    <strong>상품 이름</strong>
                    <p>마감까지 남은 시간 : <span>20:10:20</span></p>
                    <p>경매시작 가격 : <span>1000</span></p>
                    <p class="" >입찰가: <span>1000</span></p>
                    <p>입찰 인원 수: <span>0</span></p>
                    <p class="">바로 구매 : <span>200,000,000</span></p>   
                </div>
                <div class="auction_main_po_right">
                    <div class="btn1">입찰하기</div>
                    <div class="btn1">바로구매</div> 
                </div>
            </div>
            <div style="display: flex;" class="line">
                <div class="auction_main_po_img">
                    <img src="data:image/jpeg;base64,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" alt="#">
                </div>
                <div class="auction_main_po_center">
                    <strong>상품 이름</strong>
                    <p>마감까지 남은 시간 : <span>20:10:20</span></p>
                    <p>경매시작 가격 : <span>1000</span></p>
                    <p class="" >입찰가: <span>1000</span></p>
                    <p>입찰 인원 수: <span>0</span></p>
                    <p class="">바로 구매 : <span>200,000,000</span></p>   
                </div>
                <div class="auction_main_po_right">
                    <div class="btn1">입찰하기</div>
                    <div class="btn1">바로구매</div> 
                </div>
            </div>
            <div style="display: flex;" class="line">
                <div class="auction_main_po_img">
                    <img src="data:image/jpeg;base64,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" alt="#">
                </div>
                <div class="auction_main_po_center">
                    <strong>상품 이름</strong>
                    <p>마감까지 남은 시간 : <span>20:10:20</span></p>
                    <p>경매시작 가격 : <span>1000</span></p>
                    <p class="" >입찰가: <span>1000</span></p>
                    <p>입찰 인원 수: <span>0</span></p>
                    <p class="">바로 구매 : <span>200,000,000</span></p>   
                </div>
                <div class="auction_main_po_right">
                    <div class="btn1">입찰하기</div>
                    <div class="btn1">바로구매</div> 
                </div>
            </div>
            <div class="pagebar">pagebar</div>
        </div>


    </div>
</div>

    <script>
     $(function(){
            $(".acution_category_left>div").hover((e)=>{
                $(e.target).next('div').show();
            },(e)=>{
                if($(".acution_category_left>div>div").not().hover()){
                    $(".acution_category_left>div>div").hide();
                }
            })
        })
        
          function CountDownTimer(dt, id)
                        {
                        var end = new Date(dt);

                        var _second = 1000;
                        var _minute = _second * 60;
                        var _hour = _minute * 60;
                        var _day = _hour * 24;
                        var timer;

                        function showRemaining() {
                        var now = new Date();
                        var distance = end - now;
                        if (distance < 0) {

                        clearInterval(timer);
                        document.getElementById(id).innerHTML = '종료되었습니다!';

                        return;
                        }
                        var days = Math.floor(distance / _day);
                        var hours = Math.floor((distance % _day) / _hour);
                        var minutes = Math.floor((distance % _hour) / _minute);
                        var seconds = Math.floor((distance % _minute) / _second);

                        document.getElementById(id).innerHTML = days + '일 ';
                        document.getElementById(id).innerHTML += hours + '시간 ';
                        document.getElementById(id).innerHTML += minutes + '분 ';
                        document.getElementById(id).innerHTML += seconds + '초';
                        }

                        timer = setInterval(showRemaining, 1000);
                        }
    
     				$("input[name=timestemp]").each((i,v)=>{
     					 CountDownTimer($(v).val(), 'countdown'+i);
     				})
                  
                 
    </script>
    <style>
table{
	border-collapse: separate;
    text-indent: initial;
    border-spacing: 2px;
}
th{
	   vertical-align: middle;
 	 display: table-cell;
    font-weight: bold;
    text-align: -internal-center;	
}
a{
    text-decoration: none;
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
.line{
    border: 1px solid black;
}
.auction_main{
    padding: 10px;
    display: flex;
}
.auction_main_left{
    width: 800px;
    height: 300px;
}
.auction_main_right{
    width: 200px;
    height: 300px;
}
.acution_category{
    margin-top: 10px;
    padding: 10px;
}
.acution_category_left{
    width: 100%;
}
.acution_category_left>div>a{
    font-size: 20px;
    padding: 10px 30px 10px 30px;
    font-weight: bolder;
    text-align: center;
    border: 1px solid black;
    margin-right: 0px;
}
.acution_category_left>div{
    position: relative;
    display: inline-block;
}
.acution_category_left>div>div{
    padding: 10px 30px 10px 30px;
    display: none;
    width: 500px;
    position: absolute;
    top: 37px;
    border: 1px solid silver;
    z-index: 10;
    background-color: white;
}
.acution_category_left>div>div>a{
    text-align: center;
    padding: 10px;
}
.acution_category_left>div>div>a:hover{
    color: blue;
    border: 1px solid blue;
}
#auction_serach_name>div{
   text-align: right;
}

.auction_main_po_img img{
    width: 180px;
    height: 180px;
    border: 1px solid black;
}
.auction_main_po_center{
    width: 550px;
    padding: 10px;
}
.auction_main_po_center p{
    padding: 4px;
    font-size: 12px;
    font-weight: bold;
}
.auction_main_title{
    text-align: center;
    padding: 15px;
    border:1px solid black;
    border-radius: 10px;
    font-weight: bolder;
    font-size: 20px;
}
.auction_main_po_right{
    margin-left: 40px;
}
.btn1{
    margin: 10px;
    padding: 10px 20px 10px 20px;
    color: white;
    background-color: teal;
    text-align: center;
    font-weight: bolder;
    border: 1px solid black;
}
.pagebar{
    text-align: center;
}



/*===========옥션 리스트=============*/
.auctionlist_level2{
    border: 1px solid black;
    height: 150px;
    flex-wrap: wrap;
    display: flex;
}
.auctionlist_level2 div{
    text-align: center;
    width: 215px;
    background-color: white;
    font-size: 12px;
    font-weight: bold;
    padding: 20px 10px 20px 10px;
}
.auctionlist_level2 div a{
    font-size: 15px;
    font-weight: bold;
}
.auctionlist>table{
    width: 100%;
    border: 1px;
}
.auctionlist table tr td{
    border-right: silver 1px dotted;
}
.auctionlist_img{
    text-align: center;
}
.auctionlist_img>img{
    width: 150px;
    height: 100px;
}
.auctionlist_person{
    text-align: right;
}

/*옥션 view*/

.auctionview_left>img{
    width: 250px;
    height: 250px;
}
.auctionview_right{
    width: 800px;
    margin-left: 10px;
}
.auctionview_right p{
   padding: 0px;
   margin: 0px;
   font-weight: bold;
   font-size: 12px;
}
.auctionview_right h2{
    font-size: 17px;
    padding: 0px;
    margin: 0px;
}
.auctionview_right div{
    border-bottom: 1px solid black;
}
.auctionview_btn{
    height: 40px;
    margin: 20px;
}

.auctionview_btn a{
    text-align: center;
    width: 25%;
    border: 1px solid black;
    padding: 10px 20px 10px 20px;
    background-color: chartreuse;
    color: white;
}


.auction_buy_now{
    color: red;
    font-size: 15px;
}

.auctionwrite_submit{
    text-align: center;
}
span{
    font-size: 12px;
}
.auctionwrite>table>tbody>tr>th{
    background-color: yellow;

}
.countdown{
	font-size:20px;
	font-weight: bolder;
	
}

</style>
<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
<jsp:param name="" value=""/>
</jsp:include>