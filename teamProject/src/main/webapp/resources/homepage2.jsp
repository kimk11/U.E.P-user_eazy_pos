<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/resources/css/homePage/homepage2.css?ver=1" rel="stylesheet" type="text/css">

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
		
		<!-- 메인소개 -->
		<div class="mainIntro">
			<div class="mainIntroPosition">
				<span style="font-size: 32px; color: #8A8A8A">신메뉴</span>
				<span style="font-size: 32px; font-weight: lighter; color: #C0C0C0"> | </span>
				<span style="font-size: 14px; color:#353535">char한잔에서 새롭게 만나는 다양한 행복</span>
			</div>
			
		</div>
		
		<!-- 메인 -->
		<div class="main">
	
			
		</div>
		
		
		<!-- 바닥글 -->
		<div class="bottle">
			<div class="bottleText">
				<span style="font-size: 32px; font-weight: bold; color: #6B6B6B">char 한잔</span>
				<br><br>
				<ul class="bottleUl">
				    <li class="bottleLi">개인정보 취급방침</li>
				    <li class="bottleLi">이용약관</li>
				    <li class="bottleLi">회원탈퇴</li>
				    <li class="bottleLi">고객센터 0000-0000</li>    
				</ul>
				<br>
				<ul class="bottleUl2">
				    <li class="bottleLi2">본사 전주시 덕진구 기린대로0길 00</li>
				    <li class="bottleLi2">대표이사 김진우</li>
				    <li class="bottleLi2">사업자 등록번호 000-00-00000</li>
				    <li class="bottleLi2">소비자 대표번호 0000-0000</li>
				    <li class="bottleLi2">FAX. 0000-0000</li>
				</ul>
				<br><br>
				<span style="font-size: 20px; font-weight: bold; color: #6B6B6B"> Copyright © by CharHanJan. All right reserved</span>
			</div>
		</div>
	</div>
</body>
</html>