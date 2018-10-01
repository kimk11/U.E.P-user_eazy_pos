// 2018. 9. 20 이원상
package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreMemberCummute {
	private String storeCummuteCode;
	private String storeCode;
	private String storeMemberCode;
	private String storeCummuteStartTime;
	private String storeCummuteDate;
	private String storeCummuteEndTime;
	private String storeDeadlineCheck;

}
