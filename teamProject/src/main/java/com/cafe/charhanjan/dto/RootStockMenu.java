// 2018. 9. 21(금) 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class RootStockMenu {
	private String rootStockCode;				// 본사 재고메뉴 
	private String rootStockCateCode;			// 본사 재고카테고리코드
	private String rootStockName;				// 본사 재고이름
	private int rootStockPrice;					// 본사 재고가격
	private String rootStockSalesState;			// 본사 재고판매유무
	private String rootStockRegistrationDate;	// 본사 재고등록날짜
	private String rootStockRegistrationTime;	// 본사 재고등록시간
}
