package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class StoreStockReturnRequestCancel {
	private String storeStockReturnRequestCancelCode;
	private String storeCode;
	private String storeStockWarehousingEndDate;
	private String storeStockWarehousingEndTime;
	private String storeStockReturnRequestCancelReason;
	private String storeStockReturnRequestDate;
	private String storeStockReturnRequestTime;
	private String storeStockReturnRequestCancelDate;
	private String storeStockReturnHandlingCancelState;

}
