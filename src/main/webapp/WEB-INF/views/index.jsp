<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/newHeader.jsp">
   <jsp:param name="" value=""/>
</jsp:include>
<!-- ////////////////////////상위배너/////////////////////// -->

<div class="wrap">
<div class="bannerBg">
<div class="flex bannerwrap">
<div class="mainbanner flex">
<!-- <div class="mainbtn flex"> -->
<!-- <button class="mainsearchBox-slideBtn-next">이전</button> -->
<div class="mainbanner_obj1">
    <div class="mainsearchBox-slideBox">
        <div class="mainbanner_objleft btndown mainsearchBox-slideList">
            <div class="mainsearchBox-slideContent mainbanner1">
                <img alt="banner1" src="../vscode/img/main/banner/1300add1.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner2">
                <img alt="banner2" src="../vscode/img/main/banner/1300add2.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner3">
                <img alt="banner3" src="../vscode/img/main/banner/1300400.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner4">
                <img alt="banner4" src="../vscode/img/main/banner/1300add3.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner5">
                <img alt="banner5" src="../vscode/img/main/banner/1300add4.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner6">
                <img alt="banner6" src="../vscode/img/main/banner/1300400.png">
            </div>
            <div class="mainsearchBox-slideContent mainbanner7">
                <img alt="banner7" src="../vscode/img/main/banner/1300add3.png">
            </div>
        </div>
        
        <ul class="mainslide-pagination" style="width: 20px; height: 10px; display: none;">
        </ul>
    </div>
</div>
<!-- <button class="mainsearchBox-slideBtn-prev">다음</button> -->
</div>
</div>
<div class="flex">
        <p class="maintrigger1 mouseoverbtn mouseoverbtnbg " style="background-color: #582810; color: white;"></p>
        <p class="maintrigger2 mouseoverbtn mouseoverbtnbg "></p>
        <p class="maintrigger3 mouseoverbtn mouseoverbtnbg "></p>
        <p class="maintrigger4 mouseoverbtn mouseoverbtnbg "></p>
        <p class="maintrigger5 mouseoverbtn mouseoverbtnbg "></p>
        <p class="maintrigger6 mouseoverbtn mouseoverbtnbg "></p>
        <p class="maintrigger7 mouseoverbtn mouseoverbtnbg "></p>
    </div>

<!-- <div class="mainbanner_obj2">
    <img alt="bookcast" src="../vscode/img/main/banner/bookcast.gif" style="margin-top: 20px;">
    <ul>
        <li class="underbar">
            <a>
                <img alt="prince" src="../vscode/img/main/banner/prince.png" style="width: 150; height: 83; margin-top: 20px;" class="outline">
                <p style="margin-top: 20px; font-weight: bold;">지도자의 길</p>
                <p style="margin-top: 8px;">"전 19살이고 <br>복세편살입니다."</p>
            </a>
        </li>
    </ul>
        <hr style="margin-top: 10px;">
        <li style="margin-top: 20px;">안녕하세요</li>
        <li>어제는 편히 쉬셨나요</li>
        <li>식사는 맛있게 하셨나요</li>
        <li>캠 켜주세요 캠</li>
    </ul>
</div>  

</div> -->
<!-- <div>
    <div class="mainbanner_add outline">
        <img alt="bookcast" src="../vscode/img/main/banner/booknews.png" >
    </div>
    <div class="mainbanner_add outline" style="margin-top: 8px;">
        <img alt="bookcast" src="../vscode/img/main/banner/booknewsadd.png">
    </div>
</div> -->
    
    </div>
    
