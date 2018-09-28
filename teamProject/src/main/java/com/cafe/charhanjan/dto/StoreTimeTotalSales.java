package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreTimeTotalSales {
	private String storeTimeTotalSalesCode;
	private String storeCode;
	private int storeTimeTotalSalesNetsales;
	private int storeTimeTotalSalesCash;
	private int storeTimeTotalSalesCard;
	private String storeTimeTotalSalesTime;
	private String storeTimeTotalSalesDate;

}
