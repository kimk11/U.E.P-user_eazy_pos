package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class StoreStockReturnCancelRequestList {
	private String storeStockReturnRequestCancelListCode;
	private String storeCode;
	private String storeStockReturnRequestCancelCode;
	private String rootStockCode;
	private int storeStockReturnRequestCount;

}
