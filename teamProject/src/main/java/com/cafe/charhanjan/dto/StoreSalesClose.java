// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreSalesClose {
	private String storeCloseCode;
	private String 	storeCode;
	private String storeMemberCode;
	private String storeCloseMemo;
	private String storeCloseDate;
	private String storeCloseTime;
}