<!-- ////////////////////////오늘의 책/////////////////////// -->

    <!-- <div class="todaybooks partition">
        <div class="flex alignitems" style="margin-bottom: 5px;" id="fullbox">
            <div class="footerheadlinetoday">
                <p style="font-weight: bold; width: 70px;">오늘의 책</p>
            </div>
            <div class="todaysection">
                <p class="todaycg todaybtn1" style="margin-left: 60px; background-color: #582810; color:white">국내도서</p>
            </div>
            <div class="todaysection">
                <p class="todaycg todaybtn2">eBook</p>
            </div>
            <div class="todaysection">
                <p class="todaycg todaybtn3">기프트</p>
            </div>
            <button class="plus">+</button>
        </div>
        <div class="flex todaydiv1" >
            <div class="container2 flex outline">


        <div class="todaylev1Box-slideBox todaylevboxset">
            <div class="todaylev1slide_btn_prev btntodayleftposition"></div>
            <ul class="todaylev1slide_list flex">
                <li class="todaylev1slide_content todaycontent">
                    <a href="#"><img src="../vscode/img/main/dummybooks/dummy1.jpg" style="width: 130px; height: 200px;"></a>
                </li>
                <li class="todaylev1slide_content todaycontent ">
                    <a href="#"><img src="../vscode/img/main/bestseller/bestseller12.png" style="width: 120px; height: 180px;"></a>
                </li>
                <li class="todaylev1slide_content todaycontent">
                    <a href="#"><img src="../vscode/img/main/week/weekadd1.png" style="width: 130px; height: 200px;"></a>
                </li>
            </ul>
            <div class="todaylev1slide_pagination" style="height: 50px;  justify-content: center;" >
            </div>
            <div class="todaylev1slide_btn_next btntodayrightposition"></div>
        </div>
        <div class="todaylev2Box-slideBox todaylev2boxset">
    <!-- 버튼 
        <div class="todaylev2slide_btn_prev btntodayleftposition"></div>

        <div class="flex todaylev2slide_list inneradd1">
        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt1">
            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd.png"></a>
        </div>
        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt2">
            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd2.png"></a>
        </div>
        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt3">
            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd3.png"></a>
        </div> 
        </div>

        <!-- 리스트 2~3 
        <div class="flex todaylev2slide_list inneradd2">
            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt1">
                <a href=""><img src="../vscode/img/main/todaybook/meatadd1.png"></a>
            </div>
            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt2">
                <a href=""><img src="../vscode/img/main/todaybook/meatadd2.png"></a>
            </div>
            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt3">
                <a href=""><img src="../vscode/img/main/todaybook/meatadd3.png"></a>
            </div> 
            </div>
        
        <div class="flex todaylev2slide_list inneradd3">
                <div class="todaybooksadd2 todaylev2slide_content todayinnerdt1">
                    <a href=""><img src="../vscode/img/main/todaybook/unclesamadd.png"></a>
                </div>
                <div class="todaybooksadd2 todaylev2slide_content todayinnerdt2">
                    <a href=""><img src="../vscode/img/main/todaybook/unclesamadd2.png"></a>
                </div>
                <div class="todaybooksadd2 todaylev2slide_content todayinnerdt3">
                    <a href=""><img src="../vscode/img/main/todaybook/unclesamadd3.png"></a>
            </div> 
        </div>




                    <div class="flex todaylev2slide_list">
                        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt1">
                            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd.png"></a>
                        </div>
                        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt2">
                            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd2.png"></a>
                        </div>
                        <div class="todaybooksadd2 todaylev2slide_content todayinnerdt3">
                            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd3.png"></a>
                        </div> 
                    </div>

                    <div class="flex todaylev2slide_list">
                            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt1">
                                <a href=""><img src="../vscode/img/main/todaybook/unclesamadd.png"></a>
                            </div>
                            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt2">
                                <a href=""><img src="../vscode/img/main/todaybook/unclesamadd2.png"></a>
                            </div>
                            <div class="todaybooksadd2 todaylev2slide_content todayinnerdt3">
                            <a href=""><img src="../vscode/img/main/todaybook/unclesamadd3.png"></a>
                    </div> 
                    </div>
                <div class="todaylev2slide_pagination" style="height: 50px;  justify-content: center; display: none;" >
                </div>
                <div class="todaylev2slide_btn_next btntodayrightposition2" ></div>
                    </div>
            </div>
            <div class="container2 alignitems textalign">
                <div class="todaybooksadd3 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd1.png">
                </div>
                <div class="todaybooksadd4 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd3.png" style="margin-top: 7px;">
                </div>
            </div>
        </div>

        
        <div class="flex todaydiv2 hidden" >
            <div class="container2 flex outline">


                <div class="todaylev1Box-slideBox todaylevboxset">
                    <div class="todaylev3slide_btn_prev btntodayleftposition"></div>
                    <ul class="todaylev3slide_list flex">
                        <li class="todaylev3slide_content todaycontent ">
                            <a href="#"><img src="../vscode/img/main/bestseller/bestseller12.png" style="width: 120px; height: 180px;"></a>
                        </li>
                        <li class="todaylev3slide_content todaycontent">
                            <a href="#"><img src="../vscode/img/main/week/weekadd1.png" style="width: 130px; height: 200px;"></a>
                        </li>
                        <li class="todaylev3slide_content todaycontent">
                            <a href="#"><img src="../vscode/img/main/dummybooks/dummy1.jpg" style="width: 130px; height: 200px;"></a>
                        </li>
                    </ul>
                    <div class="todaylev3slide_pagination" style="height: 50px;  justify-content: center;" >
                    </div>
                    <div class="todaylev3slide_btn_next btntodayrightposition"></div>
                </div>


                <div class="todaylev4Box-slideBox todaylev2boxset">
                <div class="todaylev4slide_btn_prev btntodayleftposition"></div>


                <div class="flex todaylev4slide_list">
                <div class="todaybooksadd2 todaylev4slide_content todayinnerdt1">
                    <a href=""><img src="../vscode/img/main/todaybook/meatadd1.png"></a>
                </div>
                <div class="todaybooksadd2 todaylev4slide_content todayinnerdt2">
                    <a href=""><img src="../vscode/img/main/todaybook/meatadd2.png"></a>
                </div>
                <div class="todaybooksadd2 todaylev4slide_content todayinnerdt3">
                    <a href=""><img src="../vscode/img/main/todaybook/meatadd3.png"></a>
                </div> 
            </div>


            <div class="todaylev4slide_pagination" style="height: 50px;  justify-content: center; display: none;" >
            </div>
            <div class="todaylev4slide_btn_next btntodayrightposition3" ></div>
            </div>
        </div>
        <div class="container2 alignitems textalign">
            <div class="todaybooksadd3 outline">
                <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd1.png">
            </div>
            <div class="todaybooksadd4 outline">
                <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd3.png" style="margin-top: 7px;">
            </div>
        </div>

            <!-- <div class="container2 flex">
                    <div class="todaybooksadd1">
                        B슬라이드 자리
                    </div>
                    <div class="todaybooksadd2">
                        B상세 슬라이드자리
                    </div>
            </div>
            <div class="container2 alignitems textalign">
                <div class="todaybooksadd3 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd1.png">
                </div>
                <div class="todaybooksadd4 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd3.png" style="margin-top: 7px;">
                </div>
            </div> 

        </div>

        <div class="flex todaydiv3 hidden" >
            <div class="container2 flex">
                    <div class="todaybooksadd1">
                        C슬라이드 자리
                    </div>
                    <div class="todaybooksadd2">
                        C상세 슬라이드자리
                    </div>
            </div>
            <div class="container2 alignitems textalign">
                <div class="todaybooksadd3 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd1.png">
                </div>
                <div class="todaybooksadd4 outline">
                    <img alt="bookcast" src="../vscode/img/main/todaybook/todaybookadd3.png" style="margin-top: 7px;">
                </div>
            </div>
        </div>
        
    </div> -->

