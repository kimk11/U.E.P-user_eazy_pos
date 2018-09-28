package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockOrderList {
	private String storeStockOrderListCode;
	private String storeCode;
	private String storeStockOrderCode;
	private String rootStockCode;
	private int storeStockOrderCount;
}
