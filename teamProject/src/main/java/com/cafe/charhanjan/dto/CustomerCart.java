package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class CustomerCart {
	private String customerCartCode;
	private String storeCode;
	private String storeSalesMenuCode;
	private int customerCartCount;
	private int customerCartDiscount;

}
