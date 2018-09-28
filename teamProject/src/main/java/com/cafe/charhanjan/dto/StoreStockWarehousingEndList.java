package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreStockWarehousingEndList {
	private String storeStockWarehousingEndListCode;
	private String storeCode;
	private String storeStockWarehousingEndCode;
	private String rootStockCode;
	private int storeStockWarehousingEndCount;
	private String storeDeadlineCheck;
}
