package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class RootCart {
	private String rootCartCode;
	private String storeCode;
	private String rootStockCode;
	private int rootStockCartCount;
}
