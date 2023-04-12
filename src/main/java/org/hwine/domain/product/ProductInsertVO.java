package org.hwine.domain.product;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class ProductInsertVO {
	
	private String w_id;
	private String w_name_kor;
	private String w_name ;
	private String w_img;
	private int w_price;
	
	private String w_ferment;
	private String w_temperature;
	private int w_volume ;
	private String w_type;
	
	private String wv_variety;
	private String wv_variety_kor; 
	private String wr_nation;
	private String wr_nation_kor;
	private String wr_area;
	private String wr_area_kor;
	
	private String wm_maker_kor;
	private String wm_maker;
	
	private String w_alcohol;
	private int w_sweetness;
	private int w_acidity;
	private int w_body;
	private int w_tannin;
	
	private String wa_name;
	private String wa_img_url;
	private String[] was_name;
	private String wf_name;
	private String wf_img_url;
	private String[] wfs_name;
	
	private String s_code;
	private int sws_stock;
	private String s_name;

}