<!-- ////////////////////////따끈따끈 신작/////////////////////// -->

    <div class="hotnew todaybooks partition">
        <div class="flex alignitems">
            <div class="footerheadline">
                <p style="font-weight: bold;">따끈따끈 신작</p></div>
                <a href="#"><img src="../vscode/img/main/icon/plusicon.png"></a>
        </div>
        <div class="hotNewsearchBox-slideBox boxsetNew">
            <div class="hotNewslide_btn_prev btnNewleftposition"></div>
            <ul class="hotNewslide_list hotListflex " style="margin-top: 30px; justify-content: space-around;">

                <li class="hotNewslide_content hotnewbox">
                    <div class="hotnewinner hotnewjccenter">
                    <div>
                        <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/bestseller/bestseller12.png" alt=""></a>
                        <input type="hidden" name="" value="">
                    </div>
                    <div class="hotnewcg">[음식/생활]</div>
                    <div>
                        <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                    </div>
                    <div class="hotnewinner hotnewjccenter">
                        <div>
                            <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/dummybooks/dummy1.jpg" alt=""></a>
                            <input type="hidden" name="" value="">
                        </div>
                        <div class="hotnewcg">[음식/생활]</div>
                        <div>
                            <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                        </div>
                        <div class="hotnewinner hotnewjccenter">
                            <div>
                                <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/bestseller/bestseller12.png" alt=""></a>
                                <input type="hidden" name="" value="">
                            </div>
                            <div class="hotnewcg">[음식/생활]</div>
                            <div>
                                <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                            </div>
                            <div class="hotnewinner hotnewjccenter">
                                <div>
                                    <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/bestseller/bestseller12.png" alt=""></a>
                                    <input type="hidden" name="" value="">
                                </div>
                                <div class="hotnewcg">[음식/생활]</div>
                                <div>
                                    <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                                </div>
                </li>


                <li class="hotNewslide_content hotnewbox">
                    <div class="hotnewinner hotnewjccenter">
                        <div>
                            <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/bestseller/bestseller12.png" alt=""></a>
                            <input type="hidden" name="" value="">
                        </div>
                        <div class="hotnewcg">[음식/생활]</div>
                        <div>
                            <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                        </div>   
                        

           <div class="hotnewinner hotnewjccenter">
                <div>
                    <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/bestseller/bestseller12.png" alt=""></a>
                    <input type="hidden" name="" value="">
                </div>
                <div class="hotnewcg">[음식/생활]</div>
                <div>
                    <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                </div>   




                <div class="hotnewinner hotnewjccenter">
                    <div>
                        <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/dummybooks/dummy1.jpg" alt=""></a>
                        <input type="hidden" name="" value="">
                    </div>
                    <div class="hotnewcg">[음식/생활]</div>
                    <div>
                        <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                    </div>
                    <div class="hotnewinner hotnewjccenter">
                        <div>
                            <a href="#"><img class="hotnewimgsize" src="../vscode/img/main/dummybooks/dummy1.jpg" alt=""></a>
                            <input type="hidden" name="" value="">
                        </div>
                        <div class="hotnewcg">[음식/생활]</div>
                        <div>
                            <a href="#"><p class="hotnewtitle">식욕은 어디서 시작되는가?</p></a></div>
                        </div>
              

                    
                

            </ul>
            <div class="hotNewslide_btn_next btnNewrightposition"></div>
        </div>
            <div class="hotNewslide_pagination flex" style="height: 50px;  justify-content: center;" >
            </div>
            
            
        </div>




        <!-- <div class="flex" style="width: 1000px;">
            <div class="hotnewObj">제품1</div>
            <div class="hotnewObj">제품2</div>
            <div class="hotnewObj">제품3</div>
            <div class="hotnewObj">제품4</div>
        </div> -->
    </div>


<!-- ////////////////////////라이징스타/////////////////////// -->

    <div class="widebg partition">
        <div class="flex">
            <div class="risingStar1">
                <p class="hotfont">&nbsp;&nbsp;&nbsp;라이징스타★</p>
                <p class="hotfontinner">지금 뜨는 HOT템</p>                
            </div>
            <div class="hotsearchBox-slideBox boxset">
                <div class="hotslide_btn_prev btnleftposition"></div>
                <div class="hotslide_list hotListflex" style="margin-top: 30px;">
                    <div class="hotslide_content">
                        <img alt="banner1" src="../vscode/img/main/risingstar/risingstar.png">
                    </div>
                    <div class="hotslide_content">
                        <img alt="banner2" src="../vscode/img/main/risingstar/risingstar2.png">
                    </div>
                </div>
                <div class="hotslide_pagination flex" style="height: 50px;  justify-content: center;" >
                </div>
                
                <div class="hotslide_btn_next btnrightposition"></div>
            </div>
        </div>
    </div> 

