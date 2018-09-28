package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreSalesEnd {
	private String storeSalesEndCode;
	private String storeCode;
	private int storeSalesEndPrice;
	private int storeSalesEndDiscount;
	private String storeSalesEndDate;
	private String storeSalesEndTime;
	private String storeDeadlineCheck;

}
