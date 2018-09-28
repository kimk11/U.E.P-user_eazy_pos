package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class StoreStockReturnEndList {
	private String storeStockReturnEndListCode;
	private String storeCode;
	private String storeStockReturnEndCode;
	private String rootStockCode;
	private int storeStockReturnEndCount;
	private String storeDeadlineCheck;

}
