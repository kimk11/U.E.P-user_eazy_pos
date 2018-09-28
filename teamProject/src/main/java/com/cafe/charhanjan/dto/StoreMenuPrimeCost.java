package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreMenuPrimeCost {
	private String storePrimeCostCode;
	private String storeStockCode;
	private String storeSalesMenuCode;
	private String storeCode;
	private int storeStockWeight;
	private int storeStockPrimeCost;
}
