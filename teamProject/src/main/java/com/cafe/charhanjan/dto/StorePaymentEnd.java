package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StorePaymentEnd {
	private String storePaymentEndCode;
	private String storeCode;
	private String storeSalesEndCode;
	private String customerId;
	private String storeDiscountEndListCode;
	private int storePaymentPrice;
	private int storePaymentCard;
	private int storePaymentCash;
	private int storePaymentSaveMileage;
	private String storePaymentOrderMethod;
	private String storePaymentDate;
	private String storePaymentTime;
	private String storeDeadlineCheck;

}
