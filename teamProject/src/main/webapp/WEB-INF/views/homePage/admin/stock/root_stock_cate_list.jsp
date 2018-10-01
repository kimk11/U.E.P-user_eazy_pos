<!-- 2018. 9. 21(금) 이원상	 root_stock_cate_list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 카테고리 리스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

</script>
</head>
<body>
	<div>전체 카테고리 메뉴 갯수 : ${totalRowCount}</div>
	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th>카테고리 코드</th>
				<th>카테고리 명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rootStockCate" items="${list}">
			<tr>
				<td>${rootStockCate.rootStockCateCode }</td>
				<td>${rootStockCate.rootStockCateName }</td>
				<td><input class="btn btn-default" type="button" value="등록"></td>
				<td><input class="btn btn-default" type="button" value="수정"></td>
				<td><input class="btn btn-default" type="button" value="삭제"></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		
		
		
	</div>	
</body>

</html>