package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockPurchaseCheckList {
	private String storeStockPurchaseCheckListCode;
	private String storeCode;
	private String storeStockPurchaseCheckCode;
	private String rootStockCode;
	private int storeStockPurchaseCheckCount;
}
