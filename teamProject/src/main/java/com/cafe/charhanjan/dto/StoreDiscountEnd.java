package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreDiscountEnd {
	private String storeDiscountEndListCode;
	private String storeCode;
	private String customerId;
	private String storeSalesEndCode;
	private int storeDiscountEndPrice;
	private String storeDiscountEndDate;
	private String storeDiscountEndTime;
	private String storeDeadlineCheck;

}
