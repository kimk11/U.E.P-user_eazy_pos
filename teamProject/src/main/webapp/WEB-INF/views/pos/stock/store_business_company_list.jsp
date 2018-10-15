<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>거래처 리스트</title>
</head>
<body>
	<h1>거래처 리스트</h1><br>
	<div>전체 거래처 수 : ${companyCount}</div><br>
	<a href="/charhanjan/pos/stock/addStoreBusinessCompany"><button class="btn btn-primary" data-toggle="modal" data-target="#companyModal" data-whatever="@getbootstrap">거래처등록</button></a><br>
	<table border="1" class="table table-striped">
		<thead>
			<tr>
				<th>거래처코드</th>
				<th>거래처명</th>
				<th>대표명</th>
				<th>연락처</th>
				<th>사업자등록번호</th>
				<th>이메일</th>
				<th>등록날짜</th>
				<th>등록시간</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="company" items="${list}">
				<tr>
					<td>${company.storeBusinessCompanyCode}</td>
					<td>${company.storeBusinessCompanyName}</td>
					<td>${company.storeBusinessCompanyCeo}</td>
					<td>${company.storeBusinessCompanyPhone}</td>
					<td>${company.storeBusinessCompanyLicensee}</td>
					<td>${company.storeBusinessCompanyEmail}</td>
					<td>${company.storeBusinessCompanyDate}</td>
					<td>${company.storeBusinessCompanyTime}</td>
					<td><a href="/charhanjan/pos/stock/modifyStoreBusinessCompany?storeBusinessCompanyCode=${company.storeBusinessCompanyCode}">수정</a></td>
					<td><a href="/charhanjan/pos/stock/removeStoreBusinessCompanyAction?storeBusinessCompanyCode=${company.storeBusinessCompanyCode}">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<!-- 이전, 다음 버튼 -->
	<nav>
  		<ul class="pager">
   			<li><a href="/charhanjan/pos/stock/storeBusinessCompanyList?currentPage=${currentPage-1}">이전</a></li>
   			<li><a href="/charhanjan/pos/stock/storeBusinessCompanyList?currentPage=${currentPage+1}">다음</a></li>
  		</ul>
	</nav>
	
	
	
<!-- 모달 -->



<!--자바스크립트  -->
<script type="text/javascript">

</script>


</body>
</html>