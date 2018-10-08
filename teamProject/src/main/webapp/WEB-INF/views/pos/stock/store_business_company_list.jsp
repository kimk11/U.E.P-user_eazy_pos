<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처 리스트</title>
</head>
<body>
	<h2>거래처 리스트</h2>
	<a href="${pageContext.request.contextPath}/addStorebusinessCompany" ><button>거래처등록</button></a>
	<table border="1">
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
					<td>${company.storeBusinessComapnyName}</td>
					<td>${company.storeBusinessCompanyCeo}</td>
					<td>${company.storeBusinessCompanyPhone}</td>
					<td>${company.storeBusinessCompanyLicensee}</td>
					<td>${company.storeBusinessCompanyEamil}</td>
					<td>${company.storeBusinessCompanyDate}</td>
					<td>${company.storeBusinessCompanyTime}</td>
					<td><a href="${pageContext.request.contextPath}/updateStoreBusinessCompany">수정</a></td>
					<td><a href="${pageContext.request.contextPath}/deleteStoreBusinessCompany">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>