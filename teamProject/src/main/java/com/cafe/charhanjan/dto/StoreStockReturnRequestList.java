package com.cafe.charhanjan.dto;

import lombok.Data;

@Data

public class StoreStockReturnRequestList {
	private String store_stock_return_request_list_code;
	private String store_code;
	private String store_stock_return_request_code;
	private String root_stock_code;
	private int store_stock_return_request_count;

}
