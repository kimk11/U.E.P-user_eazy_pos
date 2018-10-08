<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ŷ�ó ����Ʈ</title>
</head>
<body>
	<h2>�ŷ�ó ����Ʈ</h2>
	<a href="${pageContext.request.contextPath}/addStorebusinessCompany" ><button>�ŷ�ó���</button></a>
	<table border="1">
		<thead>
			<tr>
				<th>�ŷ�ó�ڵ�</th>
				<th>�ŷ�ó��</th>
				<th>��ǥ��</th>
				<th>����ó</th>
				<th>����ڵ�Ϲ�ȣ</th>
				<th>�̸���</th>
				<th>��ϳ�¥</th>
				<th>��Ͻð�</th>
				<th>����</th>
				<th>����</th>
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
					<td><a href="${pageContext.request.contextPath}/updateStoreBusinessCompany">����</a></td>
					<td><a href="${pageContext.request.contextPath}/deleteStoreBusinessCompany">����</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>