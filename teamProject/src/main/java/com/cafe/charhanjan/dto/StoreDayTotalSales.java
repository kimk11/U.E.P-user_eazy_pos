package com.cafe.charhanjan.dto;

import lombok.Data;

@Data
public class StoreDayTotalSales {
	private String storeDayTotalSalesCode;
	private String storeCode;
	private int storeDayTotalSalesPrice;
	private int storeDayTotalSalesSupplyPrice;
	private int storeDayTotalSalesSurtaxPrice;
	private int storeDayTotalSalesDiscount;
	private int storeDayTotalSalesPrimeCost;
	private int storeDayTotalSalesPurchasePay;
	private int storeDayTotalSalesNetsales;
	private int storeDayTotalSalesCash;
	private int storeDayTotalSalesCard;
	private int storeDayTotalSalesStaffPay;
	private String storeDayTotalSalesDay;
	private String storeDayTotalSalesDayDate;

}
