<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<form action="${ pageContext.request.contextPath }/pos/salesMenu/menuInsertAction" method="post">
				<input type="text" name="rootMenuCateCode">
				<input type="text" name="rootSalesMenuName">
				<input type="text" name="rootSalesMenuPrice">
				<input type="text" name="rootSalesMenuDiscountState">
				<input type="file" name="rootSalesMenuImage">
				<button type="submit">추가</button>
			</form>
		</div>
	</div>
</body>
</html>