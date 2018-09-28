<!-- 2018. 9. 21(금) 이원상	root_stock_insert.jsp	본사 재고 등록화면 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>root stock insert</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>본사 재고 등록화면</h1>
	<form class="form-horizontal" action="${pageContext.request.contextPath}/homePage/admin/stock/rootStockInsertAtcion" method="post">
		<!-- 재고 카테고리 -->
		<div class="form-group">
			<label for="rootStockCateCode" class="col-sm-2 control-label">재고 카테고리</label>
			<div class="col-sm-10">
				<select class="form-control" id="rootStockCateCode">
					<option>1</option>	<!-- 재고카테고리 코드를 불러와서 화면에 출력해야함 -->
					<option>2</option>
					<option>3</option>
				</select>
			</div>
		</div>
		
		<!-- 재고 이름 -->
		<div class="form-group">
			<label for="rootStockName" class="col-sm-2 control-label">재고명</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="rootStockName" placeholder="재고이름">
			</div>
		</div>
		
		<!-- 재고 가격 -->
		<div class="form-group">
			<label for="rootStockPrice" class="col-sm-2 control-label">재고명</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="rootStockPrice" placeholder="재고가격">
			</div>
		</div>
		
		<!-- 재고판매유무 -->
		<div class="form-group">
			<label for="rootStockSalesState" class="col-sm-2 control-label">재고명</label>
			<div class="col-sm-10">
				<select class="form-control" id="rootStockSalesState">
					<option value="판매중">판매중</option>	
					<option value="판매중지">판매중지</option>
				</select>	
			</div>
		</div>
		
		<!-- 등록버튼 및 리셋버튼 -->
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">등록</button>
			</div>
			<div class="col-sm-offset-2 col-sm-10">
				<button type="reset" class="btn btn-default">리셋</button>
			</div>
		</div>
	</form>
</body>
</html>