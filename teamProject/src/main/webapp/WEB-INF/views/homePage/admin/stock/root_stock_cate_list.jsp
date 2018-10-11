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
// 등록 button 클릭 이벤트(DB등록)
$(document).one('click', '#rootStockCateInsertButton', function(){						// 동적 태그 생성시 태그를 읽기 위해 $(document)선택자사용, one함수 1회만 실행
	let insertBtn = $(this);															// 위 선택한 태그를 변수에 대입
	let insertRootStockCateName = insertBtn.prev().val();								// 등록버튼 이전 태그의 value값을 변수에 대입		 
	console.log(insertRootStockCateName+'<--본사재고카테고리이름');								
	$.ajax({
		url:'${pageContext.request.contextPath}/homePage/admin/stock/rootStockCateInsertAction'
		,type:'post'																	// 전송 방식
		,data:{rootStockCateName:insertRootStockCateName}								// 서버로 보내는 데이터
  		,dataType:'json'																// 서버에서 보내는 데이터 타입
		,success:function(){
			console.log(${data});
			$('#listButton').trigger('click');
		}
		,error:function(){
			console.log('실패');
			$('#listButton').trigger('click');
		}
	});	
	$('#listButton').trigger('click');
});

var result = new Array();																// 컨트롤러(AdminHomePageController)에서 모델값을 받을 배열 선언
<c:forEach var="list"  items="${list}">													// 배열의 길이만큼 반복
	var json = new Object();															// 모델에서 받아온 값을 객체에 담으 준비
	json.rootStockCateCode = "${list.rootStockCateCode}";								// 객체에 담기
	json.rootStockCateName = "${list.rootStockCateName}";								// 객체에 담기
	result.push(json);																	// 객체를 배열에 삽입
</c:forEach>

// 수정 button 클릭 이벤트
for(i=0; i<result.length; i++){															// 받아온 리스트를 담은 배열의 길이만큼 반복 
	$(document).on('click', "#"+result[i].rootStockCateCode, function(){				// 배열의 담긴 값의 ID를 가진 태그(버튼)를 클릭시 발생하는 이벤트
																						// 동적으로 만들어진 태그를 읽기위해 (document).on을 사용
		var selectBtn = $(this);														// 선택한 버튼을 변수에 대입
		if(selectBtn.attr('check')=='true'){											// 선택한 버튼의 체크 속성이 'true'일 경우
			selectBtn.attr('check','false');											// 선택한 버튼의 체크 속성을 'false'로 변경
			selectBtn.attr('updateCheck', 'true');										// 선택한 버튼의 업테이트 체크 버튼을 'true'로 변경
			console.log(selectBtn.attr('check')+'<-- 버튼의 체크속성 값');
			let rootStockCateCode = selectBtn.prev().prev().val();						// 선택한 버튼의 이전,이전 태그의 value값을 변수에 대입
			let rootStockCateName = selectBtn.prev().val();								// 선택한 버튼의 이전 태그의 value값을 변수에 대입
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
		};
		if(selectBtn.attr('check')==undefined || selectBtn.attr('check')=='false'){		// 선택한 버튼의 체크속성이 undefined이거나 false일때
			if(selectBtn.attr('updateCheck')=='true'){									// 선택한 버튼의 업데이트 체크 속성이 'true'일때
				selectBtn.next().after($('<span/>',{									
					text:'수정되었습니다.'
				}));
			}else{
				selectBtn.attr('check','true');											// 버튼의 체크속성을 'true'로 변경
				let CateName = selectBtn.prev();										// 버튼의 이전의 태그를 변수에 대입
				CateName.prop('readonly', false);										// 이전태그(input)의 readonly 속성을 false로 변환
				CateName.focus();														// input태그에 커서를 위치시킴
				selectBtn.text('수정완료');												// 버튼의 텍스트 내용을 변경함	
			};
		};
	});
};																						// 반복문 종료
// blur 이벤트
$(document).on('blur', "input[name=rootStockCateName]" ,function(){
		console.log('blur function');
		console.log($(this).attr("value"));
	$(this).prop('readonly', true);
		let selectBtn = $(this).next();
		selectBtn.text('수정하기');
});

