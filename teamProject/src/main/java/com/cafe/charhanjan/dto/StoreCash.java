// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreCash {
	private String storeCashCode;
	private String storeCode;
	private String storeMemberCode;
	private int storeCashPrice;
	private String storeCashKind;
	private String storeCashMemo;
	private String storeCashDate;
	private String storeCashTime;
	private String storeDeadlineCheck;

}
