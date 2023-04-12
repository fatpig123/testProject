package org.hwine.domain.product;

import java.util.Arrays;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class filteredProductVO {

	private Integer w_price1;
	private Integer w_price2;
	private String[] w_type;
	private String[] wr_nation_kor;
	private String[] wv_variety_kor;
	private Integer w_sweetness;
	private Integer w_acidity;
	private Integer w_body;
	private Integer w_tannin;
	
	private int startIdx;
	private int endIdx;
	private String sort;
	
}
