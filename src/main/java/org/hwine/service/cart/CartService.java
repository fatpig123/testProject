package org.hwine.service.cart;

import java.util.List;

import org.hwine.domain.cart.CartVO;

/* *Author : 차민수
 * 기능 : 장바구니 서비스에서 활용될 메서드 선언  
 */
public interface CartService {

	// 장바구니 상품 목록을 불러옴, 매개변수 : 사용자 아이디
	public List<CartVO> getList(String m_email);
	
	// 장바구니에 담는 상품 존재여부에 따라, 장바구니에 넣거나 혹은 수량 변경
	// 매개변수 : 사용자 아이디, 상품 아이디, 상품 수량
	public int isExist(String m_email, String w_id);
	
	// 장바구니 선택상품 삭제, 매개변수 : 사용자 아이디, 상품 아이디 리스트  	
	public int removeCart(String m_email, List<String> w_id) ;
	
	// 장바구니 전체상품 삭제, 매개변수 : 사용자 아이디
	public int removeCartAll(String m_email);

}
