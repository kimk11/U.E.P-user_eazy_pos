<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>�ŷ�ó ��� ȭ��</title>
</head>
<body>
	
	<h1>�ŷ�ó ���</h1>
	<form action="/charhanjan/pos/stock/addStoreBusinessCompanyAction" method="post" id="businessCompanyForm" class="form-horizontal">
		<input type="hidden" name="storeCode" value=""  class="form-control">	<!-- ü���� �ڵ� -->
		<div class="form-group">
			<label class="col-sm-2 control-label">�ŷ�ó��</label>
			 <div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyName" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">��ǥ��</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyCeo" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">��ȣ</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyPhone" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">����ڵ�Ϲ�ȣ</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyLicensee" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">�̸���</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyEmail" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit"  class="btn btn-default">��  ��</button>
				<button type="reset"  class="btn btn-default">�ʱ�ȭ</button>
				<a href="/charhanjan/pos/stock/storeBusinessCompanyList"><button type="button"  class="btn btn-default">��  �� </button></a>
			</div>
	</form>
</body>
</html>