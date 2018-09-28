package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreCashReceipt {
	private String storeCashReceiptCode;
	private String storeCode;
	private String storePaymentEndCode;
	private String storeCashReceiptMethod;
	private String storeCashReceiptNumMethod;
	private String storeCashReceiptNum;
	private String storeCashReceiptRegistrationDate;
	private String storeCashReceiptRegistrationTime;
	private String storeDeadlineCheck;

}
