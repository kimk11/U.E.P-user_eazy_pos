// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStock {
	private String storeStockCode;
	private String storeCode;
	private String storeBusinessCompanyCode;
	private String storeStockCateCode;
	private String storeStockName;
	private int storeStockCount;
	private int storeStockPrice;
	private String storeStockRegistrationDate;
	private String storeStockRegistrationTime;

}
