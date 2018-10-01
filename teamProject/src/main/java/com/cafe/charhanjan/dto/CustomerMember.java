// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class CustomerMember {
	private String customerId;
	private String customerPw;
	private String customerName;
	private String customerPhone;
	private String customerGender;
	private String customerSecondPw;
	private int customerMileage;
	private String customerJoinDate;
	private String customerJoinTime;

}