<!-- ////////////////////////베스트셀러/////////////////////// -->

    <div class="bestSeller_chart partition">
        <div class="flex alignitems">
            <div class="footerheadlinebs flex">
                <p style="font-weight: bold;">인기가 가장 많은 아이템</p>
                <a href="#"><img src="../vscode/img/main/icon/plusicon.png"></a>
            </div>
        </div>
        <div class="flex">
            <div class="bestSeller_main ">
                <ul class="bestsellerlist" style="margin-top: 5px;">
                    <li class="best1">
                        <div class="icon iconred">
                            <strong class="rankwhite">01</strong>
                        </div>
                        <div class="cover ">
                            <a href="sellpart/bookView.html"><img alt="bestseller1" src="../vscode/img/main/bestseller/bestseller12.png" class="bestseller12"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best2">
                        <div class="icon">
                            <strong class="rank">02</strong>
                        </div>
                        <div class="cover">
                            <div class="cover">
                                <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best3">
                        <div class="icon">
                            <strong class="rank">03</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller3" src="../vscode/img/main/bestseller/bestseller310.png" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best4">
                        <div class="icon">
                            <strong class="rank">04</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller4" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best5">
                        <div class="icon">
                            <strong class="rank">05</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller5" src="../vscode/img/main/bestseller/bestseller310.png" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                </ul>
               

                <ul class="bestsellerlist">
                    <li class="best1">
                        <div class="icon icongray">
                            <strong class="rankgray ">01</strong>
                        </div>
                        <div class="cover ">
                            <a href="#"><img alt="bestseller1" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best2">
                        <div class="icon">
                            <strong class="rank">02</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller2" src="../vscode/img/main/bestseller/bestseller310.png" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best3">
                        <div class="icon">
                            <strong class="rank">03</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller3" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best4">
                        <div class="icon">
                            <strong class="rank">04</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller4" src="../vscode/img/main/bestseller/bestseller310.png" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                    <li class="best05">
                        <div class="icon">
                            <strong class="rank">05</strong>
                        </div>
                        <div class="cover">
                            <a href="#"><img alt="bestseller05" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller310"></a>
                        </div>
                        <div class="title ">
                            <a href="#"><p class="hotnewtitle ">먹어야 산다</p></a>
                        </div>
                        <div class="author">박원재</div>
                    </li>
                </ul>
            </div>
            <div class="bestSeller_right">
                <div class="flex sectionfirst">
                    <p class="trigger1 mouseoverbtn mouseoverbtnbg bottomline">
                    문곰이추천
                    </p>
                    <p class="trigger2 mouseoverbtn mouseoverbtnbg bottomline">인기eBook</p>
                </div>
                <div class="basicform booktubercontainer" style="background-image: url('../vscode/img/main/icon/gomchu.png'); margin-top: 72px;">


                    <div class="booktubercontainer textalign margintop50">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                    </div>
                    <div class="title "><p class="margintop20 ">[북튜버의 책방]</p></div>
                    <div class="comment">
                        <a href="#"><p class="margintop10">[로그노트] 어지러운 집 정리하는 꿀팁</p></a>
                    </div>
                    <ul>
                        <li>
                            <div class="booktubercontainer textalign margintop50 ">
                                <img alt="booktuber" src="../vscode/img/main/bestseller/bestseller310.png" class="bestseller310" style="opacity: 0;"></a>
                            </div>
                            <div class="title">
                                <a href="#"><p class="margintop20" style="opacity: 0;">책의 제목자리</p></a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="hiddenform booktubercontainer hidden">
                    <div class="booktubercontainer textalign margintop50">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/bestseller/bestseller12.png" class="bestseller12"></a>
                    </div>
                    <div class="title"><p class="margintop20">[유튜버의 책방]</p></div>
                    <div class="comment">
                        <a href="#"><p class="margintop10">[로그노트] 어지러운 집 정리하는 꿀팁</p></a>
                    </div>
                    <ul>
                        <li>
                            <div class="booktubercontainer textalign margintop50">
                                <img alt="booktuber" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller310"></a>
                            </div>
                            <div class="title">
                                <a href="#"><p class="margintop20">책의 제목자리</p></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            </div>
        </div>
    </div>

    <!-- ////////////////////////이주의 책/////////////////////// -->

<!-- <div class="wrap2">
        <div class="weekBookBg partition">
            <div class="flex ">
                <div class="footerheadline">
                    <p style="font-weight: bold;">이주의 책</p></div>
                    <a href="#"><button class="plus">ad</button></a>
            </div>
            <div class="flex">
            <ul class="flex" style="width: 640px; height: 270px;">
                <li class="best2">
                    <div class="cover weekbookcontent">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                    </div>
                    <div class="title " > 
                        <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                    </div>
                    <div class="author">박원재</div>
                </li>

                <li class="best2">
                    <div class="cover weekbookcontent">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                    </div>
                    <div class="title " > 
                        <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                    </div>
                    <div class="author">박원재</div>
                </li>

                <li class="best2">
                    <div class="cover weekbookcontent">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                    </div>
                    <div class="title " > 
                        <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                    </div>
                    <div class="author">박원재</div>
                </li>

                <li class="best2">
                    <div class="cover weekbookcontent">
                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="bestseller12"></a>
                    </div>
                    <div class="title " > 
                        <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                    </div>
                    <div class="author">박원재</div>
                </li>
            </ul>
            
            
                <div class="weekBookAdd">
                    <a href="#">
                        <img alt="weekadd1" src="../vscode/img/main/week/weekadd.png">
                    </a>
                </div>
            </div>
            </div>
            </div>
        </div>
