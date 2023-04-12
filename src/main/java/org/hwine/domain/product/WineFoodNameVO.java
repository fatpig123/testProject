package org.hwine.domain.product;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class WineFoodNameVO {

	private String wf_name;
	private String wf_img_url;
	private String wfs_name;
	
	//상품 재고 정보
	private List<WineStockVO> stockList;
}
