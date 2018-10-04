<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
    	$('#insertButton').click(function(){
    		$('#insertForm').submit();
    	});
    });
</script>
<title>전체 메뉴 추가</title>
</head>
<body>
<div class="container">
	<form id="insertForm" action="${pageContext.request.contextPath}/all_menu_insert" method="post">
        <div>
            <label for="storeSalesMenuCode">메뉴코드 :</label>
            <input name="storeSalesMenuCode" id="storeSalesMenuCode" type="text"/>
        </div>
        <div>
            <label for="storeCode">체인점코드 :</label>
            <input name="storeCode" id="storeCode" type="text"/>
        </div>
        <div>
            <label for="rootMenuCateCode">통합 메뉴 카테고리 :</label>
            <select name="rootMenuCateCode" id="rootMenuCateCode">
	            <c:forEach var="cate" items="${list}">
	            	<option value="${cate.rootMenuCateName}">${cate.rootMenuCateName}</option>
	            </c:forEach>
            </select>
        </div>
        <div>
            <label for="storeSalesMenuName">메뉴 이름 :</label>
            <input name="storeSalesMenuName" id="storeSalesMenuName" type="text"/>
        </div>
        <div>
            <label for="storeSalesMenuPrice">가격 :</label>
            <input name="storeSalesMenuPrice" id="storeSalesMenuPrice" type="text"/>
        </div>
        <div>
            <label for="storeSalesMenuDiscount">할인유무 :</label>
            <select name="storeSalesMenuDiscount" id="storeSalesMenuDiscount">
			    <option value="정가">정가</option>
			    <option value="할인">할인</option>
			</select>
        </div>
        <div>
            <label for="storeSalesMenuState">판매유무 :</label>
            <select name="storeSalesMenuState" id="storeSalesMenuState">
			    <option value="판매">판매</option>
			    <option value="정리">정리</option>
			</select>
        </div>
        <div>
            <label for="storeSalesMenuImage">이미지 파일 :</label>
            <input name="storeSalesMenuImage" id="storeSalesMenuImage" type="file"/>
        </div>
        <div>
            <input id="insertButton" type="button" value="메뉴추가"/>
            <input type="reset" value="초기화"/>
            <a class="btn btn-default" href="${pageContext.request.contextPath}/all_menu_list">메뉴목록</a>
        </div>
    </form>
</div>
</body>
</html>