package org.hwine.domain.cart;

import java.util.Date;

import org.hwine.domain.product.ProductVO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class CartVO {
	
	private String m_email;
	private String w_id;
	private Date cw_register_date;
	
	private ProductVO productDetail;
	
}
