<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 등록 화면</title>
</head>
<body>
	<h1>재고 등록</h1>
	<form action="${pageContext.request.contextPath}/addStoreBusinessCompany" method="post" id="stockForm">
		<input type="hidden" name="storeCode" value="">
		
		<!-- SelectBox에 DB 바인딩하기 (거래처명, 재고카테고리)-->
		<label>거래처명</label>
		<select name="selectBox" id="selectBox" style="width:80px;" class="select_02">
      		<c:forEach var="testList" items="${testList}" varStatus="i">
         		<option value="${testList.name}">${testList.name}</option>
      		</c:forEach>
   		</select>
   		
		<label>재고카테고리</label>
		<select name="storeStockCateCode">
			<option value="storecate001">원두/파우더/티</option>
			<option value="storecate002">유제품</option>
			<option value="storecate003">식자재</option>
			<option value="storecate004">포장용품</option>
			<option value="storecate005">시럽/소스</option>
		</select>
		<label>재고명</label>
		<input type="text" name="storeStockName" id="storeStockName">
 		<label>재고수량</label>
 		<input type="text" name="storeStockCount" id="storeStockCount">
		<label>재고가격</label>
		<input type="text" name="storeStockPrice" id="storeStockPrice">
		<button type="submit" id="stockBtn">등록</button>
		<button type="reset">초기화</button>		
	</form>
</body>
</html>