package org.hwine.domain.product;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MainProductVO {

	private String w_id;
	private int cnt;
	private int avg_rating;
	private String w_name_kor;
	private String w_name;
	private int w_price;
	private String wr_nation_kor;
	private String w_img;
	private LocalDateTime w_register_date;
}
