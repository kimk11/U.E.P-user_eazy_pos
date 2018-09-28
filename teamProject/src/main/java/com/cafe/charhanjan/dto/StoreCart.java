package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class StoreCart {
	private String storeCartCode;
	private String storeCode;
	private String storeSalesMenuCode;
	private int storeCartCount;
	private int storeCartDiscount;

}
