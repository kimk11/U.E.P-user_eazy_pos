<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ŷ�ó ��� ȭ��</title>
</head>
<body>
	<h2>�ŷ�ó ���</h2>
	<form action="" method="post" id="businessCompanyForm">
		<input type="hidden" name="storeCode" value="" >	<!-- ü���� �ڵ� -->
		<label>�ŷ�ó��</label>
		<input type="text" name="storeBusinessCompanyName">
		<label>��ǥ��</label>
		<input type="text" name="storeBusinessCompanyCeo">
		<label>��ȣ</label>
		<input type="text" name="storeBusinessCompanyPhone">
		<label>����ڵ�Ϲ�ȣ</label>
		<input type="text" name="storeBusinessCompanyLicensee">
		<label>�̸���</label>
		<input type="text" name="storeBusinessCompanyEmail">
		<button type="submit">���</button>
		<button type="reset">�ʱ�ȭ</button>
	</form>
</body>
</html>