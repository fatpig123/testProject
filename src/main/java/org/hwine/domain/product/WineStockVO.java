package org.hwine.domain.product;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class WineStockVO {
	private String s_code;
	private String sws_stock;
	private String s_name;
}