</div> -->

<!-- ////////////////////////KHLover평점좋은책/////////////////////// -->

<div class="wrap">
        <div class="khloverBg partition">
            <div class="flex alignitems">
                <div class="footerheadline">
                    <p style="font-weight: bold;">KHLover평점좋은책</p>
                    </div>
                    <a href="#"><img src="../vscode/img/main/icon/plusicon.png"></a>
            </div>
            <div class="flex">
                <div class="content">
                    <div class="khloverList flex">
                        <div class="khloverinner1">
                            <p>오늘의 발견</p>
                            <ul>
                                <li>
                                    <div class="cover weekbookcontent khloverbg1">
                                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="khloveritem1"></a>
                                        <div class=" " > 
                                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                                        </div>
                                        <div class="author">박원재</div>
                                        <img src="../vscode/img/main/khlover/mark.png" style="margin-top: 10px;">
                                        <p class="khloverscore">3.2</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="flex khloverbg2 outline">
                            <ul class="flex khloverul">
                                <li>
                                    <div class="cover khloverright ">
                                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="khloveritem1"></a>
                                        
                                        <div class="title " > 
                                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                                            <div class="author">박원재</div>
                                            <img src="../vscode/img/main/khlover/mark.png" style="margin-top: 10px;">
                                                <p class="khloverscore">9.2</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover khloverright ">
                                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="khloveritem1"></a>
                                        
                                        <div class="title " > 
                                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                                            <div class="author">박원재</div>
                                            <img src="../vscode/img/main/khlover/mark.png" style="margin-top: 10px;">
                                                <p class="khloverscore">9.5</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover khloverright ">
                                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="khloveritem1"></a>
                                        
                                        <div class="title " > 
                                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                                            <div class="author">박원재</div>
                                            <img src="../vscode/img/main/khlover/mark.png" style="margin-top: 10px;">
                                                <p class="khloverscore">8.9</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover khloverright">
                                        <a href="#"><img alt="bestseller2" src="../vscode/img/main/dummybooks/dummy1.jpg" class="khloveritem1"></a>
                                        <div class="title " > 
                                            <a href="#"><p class="hotnewtitle">먹어야 산다</p></a>
                                            <div class="author">박원재</div>
                                            <img src="../vscode/img/main/khlover/mark.png" style="margin-top: 10px;">
                                            <p class="khloverscore">9.9</p>
                                        </div>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>   

<!-- ////////////////////////하단푸터/////////////////////// -->

    <div class="wrap">
        <hr class="boldline partition">
        <div class="upFooterBg" style="background-image: url('../vscode/img/main/icon/opebear.png');">
            <div class="footernoticebox flex">
                <div class="flex" style="margin-right: 20px; margin-left: 20px;">
                        <p class="borderright footerp">공지사항</p>
                        <div class="footernoticebox-slideContent flex footerbox">
                        
                            <ul class="footerslide-List" style="margin-left: 20px;">
                                    <li class="footerslide-content">
                                        <a href="#">KH문고 오픈 기념 할인 행사 이벤트!</a></li>
                                    <li class="footerslide-content">
                                        <a href="#">매장에 숨어있는 문곰이를 찾으세요</a></li>  
                                    <li class="footerslide-content">
                                        <a href="#">푸짐한 상품이 기다리고 있습니다</a></li>
                            </ul>
                        </div>   
                <div class="footerslide-pagination""></div>
                <div>
                    <button class="footerslide-button-prev footerbtn"></button>
                    <button class="footerslide-button-next footerbtn"></button>
                </div>    
            </div>
                <div class="flex">
                    <p class="borderright footerp" style="text-align: center;">당첨</p>
                        <div class="footernoticebox-slideContent flex footerbox">
                        
                            <ul class="footerslide2-List" style="margin-left: 20px;">
                                    <li class="footerslide2-content">
                                        <a href="#">[인문영역 문곰이] 유지훈 고객님 당첨!</a></li>
                                    <li class="footerslide2-content">
                                        <a href="#">[요리영역 문곰이] 박원재 고객님 당첨!</a></li>  
                                    <li class="footerslide2-content">
                                        <a href="#">[경매영역 문곰이] 윤양협 고객님 당첨!</a></li>
                            </ul>
                        </div>   
                <div class="footerslide2-pagination"></div>
                <div>
                    <button class="footerslide2-button-prev footerbtn"></button>
                    <button class="footerslide2-button-next footerbtn"></button>
                </div>
            </div>

        </div>
        <hr class="line">
        <div>
            <div class="flex footerul" style="margin-top: 20px;">
                <div class="upFooter_downSide verticalline">
                    <a href="#"><h2 class="middlefont">회원혜택</h2></a>
                    <ul class="footerul">
                        <li class="strong"><a href="#" class="ataggray">Prestige Lounge</a></li>
                        <li><a href="#" class="ataggray">신규회원 혜택</a></li>
                        <li><a href="#" class="ataggray">등급별 혜택</a></li>
                        <li><a href="#" class="ataggray">KH문고 혜택</a></li>
                    </ul>
                    
                </div>
                <div class="upFooter_downSide verticalline">
                    <h2 class="middlefont"><a href="#">쇼핑 꿀팁</a></h2>
                    <ul class="footerul">
                        <li><a href="#" class="ataggray">포인트/상품권</a></li>
                        <li><a href="#" class="ataggray"><strong>공동구매</strong></a></li>
                        <li><a href="#" class="ataggray"><strong>대량구매</strong></a></li>
                        <li><a href="#" class="ataggray">출판사전화번호안내</a></li>
                </div>
                <div class="upFooter_downSide verticalline">
                    <h2 class="middlefont"><a href="#">간편 서비스</a></h2>
                    <ul class="footerul">
                        <li><a href="#" class="ataggray">맴버십카드 등록</a></li>
                        <li><a href="#" class="ataggray">KH캐시 조회·충전</a></li>
                        <li><a href="#" class="ataggray">휴면고객 조회·복원</a></li>
                    </ul>
                </div>
                <div class="upFooter_downSide verticalline" >
                    <h2 class="middlefont"><a href="#">KH문고 알리미</a></h2>
                    <ul class="footerul">
                        <li><a href="#" class="ataggray">KH페이스북</a></li>
                        <li><a href="#" class="ataggray">KH트위터</a></li>
                        <li><a href="#" class="ataggray">KH인스타그램</a></li>
                        <li><a href="#" class="ataggray">KH유튜브</a></li>
                    </ul>
                </div>
                <div class="upFooter_downSide">
                    <h2 class="middlefont"><a href="#">FAQ</a></h2>
                    <ul class="footerul">
                        <li><a href="#" class="ataggray">주문·결제</a></li>
                        <li><a href="#" class="ataggray">eBook</a></li>
                        <li><a href="#" class="ataggray">도서·상품정보</a></li>
                        <li><a href="#" class="ataggray">중고장터</a></li>
                    </ul>
                </div>
            </div>
            <div class="flex" style="margin-top: 15px;opacity: 0;">
                <a href="#"><div class="btnFooter" ><p class="btnfootertext">모바일교보문고&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;＞</p></div></a>
                <a href="#"><div class="btnFooter"><p class="btnfootertext">바로 찾는 바로드림&nbsp;&nbsp;&nbsp;&nbsp;＞</p></div></a>
                <a href="#"><div class="btnFooter"><p class="btnfootertext">중고장터 스마트비교&nbsp;&nbsp;＞</p></div></a>
                <a href="#"><div class="btnFooter"><p class="btnfootertext">교보문고 기프트카드&nbsp;&nbsp;＞</p></div></a>
                <a href="#"><div class="btnFooter"><p class="btnfootertext">매장 안내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;＞</p></div></a>
            </div>
        </div>
    


    </div>
