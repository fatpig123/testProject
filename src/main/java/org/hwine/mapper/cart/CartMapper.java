package org.hwine.mapper.cart;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hwine.domain.cart.CartVO;

/* *Author : 차민수
 * 기능 : 장바구니에 추가, 수량 수정, 삭제, 읽기 등 필요한 기능 선언 
 */
public interface CartMapper {
	
	// 장바구니 상품 목록을 불러옴, 매개변수 : 사용자 아이디
	List<CartVO> getCart(@Param("m_email") String m_email);
	
	// 장바구니에 중복 상품 추가 시 수량 변경, 매개변수 : 사용자 아이디, 상품 아이디
	int cw_quantityUpdate(@Param("m_email")String m_email, @Param("w_id") String w_id);
	
	// 장바구니에 상품 추가 시 존재여부 판단, 매개변수 : 사용자 아이디, 상품 아이디
	int isExist(@Param("m_email") String m_email, @Param("w_id") String w_id);
	
	// 장바구니에 상품 추가, 매개변수 : 사용자 아이디, 상품 아이디, 수량 
	int insertCart(@Param("m_email") String m_email, @Param("w_id") String w_id);
	
	// 장바구니에 존재하는 상품 삭제, 매개변수 : 사용자 아이디, 상품 아이디  
	int removeCart(@Param("m_email") String m_email, @Param("w_id") String w_id);
		
	// 장바구니 전체 비우기, 매개변수 : 사용자 아이디
	int removeCartAll(@Param("m_email") String m_email);

}
