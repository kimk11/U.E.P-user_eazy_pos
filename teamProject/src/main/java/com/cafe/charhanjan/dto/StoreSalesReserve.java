// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreSalesReserve {
	private String storeReserveCode;
	private String storeCode;
	private String storeMemberCode;
	private int storeReserveAmount;
	private String storeReserveRegistrationDate;
	private String storeReserveRegistrationTime;

}
