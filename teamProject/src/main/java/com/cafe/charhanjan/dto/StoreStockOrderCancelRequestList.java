package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockOrderCancelRequestList {
	private String storeStockOrderCancelListCode;
	private String storeCode;
	private String storeStockOrderCancelCode;
	private String rootStockCode;
	private String storeStockOrderCount;
}
