<!-- 2018. 9. 21(금) 이원상	 root_stock_cate_list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 카테고리 리스트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script>
$(document).ready(function(){
	// 등록 button 클릭 이벤트
    $('#insertButton').one('click', function(){
   	 	let insertButtonClickNumber = 0;
        const form = $('<form/>',{
            id:'rootStockCateInsertForm'
            ,class:'form-inline'
            ,action:'${pageContext.request.contextPath}/homePage/admin/stock/rootStockCateInsertAction'
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
 	var size = $("input[name='rootStockCateCode']").length;						// rootStockCateCode의 name속성을 가진 태그의 길이
	var array = new Array(size);												// 위 길이 만큼 배열 생성
	for(i=0; i<size; i++){														// 배열의 길이만큼 반복
		array[i] =  $("input[name='rootStockCateCode']").eq(i).attr("value");	// 생성한 배열 각각의 인덱스에 rootStockCateCode name속성을 가진 value를 대입
		$('#'+array[i]).on('click', function(){									// 배열의 담긴 값의 ID를 가진 태그(버튼)를 클릭시 발생하는 이벤트	
			let selectBtn = $(this);											// 선택한 버튼을 변수에 대입
// 			alert(selectBtn.attr('check'));
			if(selectBtn.attr('check')=='true'){
				selectBtn.attr('check','false');
				console.log(selectBtn.attr('check')+'<-- 버튼의 체크속성 값');
				let rootStockCateCode = selectBtn.prev().prev().val();
				let rootStockCateName = selectBtn.prev().val();
				console.log(rootStockCateCode+'<--본사재고카테고리코드');
				console.log(rootStockCateName+'<--본사재고카테고리이름');
				$.ajax({
					url:'${pageContext.request.contextPath}/homePage/admin/stock/rootStockCateUpdateAction'
					,type:'POST'
					,data:{rootStockCateCode:rootStockCateCode,rootStockCateName:rootStockCateName}
					,dataType:'json'
					,success:function(data){
						console.log('성공');
					}
					,error:function(){
						console.log('실패');
					}
				});
				//selectBtn.parent().parent().submit();							// 버튼의 부모태그의 부모태그(폼) submit
			};
			if(selectBtn.attr('check')==undefined || selectBtn.attr('check')=='false'){
				console.log(selectBtn.attr('check')+'<-- 버튼의 체크속성 값');
				selectBtn.attr('check','true');									// 버튼의 체크속성을 'true'로 변경
				let CateName = selectBtn.prev();								// 버튼의 이전의 태그를 변수에 대입
				CateName.prop('readonly', false);								// 이전태그(input)의 readonly 속성을 false로 변환
				CateName.focus();												// input태그에 커서를 위치시킴
				selectBtn.text('수정완료');											// 버튼의 텍스트 내용을 변경함											
			};
 		});
		$("input[name='rootStockCateCode']").eq(i).next().on('blur', function(){
 			console.log('blur function');
			$(this).prop('readonly', true);
 			let selectBtn = $(this).next();
 			selectBtn.text('수정하기');
		});	
	}; 
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
							<input type="text" value="${rootStockCate.rootStockCateCode }" class="form-control" readonly>
						</div>
					</form>
				</td>
				<td>
					<form class="form-inline" id="rootStockCateUpdateForm" action="${pageContext.request.contextPath}/homePage/admin/stock/rootStockCateInsertAction" method="post">
						<div class="form-group">
							<input type="hidden" value="${rootStockCate.rootStockCateCode }" name="rootStockCateCode" class="form-control" id="rootStockCateCode" readonly>
							<input type="text" value="${rootStockCate.rootStockCateName }" name="rootStockCateName" class="form-control" id="rootStockCateName" readonly>
							<button type="button" class="btn btn-default" id="${rootStockCate.rootStockCateCode }">수정하기</button>
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