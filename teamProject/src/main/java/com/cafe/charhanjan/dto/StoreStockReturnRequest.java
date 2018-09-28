package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockReturnRequest {
	private String storeStockReturnRequestCode;
	private String storeCode;
	private String storeStockWarehousingEndDate;
	private String storeStockWarehousingEndTime;
	private String storeStockReturnRequestReason;
	private String storeStockReturnRequestDate;
	private String storeStockReturnRequestTime;
	private String storeStockReturnHandlingState;
	private String storeStockReturnHandlingResult;
}
