<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/homePage/login.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>권한별 로그인</title>
</head>
<body>
	<h1 class="gradeChooseH1">LOGIN<span id="gradeChooseSpanBar"><span></span></span><span id="gradeChooseSpan"> : 권한에 맞는 로그인을 선택해주세요.</sapn></h1>
	<div class="grades">
		<div class="indGrade">
			<p>
				<a href="#">관리자</a>
			</p>
		</div>
		<div class="indGrade">
			<p>
				<a href="#">직원</a>
			</p>
		</div>
		<div class="indGrade">
			<p>
				<a href="#">일반회원</a>
			</p>
		</div>
		<div class="indGrade">
			<p>
				<a href="#">비회원</a>
			</p>
		</div>
	</div>
	
	
	
<!------ 로그인 폼 ---------->

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="${pageContext.request.contextPath}/resources/images/charLogo.png" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form>
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="username">
      <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Sign Up -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Sign Up</a>
    </div>

  </div>
</div>
</body>
</html>