package org.hwine.domain.product;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
public class DecantingBookVO {
	
	private String db_id;
	private String db_content;
	private int db_rating;
	private int db_sweetness;
	private int db_acidity;
	private int db_body;
	private int db_tannin;
	private String db_register_date;
	private String db_update_date;
	private int db_hide;
	
	private String w_id;
	private String w_name;
	private String w_name_kor;
	private String w_price;
	private String w_img;
	private int w_volume;
	private String wm_maker;
	private String wr_nation;
	private String wr_area;
	private String w_alcohole;
	private String w_type;
	private String wv_variety;
	
	private String f_id;
	private String f_status;
	
	private String m_email;
	private String m_nickname;
	private int m_grade;
	private String m_profile_img;
	private int f_cnt;
	private int cnt;
	
}
