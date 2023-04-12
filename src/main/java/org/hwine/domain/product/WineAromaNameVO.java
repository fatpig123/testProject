package org.hwine.domain.product;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class WineAromaNameVO {

	private String wa_name;
	private String was_name;
	private String wa_img_url;

	//음식 이름
	private List<WineFoodNameVO> foodNameList;
}