$(document).ready(function(){
	// 등록 button 클릭 이벤트(등록창 추가)
    $('#insertButton').one('click', function(){
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
            ,name:'insertRootStockCateName'
        });
        const button = $('<button/>',{
            type:'button'
            ,class:'btn btn-default'
            ,id:'rootStockCateInsertButton'
            ,text:'등록'
        });
        form.insertAfter('table');
        div.prependTo(form);
        label.appendTo(div);
        input.insertAfter(label);
        button.insertAfter(input);
        console.log(button.attr('type'));
        console.log(button.attr('class'));
        console.log(button.attr('id'));
    });
	//리스트 button클릭 이벤트
	$('#listButton').on('click', function(){
		$.ajax({
			url:'${pageContext.request.contextPath}/homePage/admin/stock/getRootStockCateList'
			,type:'GET'
			,dataType:'json'									// 서버에서 보내는 데이터 타입
			,success:function(list){
				$('tbody').empty();
				$(list).each(function(index,list){
					const listTrTag = $('<tr/>');
					const listTd1Tag = $('<td/>');
	
					const listTd1TagForm = $('<form>',{
						class:'form-inline'
					});
					const listTd1TagDiv = $('<div>',{
						class:'form-group'
					});
					const listTd1TagInput = $('<input>',{
						type:'text'
						,value:list.rootStockCateCode
						,class:'form-control'
						,readonly:true
					});
					
					const listTd2Tag = $('<td/>');
					const listTd2TagForm = $('<form>',{
						class:'form-inline'
						,id:'rootStockCateUpdateForm'
						,action:'${pageContext.request.contextPath}/homePage/admin/stock/rootStockCateInsertAction'
						,method:'post'
					});				
					const listTd2TagDiv = $('<div>',{
						class:'form-group'
					});
					const listTd2TagInput1 = $('<input>',{
						type:"hidden"
						,value:list.rootStockCateCode
						,name:'rootStockCateCode'
						,class:'form-control'
						,readonly:'true'					
					});
					const listTd2TagInput2 = $('<input>',{
						type:'text'
						,value:list.rootStockCateName
						,name:'rootStockCateName'
						,class:'form-control'
						,readonly:'true'	
					});
					const listTd2TagButton = $('<button>',{
						type:'button'
						,class:'btn btn-default'
						,id:list.rootStockCateCode
						,text:'수정하기'
					});					
					const listTd2TagAnchor = $('<a>',{
						class:'btn btn-default'
						,href:'#'
						,role:'button'
						,text:'삭제'
					});
	
					listTrTag.append(listTd1Tag);
					listTd1Tag.append(listTd1TagForm);
					listTd1TagForm.append(listTd1TagDiv);
					listTd1TagDiv.append(listTd1TagInput);
					
					listTrTag.append(listTd2Tag);
					listTd2Tag.prepend(listTd2TagForm);
					listTd2TagForm.prepend(listTd2TagDiv);
					listTd2TagDiv.append(listTd2TagInput1);
					listTd2TagDiv.append(listTd2TagInput2);
					listTd2TagDiv.append(listTd2TagButton);
					listTd2TagDiv.append(listTd2TagAnchor);
					$('tbody').append(listTrTag);
				});	
			}
			, error: function(){
				console.log('error');
			}
		});	
	});
	$('#listButton').trigger('click');
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
		<input class="btn btn-default" type="button" id="listButton" value="카테고리 목록">
	</div>
	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th>카테고리 코드</th>
				<th>카테고리 명</th>
			</tr>
		</thead>
		<tbody>
<%-- 			<c:forEach var="rootStockCate" items="${list}">
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
			</c:forEach> --%>
		</tbody>				
	</table>
</body>
</html>