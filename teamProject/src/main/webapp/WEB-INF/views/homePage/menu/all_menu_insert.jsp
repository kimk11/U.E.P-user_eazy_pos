<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
            <label for="rootMenuCateCode">통합 메뉴 카테고리 코드 :</label>
            <input name="rootMenuCateCode" id="rootMenuCateCode"/>
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
            <input name="storeSalesMenuDiscount" id="storeSalesMenuDiscount" type="text"/>
        </div>
        <div>
            <label for="storeSalesMenuState">판매유무 :</label>
            <input name="storeSalesMenuState" id="storeSalesMenuState" type="text"/>
        </div>
        <div>
            <input id="addButton" type="button" value="메뉴추가"/>
            <input type="reset" value="초기화"/>
            <a class="btn btn-default" href="${pageContext.request.contextPath}/all_menu">메뉴목록</a>
        </div>
    </form>
</body>
</html>