<!-- 2018. 9. 21(금) 이원상	 root_stock_cate_list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 카테고리 리스트</title>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script>
$(document).ready(function(){
	// 등록 button 클릭 이벤트
    $('#insertButton').one('click', function(){
   	 	var insertButtonClickNumber = 0;
        const form = $('<form/>',{
            id:'rootStockCateInsertForm'
            ,class:'form-inline'
            ,action:'/homePage/admin/stock/rootStockCateInsertAction'
            ,method:'post'
        });
        const div = $('<div/>',{
            class:'form-group'
        });
        const label = $('<label>코드명</label>',{
            for:'rootStockCateName'
        });
        const input = $('<input/>',{
            type:'text'
            ,id:'rootStockCateName'
            ,placeholder:'코드명을 입력하여주세요'
            ,class: 'form-control'
            ,name:'rootStockCateName'
        });
        const button = $('<button>등록</button>',{
            type:'submit'
            ,class:'btn btn-default'
        });
        form.insertAfter('table');
        div.prependTo(form);
        label.appendTo(div);
        input.insertAfter(label);
        button.insertAfter(input);
        insertButtonClickNumber++;
        console.log(insertButtonClickNumber);
    });
	// 수정 button 클릭 이벤트
	$('#UpdateButton').on('click', function(){
		var array = $('#rootStockCateName').val(); 
		console.log(array);
		$('#rootStockCateName').focus();
		$('#rootStockCateName').removeAttr('readonly');
	});
});
</script>
</head>
<body>
	<h1>전체 카테고리 메뉴 갯수 : ${rootStockCateCount}개 입니다.</h1>
	<div>
		<select>
			<option value="3">3개씩 보기</option>
			<option value="5">5개씩 보기</option>
			<option value="7">7개씩 보기</option>
			<option value="9">10개씩 보기</option>
		</select>
		<input class="btn btn-default" type="button" id="insertButton" value="카테고리 등록">
	</div>
	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th>카테고리 코드</th>
				<th>카테고리 명</th>
			</tr>
		</thead>
				<!-- 폼으로 만드어서 value값으로 수정버튼 누를시 required속성 제거 포커스 이동 폼액션시 값을 가지고 컨트롤러로 이동 -->
		<tbody>
			<c:forEach var="rootStockCate" items="${list}">
			<tr>
				<td>
					<form class="form-inline" id="rootStockCateUpdateForm">
						<div class="form-group">
							<input type="text" value="${rootStockCate.rootStockCateCode }" name="rootStockCateCode" class="form-control" readonly>
						</div>
					</form>
				</td>
				<td>
					<form class="form-inline" id="rootStockCateUpdateForm">
						<div class="form-group">
							<input type="hidden" value="${rootStockCate.rootStockCateCode }" name="rootStockCateCode" class="form-control" readonly>
							<input type="text" value="${rootStockCate.rootStockCateName }" name="rootStockCateName" class="form-control" id="rootStockCateName" readonly>
							<button type="button" class="btn btn-default" id="UpdateButton">수정입력</button>
							<a class="btn btn-default" href="#" role="button">삭제</a>
						</div>
					</form>
				</td>
			</tr>
			</c:forEach>
		</tbody>				
	</table>
</body>
</html>