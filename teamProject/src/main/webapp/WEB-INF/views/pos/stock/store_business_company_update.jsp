<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처 수정 화면</title>
</head>
<body>
	<h2>거래처 정보 수정</h2>
	<form action="">
		<input type="hidden" name="storeCode" value="${storeBusinessCompany}" >	<!-- 체인점 코드 -->
		<label>거래처명</label>
		<input type="text" name="storeBusinessCompanyName" value="${storeBusinessCompanyName}">
		<label>대표명</label>
		<input type="text" name="storeBusinessCompanyCeo" value="${storeBusinessCompanyCeo}">
		<label>번호</label>
		<input type="text" name="storeBusinessCompanyPhone" value="${storeBusinessCompanyPhone}">
		<label>사업자등록번호</label>
		<input type="text" name="storeBusinessCompanyLicensee" value="${storeBusinessCompanyLicensee}">
		<label>이메일</label>
		<input type="text" name="storeBusinessCompanyEmail" value="${storeBusinessCompanyEmail}">
		<button type="submit">수정</button>
	</form>
</body>
</html>