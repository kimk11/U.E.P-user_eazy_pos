package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreSalesEndMenuList {
	private String storeSalesEndMenuListCode;
	private String storeCode;
	private String storeSalesEndCode;
	private String rootSalesMenuCode;
	private int storeSalesEndMenuCount;
	private int storeSalesEndMenuDiscount;
	private String storeDeadlineCheck;

}