</div>

<!-- ------------------------------------------------------------------- -->



<script>
    let maintrigger1=document.querySelector('.maintrigger1');
    let mainbanner1=document.querySelector('.mainbanner1');

    let maintrigger2=document.querySelector('.maintrigger2');
    let mainbanner2=document.querySelector('.mainbanner2');
    
    let maintrigger3=document.querySelector('.maintrigger3');
    let mainbanner3=document.querySelector('.mainbanner3');

    let maintrigger4=document.querySelector('.maintrigger4');
    let mainbanner4=document.querySelector('.mainbanner4');

    let maintrigger5=document.querySelector('.maintrigger5');
    let mainbanner5=document.querySelector('.mainbanner5');

    let maintrigger6=document.querySelector('.maintrigger6');
    let mainbanner6=document.querySelector('.mainbanner6');

    let maintrigger7=document.querySelector('.maintrigger7');
    let mainbanner7=document.querySelector('.mainbanner7');

    let mouseoverbtn=document.querySelector('.mouseoverbtn');


    maintrigger1.addEventListener('mouseover', function(){
        maintrigger1.style.backgroundColor="#582810";
        maintrigger1.style.color="#ffffff";
        mainbanner1.style.display="flex";
        mainbanner2.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";

    });
    maintrigger2.addEventListener('mouseover', function(){
        maintrigger2.style.backgroundColor="#582810";
        maintrigger2.style.color="#ffffff";
        mainbanner2.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";

    });

    maintrigger3.addEventListener('mouseover', function(){
        maintrigger3.style.backgroundColor="#582810";
        maintrigger3.style.color="#ffffff";
        mainbanner3.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        mainbanner2.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";
    });
    maintrigger4.addEventListener('mouseover', function(){
        maintrigger4.style.backgroundColor="#582810";
        maintrigger4.style.color="#ffffff";
        mainbanner4.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        mainbanner2.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";
    });
    maintrigger5.addEventListener('mouseover', function(){
        maintrigger5.style.backgroundColor="#582810";
        maintrigger5.style.color="#ffffff";
        mainbanner5.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        mainbanner2.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";
    });
    maintrigger6.addEventListener('mouseover', function(){
        maintrigger6.style.backgroundColor="#582810";
        maintrigger6.style.color="#ffffff";
        mainbanner6.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        mainbanner2.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
        maintrigger7.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger7.style.color="black";
        mainbanner7.style.display="none";
    });
    maintrigger7.addEventListener('mouseover', function(){
        maintrigger7.style.backgroundColor="#582810";
        maintrigger7.style.color="#ffffff";
        mainbanner7.style.display="flex";
        maintrigger1.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger1.style.color="black";
        mainbanner1.style.display="none";
        maintrigger3.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger3.style.color="black";
        mainbanner3.style.display="none";
        maintrigger4.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger4.style.color="black";
        mainbanner4.style.display="none";
        maintrigger2.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger2.style.color="black";
        mainbanner2.style.display="none";
        maintrigger6.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger6.style.color="black";
        mainbanner6.style.display="none";
        maintrigger5.style.backgroundColor="rgb(231, 231, 231)";
        maintrigger5.style.color="black";
        mainbanner5.style.display="none";
    });


