package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreCartWaitList {
	private String storeCartWaitListCode;
	private String storeCode;
	private String storeCartWaitCode;
	private String storeSalesMenuCode;
	private int storeCartCount;
	private int storeCartDiscount;

}
