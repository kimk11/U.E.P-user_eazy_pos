package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreOpenTotalSales {
	private String storeOpenTotalSalesCode;
	private String storeCode;
	private int storeOpenTotalSalesPrice;
	private int storeOpenTotalSalesSupplyPrice;
	private int storeOpenTotalSalesSurtaxPrice;
	private int storeOpenTotalSalesDiscount;
	private int storeOpenTotalSalesPrimeCost;
	private int storeOpenTotalSalesPurchasePay;
	private int storeOpenTotalSalesNetsales;
	private int storeOpenTotalSalesCash;
	private int storeOpenTotalSalesCard;
	private int storeOpenTotalOfflineOrderVisited;
	private int storeOpenTotalOnlineOrderVisited;
	private String storeOpenTotalSalesDate;
	private String storeOpenTotalSalesTime;

}
