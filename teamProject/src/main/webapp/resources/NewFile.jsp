<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.orderTh{
	width: 150px;
}
</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('.menu1').attr('price','2500').attr('name','아메리카노');
		$('.menu2').attr('price','3500').attr('name','카페라떼');
		$('.menu3').attr('price','3500').attr('name','카페모카');
		$('.menu4').attr('price','4500').attr('name','아포카토');
		
		var menu1={name:$('.menu1').attr('name'), count:0, price:$('.menu1').attr('price')}
		var menu2={name:$('.menu2').attr('name'), count:0, price:$('.menu2').attr('price')}
		var menu3={name:$('.menu3').attr('name'), count:0, price:$('.menu3').attr('price')}
		var menu4={name:$('.menu4').attr('name'), count:0, price:$('.menu4').attr('price')}

		/* 주문리스트에 새로 추가, 수량 늘리기 함수*/
		var menuAdd = function(i, j){
			j.count+=1;
			if(j.count==1){
				$('.orderList').append("<tr id='menu"+i+"'><td>"+j.name+"</td><td class='count"+i+"'>"+j.count+"</td><td>"+j.price+"</td><td><button class='down"+i+"'>▼</button> <button class='up"+i+"'>▲</button> <button class='remove"+i+"'>삭제</button></td></tr>");
			}else{
				$('.count'+i).html(j.count);
			}
		};
		/* 수량 감소 함수 */
		var menuDown = function(i, j){
			j.count-=1; 
			$('.count'+i).html(j.count);
			if(j.count==0){ $('.orderList').find('#menu'+i).remove(); }
		};
		/* 주문리스트에서 삭제 함수 */
		var menuRemove = function(i, j){ $('.orderList').find('#menu'+i).remove(); j.count=0;}
		
		/* 주문리스트에 추가, 수량 늘리기 버튼 이벤트 */
		$('.menu1').click(function(){ menuAdd(1, menu1);});
		$('.menu2').click(function(){ menuAdd(2, menu2);});
		$('.menu3').click(function(){ menuAdd(3, menu3);});
		$('.menu4').click(function(){ menuAdd(4, menu4);});
		
		/* 수량 감소 버튼 이벤트 */
		$(document).on('click','.down1',function(){ menuDown(1, menu1); })
		$(document).on('click','.down2',function(){ menuDown(2, menu2); })
		$(document).on('click','.down3',function(){ menuDown(3, menu3); })
		$(document).on('click','.down4',function(){ menuDown(4, menu4); })

		/* 수량 증가 버튼 이벤트 */
		$(document).on('click','.up1',function(){  menuAdd(1, menu1); })
		$(document).on('click','.up2',function(){  menuAdd(2, menu2); })
		$(document).on('click','.up3',function(){  menuAdd(3, menu3); })
		$(document).on('click','.up4',function(){  menuAdd(4, menu4); })
		
		/* 주문리스트에서 삭제 버튼 이벤트 */
		$(document).on('click','.remove1',function(){  menuRemove(1, menu1); })
		$(document).on('click','.remove2',function(){  menuRemove(2, menu2); })
		$(document).on('click','.remove3',function(){  menuRemove(3, menu3); })
		$(document).on('click','.remove4',function(){  menuRemove(4, menu4); })

	});

</script>

</head>
<body>
	<div>
		
		<!-- 메뉴리스트 -->
		<div>
			<h1>메뉴리스트</h1>
			<button class="menu1">아메리카노</button>
			<button class="menu2">카페라떼</button>
			<button class="menu3">카페모카</button>
			<button class="menu4">아포카토</button>
		</div>
		
		<!-- 주문리스트 -->
		<div>
			<h1>주문리스트</h1>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th class="orderTh">상품명</th><th class="orderTh">수량</th><th class="orderTh">가격</th><th></th>
					</tr>
				</thead>
				<tbody class="orderList">
	
				</tbody>
			</table>
		</div>
		
	</div>
	
</body>
</html>