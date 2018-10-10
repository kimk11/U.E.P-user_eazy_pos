<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>거래처 등록 화면</title>
</head>
<body>
	
	<h1>거래처 등록</h1>
	<form action="/charhanjan/pos/stock/addStoreBusinessCompanyAction" method="post" id="businessCompanyForm" class="form-horizontal">
		<input type="hidden" name="storeCode" value=""  class="form-control">	<!-- 체인점 코드 -->
		<div class="form-group">
			<label class="col-sm-2 control-label">거래처명</label>
			 <div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyName" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">대표명</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyCeo" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">번호</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyPhone" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">사업자등록번호</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyLicensee" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">이메일</label>
			<div class="col-sm-5">
				<input type="text" name="storeBusinessCompanyEmail" class="form-control">
			</div>	
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit"  class="btn btn-default">등  록</button>
				<button type="reset"  class="btn btn-default">초기화</button>
				<a href="/charhanjan/pos/stock/storeBusinessCompanyList"><button type="button"  class="btn btn-default">목  록 </button></a>
			</div>
	</form>
</body>
</html>