</script>




<script>
    let  inneradd1=document.querySelector('. inneradd1');
    let  inneradd2=document.querySelector('. inneradd2');
    let  inneradd3=document.querySelector('. inneradd3');

    

</script>

<script>
    let todaybtn1=document.querySelector('.todaybtn1');
    let todaybtn2=document.querySelector('.todaybtn2');
    let todaybtn3=document.querySelector('.todaybtn3');

    let todaydiv1=document.querySelector('.todaydiv1');
    let todaydiv2=document.querySelector('.todaydiv2');
    let todaydiv3=document.querySelector('.todaydiv3');

   


    todaybtn1.addEventListener('mouseover', function(){
        todaydiv1.style.display="flex";
        todaydiv2.style.display="none";
        todaydiv3.style.display="none";
        todaybtn1.style.backgroundColor="#582810";
        todaybtn2.style.backgroundColor="white";
        todaybtn3.style.backgroundColor="white";
        todaybtn1.style.color="white";
        todaybtn2.style.color="black";
        todaybtn3.style.color="black";
        
        
    });
    todaybtn2.addEventListener('mouseover', function(){
        todaydiv2.style.display="flex";
        todaydiv1.style.display="none";
        todaydiv3.style.display="none";
        todaybtn2.style.backgroundColor="#582810";
        todaybtn1.style.backgroundColor="white";
        todaybtn3.style.backgroundColor="white";
        todaybtn2.style.color="white";
        todaybtn1.style.color="black";
        todaybtn3.style.color="black";
    });
    todaybtn3.addEventListener('mouseover', function(){
        todaydiv3.style.display="flex";
        todaydiv2.style.display="none";
        todaydiv1.style.display="none";
        todaybtn3.style.backgroundColor="#582810";
        todaybtn2.style.backgroundColor="white";
        todaybtn1.style.backgroundColor="white";
        todaybtn3.style.color="white";
        todaybtn2.style.color="black";
        todaybtn1.style.color="black";
    });
</script>


<script>
    let trigger1=document.querySelector('.trigger1');
    let basicform=document.querySelector('.basicform');

    let trigger2=document.querySelector('.trigger2');
    let hiddenform=document.querySelector('.hiddenform');
    
    let mouseoverbtn=document.querySelector('.mouseoverbtn');


    trigger1.addEventListener('mouseover', function(){
        trigger1.style.backgroundColor="#582810";
        trigger2.style.backgroundColor="rgb(231, 231, 231)";
        trigger1.style.color="#ffffff";
        trigger2.style.color="black";
        basicform.style.display="block";
        hiddenform.style.display="none";
    });
    trigger2.addEventListener('mouseover', function(){
        trigger2.style.backgroundColor="#582810";
        trigger1.style.backgroundColor="rgb(231, 231, 231)";
        trigger2.style.color="#ffffff";
        trigger1.style.color="black";
        basicform.style.display="none";
        hiddenform.style.display="block";

    });


</script>




<div class="color-bar"></div>
        <div class="footer-background">
            <div class="center"> 
                <div class="left">
                    <img src="${path }/resources/images/kh문고 로고.png" alt="" style="width:180px; height:55px;">
                </div> 
                <div class="mid">
                    <ul>
                        <li>㈜ KH문고</li>
                        <li>서울시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</li>
                        <li>대표이사 : 유지훈</li>
                        <h3 class="copyright">COPYRIGHT(C) KH BOOKS CENTRE ALL RIGHTS RESERVED.</h3>
                    </ul>
                </div>
                <div class="right">
                    <ul>
                        <li>정의상민</li>
                        <li>김기0</li>
                        <li>작업중..</li>
                        <li>오류혜신</li>
                        <li>7원재</li>
                        <li>작업 예정</li>
                    </ul>
                </div>
            </div>     
        </div>
        
        <%-- <script src="${path }/resources/js/header.js"></script>
		<script src="${path }/resources/js/header(2).js"></script>
		<script src="${path }/resources/js/jquery-3.6.0.min.js"></script> --%>

</body>





    <!-- <script src="../vscode/js/header.js"></script>
	<script src="../vscode/js/header(2).js"></script> -->
	<script src="../vscode/js/jquery-3.6.0.min.js"></script>

  <script src="../vscode/js/main.js"></script>
  <script src="../vscode/js/mainHot.js"></script>  
  <script src="../vscode/js/mainHotNew.js"></script>
  <script src="../vscode/js/mainfooter1.js"></script> 
  <script src="../vscode/js/mainfooter2.js"></script> 
  <script src="../vscode/js/todaylev1.js"></script> 
  <script src="../vscode/js/todaylev2.js"></script> 
  <script src="../vscode/js/todaylev3.js"></script>
  <script src="../vscode/js/todaylev4.js"></script> 
  <!--<script src="../vscode/js/todaylev5.js"></script> 
  <script src="../vscode/js/todaylev6.js"></script>  -->
	


