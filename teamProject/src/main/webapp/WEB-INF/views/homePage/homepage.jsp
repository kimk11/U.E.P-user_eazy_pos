<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/resources/css/homePage/homepage.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>
</head>
<body>

	<div class="wrapper clearfix">
	
		<!-- 로그인, 아이디/비밀번호찾기, 매장찾기  -->
		<div class="top">
		
			<!-- 로그인 바 -->
			<div class="loginBar">
				<ul class="loginUl">
				    <li class="loginLi">LOGIN</li>
				    <li class="loginLi">FIND ID</li>
				    <li class="loginLi">FIND PW</li>
				    <li class="loginLi">FIND A STORE</li>    
				</ul>
			</div>
		</div>
		
		
		<!-- 로고, 메뉴바 -->
		<div class="menu">
		
			<!-- 로고 -->
			<div class="logo">
				<img class="charLogo" src="${pageContext.request.contextPath}/resources/images/charLogo.png">
			</div>
			
			<!-- 메뉴 바 -->
			<div class="menuBar">
				<ul id="menu">
					<li><a href="#">메 뉴</a>
						<ul id="help">
							<li><a href="#">신 메 뉴</a></li>
							<li><a href="#">추 천 메 뉴</a></li>
							<li><a href="#">전 체 메 뉴</a></li>
							<li class="last"></li>
						</ul>
					</li>
		
					<li><a href="#">커 뮤 니 티</a>
						<ul id="help">
							<li><a href="#">이 벤 트</a></li>
							<li><a href="#">공 지 사 항</a></li>
							<li class="last"></li>
						</ul>
					</li>
					
					<li><a href="#">주 문 예 약</a>
						<ul id="help">
							<li><a href="#">주 문 하 기</a></li>
							<li><a href="#">매 장 찾 기</a></li>
							<li class="last"></li>
						</ul>
					</li>
					
					<li><a href="#">문 의</a>
						<ul id="help">
							<li><a href="#">입 점 문 의</a></li>
							<li class="last"></li>
						</ul>
					</li>
				</ul>
			</div>
			
		</div>
		
		
		<!-- 사진 -->
		<div class="homeImage">
			
			<!-- 메인 사진 -->
			<div class="mainImage">
				<img class="homepageMain" src="${pageContext.request.contextPath}/resources/images/homepageMain.jpg">
			</div>
		</div>
		
		<!-- main2 -->
		<div class="homeIntroduce">
			
			<!-- 소개글 -->
			<div class="introduce">
				<table class="introduceTable">
				  <tr class="introduceTr">
				    <td class="introduceTd1">
				    	<span style="font-size: 27px; font-weight: bold; color: #C92800">Enjoy the</span><br>
				    	<span style="font-size: 27px; font-weight: bold; color: #C92800">Char HanJan</span><br>
				    	<br><br>
				    	<span style="font-size: 17px; font-weight: bold; color: #555555">차 한잔과 함께하는 또 다른 재미로</span><br>
				    	<span style="font-size: 17px; font-weight: bold; color: #555555">당신을 초대합니다.</span><br>
				    </td>
				    <td class="introduceTd2">
				    	<br><br>
				    	<span style="font-size: 15px; font-weight: 600; color: #555555; font-style: italic;">차 한잔과 함께하는 즐거운 이벤트에 당신을 초대합니다.</span><br>
						<span style="font-size: 15px; font-weight: 600; color: #555555; font-style: italic;">차 한잔을 경험하고, 차 한잔과 함께 즐기고,</span><br> 
						<span style="font-size: 15px; font-weight: 600; color: #555555; font-style: italic;">차 한잔에서 공감할수 있는 풍성한 이벤트가</span><br>
						<span style="font-size: 15px; font-weight: 600; color: #555555; font-style: italic;">당신을 기다리고 있습니다.</span><br>
				    </td>
				  </tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>