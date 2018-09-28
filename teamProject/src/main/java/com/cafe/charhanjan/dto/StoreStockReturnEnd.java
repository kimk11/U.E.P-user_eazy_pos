package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockReturnEnd {
	private String storeStockReturnEndCode;
	private String storeCode;
	private String storeStockWarehousingEndDate;
	private String storeStockWarehousingEndTime;
	private String storeStockReturnRequestReason;
	private String storeStockReturnEndDate;
	private String storeStockReturnEndTime;
	private String storeDeadlineCheck;
}