<%-- <%-- 
    <div class="wrap">
    <div class="flex bannerwrap">
    <div class="mainbanner flex">
        <div class="mainbanner_obj1">
            <div class="mainbanner_objleft btndown">
            <img alt="banner1" src="${path }/resources/img/main/banner/banner.png">
            <div class="mainbanner_objcontainer flex ">
            </div>
        </div>
        <button class="mainbanner_objinner">버튼2</button>
        <button class="mainbanner_objinner">버튼3</button>
        <button class="mainbanner_objinner">버튼4</button>
        <button class="mainbanner_objinner">버튼5</button>
        <button class="mainbanner_objinner">버튼6</button>
        <button class="mainbanner_objinner">버튼7</button>
        </div>
        <div class="mainbanner_obj2">출판사 북캐스트</div>   
    </div>
    <div>
        <div class="mainbanner_add">북뉴스</div>
        <div class="mainbanner_add">광고</div>
    </div>
    </div>

    <div class="todaybooks">
        <div class="flex">
            <div class="todaybooks21">오늘의책</div>
            <div class="todaybooks22">더보기</div>
        </div>
        <div class="flex">
            <div class="container2">
                <div class="flex">
                    <div class="todaybooksadd1">광고1</div>
                    <div class="todaybooksadd2">광고2</div>
                </div>
            </div>
            <div class="container2">
                <div class="todaybooksadd3">광고3</div>
                <div class="todaybooksadd4">광고4</div>
            </div>
        </div>
    </div>
    <div class="hotnew todaybooks">
        <div class="flex">
            <div class="todaybooks21">화제의 신간</div>
            <div class="todaybooks22">더보기</div>
        </div>
        <div class="flex">
            <div class="hotnewObj">제품1</div>
            <div class="hotnewObj">제품2</div>
            <div class="hotnewObj">제품3</div>
            <div class="hotnewObj">제품4</div>
        </div>
    </div>
    <div class="risingStarBg">
        <div class="flex">
            <div class="risingStar1">지금뜨는HOT템</div>
            <div class="risingStar2">광고영역 </div>
        </div>
    </div>
    <div class="bestSeller_chart">
        <div class="flex">
            <div class="todaybooks21">베스트셀러</div>
            <div class="todaybooks22">더보기</div>
        </div>
        <div class="flex">
            <div class="bestSeller_main">
                <div class="flex">
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                </div>
                <div class="flex">
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                    <div class="bestSellerContainer">책들어갈곳</div>
                </div>
            </div>
            <div class="bestSeller_right">
                <div class="flex">
                    <div class="minibtn">북튜버책방</div>
                    <div class="minibtn">추천eBook</div>
                </div>
                <div class="bestSeller_innerRight ">추천책1</div>
                <div class="bestSeller_innerRight">추천책2</div>
            </div>
        </div>
        <div class="weekBookBg">
            <div class="weekBookBg">
            <div class="todaybooks21">이주의 책</div>
            <div class="weekBookContainer flex">
                <div class="weekBookObj">
                    <div class="weekBookInnerContainer">책들어갈곳</div>
                    책설명쓰기
                </div>
                <div class="weekBookObj">
                    <div class="weekBookInnerContainer">책들어갈곳</div>
                    책설명쓰기
                </div>
                <div class="weekBookObj">
                    <div class="weekBookInnerContainer">책들어갈곳</div>
                    책설명쓰기
                </div>
                <div class="weekBookObj">
                    <div class="weekBookInnerContainer">책들어갈곳</div>
                    책설명쓰기
                </div>               
                <div class="weekBookAdd">광고</div>
            </div>
            </div>
        </div>
        <div class="khloverBg">
            <div class="flex">
                <div class="todaybooks21">KHLover평점좋은책</div>
                <div class="todaybooks22">더보기</div>
            </div>
            <div class="flex">
                <div class="khlover_container1">
                    <div class="khlover_obj0">책그림0</div>
                    책설명
                </div>
                <div class="khlover_container2 flex">
                    <div class="khlover_right">
                        <div class="khlover_obj">책그림1</div>
                        책설명
                    </div>
                    <div class="khlover_right">
                        <div class="khlover_obj">책그림2</div>
                        책설명
                    </div>
                    <div class="khlover_right">
                        <div class="khlover_obj">책그림3</div>
                        책설명
                    </div>
                    <div class="khlover_right">
                        <div class="khlover_obj">책그림4</div>
                        책설명
                    </div>
                </div>
            </div>
        </div>
        
        <div class="upFooterBg">
            <div class="flex">
                <div class="upFooter_upSide">공지사항</div>
                <div class="upFooter_upSide">당첨</div>
            </div>
            <div class="flex">
                <div class="upFooter_downSide">회원혜택</div>
                <div class="upFooter_downSide">쇼핑TIP</div>
                <div class="upFooter_downSide">빠른서비스</div>
                <div class="upFooter_downSide">KH문고소식</div>
                <div class="upFooter_downSide">FAQ</div>
            </div>
            <div class="flex">
                <div class="btnFooter">모바일교보문고</div>
                <div class="btnFooter">바로 찾는 바로드림</div>
                <div class="btnFooter">중고장터 스마트비교</div>
                <div class="btnFooter">교보문고 기프트카드</div>
                <div class="btnFooter">매장 안내</div>
            </div>
        </div>
    </div>
    </div>
    
    <script src="${path }/resources/js/header.js"></script>
	<script src="${path }/resources/js/header(2).js"></script> --%> --%>
<jsp:include page="/WEB-INF/views/common/newFooter.jsp">
<jsp:param name="" value=""/>
</jsp:include>