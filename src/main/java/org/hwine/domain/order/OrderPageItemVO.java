package org.hwine.domain.order;

import org.hwine.domain.product.ProductVO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter

public class OrderPageItemVO {

	private String w_id;
	private int quantity;
	
	private ProductVO productDetail;
}
