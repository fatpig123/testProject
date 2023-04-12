package org.hwine.domain.order;

import org.hwine.domain.product.ProductVO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter

public class PickUpOrderItemVO {

	private String po_id; // 픽업 주문 번호
	private String w_id; // 와인 ID
	private int poi_quantity; //주문한 개별 와인 갯수
	
	private ProductVO productDetail; //상품 상세
}
