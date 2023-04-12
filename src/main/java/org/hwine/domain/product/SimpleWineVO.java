package org.hwine.domain.product;

import lombok.Data;

@Data
public class SimpleWineVO {
	private String name;
	private String desc;
	private String w_img;
	private String w_id;
	private int w_price;
	private String mainDesc;
	private String a_date;
	private String a_name;
	private String a_desc;
}
