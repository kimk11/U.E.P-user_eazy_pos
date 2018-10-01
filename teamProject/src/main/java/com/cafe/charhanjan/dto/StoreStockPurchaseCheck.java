// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockPurchaseCheck {
	private String storeStockPurchaseCheckCode;
	private String storeCode;
	private String storeBusinessCompanyCode;
	private String storeStockPurchaseReceiveDate;
	private String storeStockPurchaseReceiveTime;

}
