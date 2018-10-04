<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>전체 메뉴 리스트</title>

<style type="text/css">
.menuTable{
	float: left;
}
</style>
</head>
<body>
	<h1>전체 메뉴</h1>
	<div>전체 메뉴의 수 : ${totalRowCount}</div>
	
	<c:set var="i" value="0"/>
	<c:forEach var="menu" items="${list}">
		<c:set var="i" value="${ i+1 }"/>
		<c:if test="${ i%3!=0 }"><table class="menuTable" style="float:left;"></table></c:if>
			<table class="menuTable" border="1">
				<thead>
					<tr>
						<td>${menu.storeSalesMenuImage}</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${menu.storeSalesMenuName}</td>
					</tr>
					<tr>
						<td>
							<a href="${pageContext.request.contextPath}/menu_modify?storeSalesMenuCode=${menu.storeSalesMenuCode}">수정</a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/menu_remove?storeSalesMenuCode=${menu.storeSalesMenuCode}">삭제</a>
						</td>
					</tr>
				</tbody>
			</table>
		<c:if test="${ i%3==0 }"><table class="menuTable" style="clear: both;"></table></c:if>
	
	</c:forEach>
	<%-- <ul>
        <c:if test="${currentPage > 1}">
            <li><a href="${pageContext.request.contextPath}/all_menu_list?currentPage=${currentPage-1}">이전</a></li>
        </c:if>
        <c:if test="${currentPage < lastPage}">
            <li><a href="${pageContext.request.contextPath}/all_menu_list?currentPage=${currentPage+1}">다음</a></li>
        </c:if>
    </ul> --%>
    <span>
        <a href="${pageContext.request.contextPath}/all_menu_insert">게시글 입력</a>
    </span>
</body>
</html>