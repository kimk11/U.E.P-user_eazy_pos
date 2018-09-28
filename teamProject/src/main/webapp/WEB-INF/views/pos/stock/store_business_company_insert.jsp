<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처 등록 화면</title>
</head>
<body>
	<h2>거래처 등록</h2>
	<form action="" method="post" id="businessCompanyForm">
		<input type="hidden" name="storeCode" value="" >	<!-- 체인점 코드 -->
		<label>거래처명</label>
		<input type="text" name="storeBusinessCompanyName">
		<label>대표명</label>
		<input type="text" name="storeBusinessCompanyCeo">
		<label>번호</label>
		<input type="text" name="storeBusinessCompanyPhone">
		<label>사업자등록번호</label>
		<input type="text" name="storeBusinessCompanyLicensee">
		<label>이메일</label>
		<input type="text" name="storeBusinessCompanyEmail">
		<button type="submit">등록</button>
		<button type="reset">초기화</button>
	</form>
</body>
</html>