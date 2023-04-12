package org.hwine.domain.product;

import java.time.LocalDate;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class AdminProductListVO {

	private String w_id;
	private String w_name_kor;
	private int w_price;
	private LocalDate w_register_date;
	private LocalDate w_update_date;
	private int total_wine_sales;
	private int sws_stock;
}
