// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class storeStockOrderCancelRequest {
	private String storeStockOrderCancelCode;
	private String storeCode;
	private String storeBusinessCompanyCode;
	private String storeStockOrderCancelState;
	private String storeStockOrderCancelDate;
	private String storeStockOrderCancelTime;

}
