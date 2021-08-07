<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/ebook/wizard/wizardHeader.jsp">
	<jsp:param name="title" value="e북 리더 - 문곰책방"/>
	<jsp:param name="currentPageIndex" value="0"/>
</jsp:include>

	<link rel="stylesheet" type="text/css" href="${path}/resources/css/ebook/wizard/ebookReader.css">

	<aside>
			<div id="asideController">
				<button onclick="showBookMark();">북마크</button>
				<button onclick="showTesseract();">TESSERACT</button>
			</div>
	
			<div id="bookMark">
				<div></div>
			</div>
			
			<div id="textTurmoil">
				<div id="parsedTextData"></div>
				<div id="tesseractController">
					<button id="pageToTextBtn">텍스트로 변환</button>
					<button id="textToSpeechBtn">읽어 줘</button>
				</div>
			</div>
			
			<div id="pageController">
				<div id="pageStatus">
					<span id="page-num"></span> / <span id="page-count"></span>
				</div>
				
				<input type="number" id="moveToPage" min="1" step="2">
				<button>이동</button>
			</div>
			
			<div id="readingInfo">
				<div id="readingTime">time</div>
				<div id="readingPage">page</div>
			</div>
	</aside>

	<section>
		<div id="book">
			<%-- <div id="binding">
				<c:forEach begin="1" end="27">
					<img src="${path}/resources/images/ebook/binding.png">
				</c:forEach>
			</div> --%>
			<canvas id="left-canvas" class="canvas"></canvas>
			<canvas id="right-canvas" class="canvas"></canvas>
		</div>

		<div class="hidden">
			<img id="left-canvas-img">
			<img id="right-canvas-img">
		</div>
	</section>

	<input type="hidden" id="filepath" value="${filepath}">
	
	<script src='https://unpkg.com/tesseract.js@v2.1.0/dist/tesseract.min.js'></script>
	<script src="https://mozilla.github.io/pdf.js/build/pdf.js"></script>
	<script src="${path}/resources/js/ebook/wizard/ebookReader.js"></script>

</body>
</html>