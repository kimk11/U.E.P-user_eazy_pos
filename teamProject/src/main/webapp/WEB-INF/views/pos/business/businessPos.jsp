<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/resources/css/businessPos/businessPos.css" rel="stylesheet" type="text/css">
<script type="text/javascript" ></script>
<style>
body {
	background-image:
		url("${pageContext.request.contextPath}/resources/images/businessPos/back.jpg");
	background-size: 100%;
}

/*제조내역*/

h1{
    background: linear-gradient(to right, #e55d87, #5fc3e4);
    color: white;
    margin: 0;
    padding: 10px 20px;
    text-transform: uppercase;
    font-size: 24px;
    font-weight: 400;
}

.fa-plus-square {
    float: right;
    cursor: pointer;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1);
    transition: all ease .3s;
}

.fa-plus-square:hover {
  box-shadow: 0 0px 0px rgba(0, 0, 0, 0.0);
}

input {
    font-size: 18px;
    background: #f7f7f7;
    width: 100%;
    padding: 13px 13px 13px 20px;
    box-sizing: border-box;
    color: #737373;
    border: 3px solid rgba(0, 0, 0, 0);
  
}

input:focus {
    background: white;
    border: 3px solid #5fc3e4;
    outline: none;
}

ul {
    list-style: none;
    margin: 0;
    padding: 0;
  
}

li {
    background: linear-gradient(to right, #e55d87, #5fc3e4);
    /* background: linear-gradient(0deg, rgba(126, 126, 126, 1) 0%, rgba(71, 71, 71, 1) 100%); */
    height: 40px;
    line-height: 40px;
    color: #fff;
  
}

/* li:nth-child(2n){
    background: linear-gradient(180deg, rgba(115, 115, 115, 1) 0%, rgba(71, 71, 71, 1) 100%);
} */

.li-minus {
    background: #5fc3e4;
    height: 40px;
    margin-right: 20px;
    text-align: center;
    color: #fff;
    width: 0;
    display: inline-block;
    transition: 0.3s linear;
    opacity: 0;
}

 li:hover .li-minus {
    width: 40px;
    opacity: 1.0;
}


#container {
    width: 360px;
    margin: 100px auto;
/*     border: 2px solid gray; */
    background: #f7f7f7;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1);
    
}

.completed {
    color: black;
    text-decoration: line-through;
}

</style>
<title>영업관리</title>
</head>
<body>
	<table width="100%" height="695" border="0" cellspacing="0">
		<tr>
			<!-- 로고 -->
			<td height="80" colspan="4"><a href="#"><img
					src="${pageContext.request.contextPath}/resources/images/charLogo.png"
					width="172" height="95" border="0" /></a></td>
		</tr>
		<tr>
			<!-- 카트(고객이 상품 주문 시 주문 목록에 담아 계산) -->
			<td width="650" height="238" bgcolor="#FFFFFF">
				<table width="650" border="0" align="center" cellspacing="0">
					<tr class="cart">
						<td width="8%" height="28" bgcolor="#6BD2FA">No</td>
						<td width="19%" bgcolor="#6BD2FA">메뉴명</td>
						<td width="19%" bgcolor="#6BD2FA">카테고리</td>
						<td width="12%" bgcolor="#6BD2FA">수량</td>
						<td width="17%" bgcolor="#6BD2FA">금액</td>
						<td width="25%" bgcolor="#6BD2FA">할인금액</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
						<td height="20" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
				</table>
			</td>
			<td width="0%" rowspan="4">&nbsp;</td>
			<td width="36%">&nbsp;</td>
			
			
			<!-- 주문내역 -->
			<td width="22%" rowspan="2">
			</td>
		</tr>
		<tr>
			<!-- 카트 관련 버튼 (선택, 삭제, 수량 및 금액 변경 등)-->
			<td height="61" align="center" bgcolor="#FFFFFF"><a href="#"><img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn_01.png"
					width="68" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn_02.png"
					width="68" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn_03.png"
					width="69" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn_04.png"
					width="67" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn1_01.png"
					width="68" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn1_02.png"
					width="69" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn1_03.png"
					width="67" height="66" border="0" /> <img
					src="${pageContext.request.contextPath}/resources/images/businessPos/btn1_04.png"
					width="67" height="66" border="0" /></a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td height="5">&nbsp;</td>
			<td height="5">&nbsp;</td>
			<td height="5">&nbsp;</td>
		</tr>
		<tr>
			<td height="217" bgcolor="#D1D1D1">&nbsp;</td>
			<td height="217">&nbsp;</td>
			<td height="217">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="4">
				<div id="buttons">
					<a href="#" class="btn orange">HOME</a>
					<!-- 포스  메인 리스트 -->
				</div>
				<div id="buttons">
					<a href="#" class="btn yellow">매장정보</a>
					<!-- 포스 영업관리 목록  -->
				</div>
			</td>
		</tr>
	</table>


<script type="text/javascript"></script>
</body>
</html>