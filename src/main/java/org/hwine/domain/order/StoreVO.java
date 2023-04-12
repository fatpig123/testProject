package org.hwine.domain.order;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class StoreVO {

	private String s_code; // 상점 코드 ex) scode1,scode2
	private String s_name; // 상점 이름 ex) 더현대 서울, 더현대 대구
	private String s_description;
	private String s_simple_desc;
	private String s_img_urls;
	private String s_tel_no;
	private String s_address;
}
