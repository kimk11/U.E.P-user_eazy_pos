<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>�ŷ�ó ����Ʈ</title>
</head>
<body>
	<h1>�ŷ�ó ����Ʈ</h1><br>
	<div>��ü �ŷ�ó �� : ${companyCount}</div><br>
	<a href="/charhanjan/pos/stock/addStoreBusinessCompany"><button class="btn btn-primary" data-toggle="modal" data-target="#companyModal" data-whatever="@getbootstrap">�ŷ�ó���</button></a><br>
	<table border="1" class="table table-striped">
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
					<td>${company.storeBusinessCompanyName}</td>
					<td>${company.storeBusinessCompanyCeo}</td>
					<td>${company.storeBusinessCompanyPhone}</td>
					<td>${company.storeBusinessCompanyLicensee}</td>
					<td>${company.storeBusinessCompanyEmail}</td>
					<td>${company.storeBusinessCompanyDate}</td>
					<td>${company.storeBusinessCompanyTime}</td>
					<td><a href="/charhanjan/pos/stock/modifyStoreBusinessCompany?storeBusinessCompanyCode=${company.storeBusinessCompanyCode}">����</a></td>
					<td><a href="/charhanjan/pos/stock/removeStoreBusinessCompanyAction?storeBusinessCompanyCode=${company.storeBusinessCompanyCode}">����</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<!-- ����, ���� ��ư -->
	<nav>
  		<ul class="pager">
   			<li><a href="/charhanjan/pos/stock/storeBusinessCompanyList?currentPage=${currentPage-1}">����</a></li>
   			<li><a href="/charhanjan/pos/stock/storeBusinessCompanyList?currentPage=${currentPage+1}">����</a></li>
  		</ul>
	</nav>
	
	
	
<!-- ��� -->



<!--�ڹٽ�ũ��Ʈ  -->
<script type="text/javascript">

</script>


</body>
</html>