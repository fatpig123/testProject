package org.hwine.domain.cart;

import org.hwine.domain.order.StoreVO;

import lombok.Data;

@Data
public class StockVO {

	private String s_code;
	private String w_id;
	private int sws_stock;
	
	private StoreVO store;
}
