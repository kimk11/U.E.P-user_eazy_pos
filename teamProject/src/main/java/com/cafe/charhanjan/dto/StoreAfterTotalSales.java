package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreAfterTotalSales {
	private String storeAfterTotalSalesCode;
	private String storeCode;
	private int storeAfterTotalSalesPrice;
	private int storeAfterTotalSalesSupplyPrice;
	private int storeAfterTotalSalesSurtaxPrice;
	private int storeAfterTotalSalesDiscount;
	private int storeAfterTotalSalesPrimeCost;
	private int storeAfterTotalSalesPurchasePay;
	private int storeAfterTotalSalesNetsales;
	private int storeAfterTotalSalesCash;
	private int storeAfterTotalSalesCard;
	private int storeAfterTotalOfflineOrderVisited;
	private int storeAfterTotalOnlineOrderVisited;
	private int storeAfterTotalStaffPay;
	private String storeOpenTotalSalesDate;
	private String storeOpenTotalSalesTime;
	private String storeAfterTotalSalesDate;
	private String storeAfterTotalSalesTime;

}
