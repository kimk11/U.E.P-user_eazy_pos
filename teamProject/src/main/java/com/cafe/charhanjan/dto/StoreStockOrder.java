// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockOrder {
	private String storeStockOrderCode;
	private String storeCode;
	private String storeBusinessCompanyCode;
	private String storeStockReleaseState;
	private String storeStockOrderDate;
	private String storeStockOrderTime;

}
