package org.hwine.service.cart;

import java.util.List;

import org.hwine.domain.cart.CartVO;
import org.hwine.mapper.cart.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service

/*
 * *Author : 차민수 기능 : 장바구니 서비스 및 내부 로직 구현
 */
public class CartServiceImpl implements CartService {

	// CartMapper 의존성 주입
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;

	/*
	 * Author : 차민수
	 * 기능 : 장바구니 상품 목록을 불러옴 매개변수 : 사용자 아이디
	 */
	@Override
	public List<CartVO> getList(String m_email) {

		log.info("getCartList");
		return mapper.getCart(m_email);

	}

	/* *Author : 차민수
	 * 기능 : 장바구니 내에 상품존재 여부에 따라, 장바구니에 추가 혹은 수량 변경
	 * 매개변수 : 사용자 아이디, 상품 아이디, 수량
	 * 기타 : 상품이 존재하는지 여부를 판단하는 쿼리와 상품 추가 혹은 수량 변경하는 쿼리가
	 * 		  일련의 과정으로 처리되어야해서 트랜잭션 어노테이션을 활용
	 */
	@Transactional
	@Override
	public int isExist(String m_email, String w_id) {
		int check = mapper.isExist(m_email, w_id);
		int result = 0;
		if (check == 0) {
			log.info("Product : " + w_id + " is not Exist");
			result = mapper.insertCart(m_email, w_id);
			log.info("장바구니 등록");
			log.info("서비스 결과 : " + result);
			return result;
		} else {
			log.info("Product : "+ w_id +" is Exist");
			log.info("서비스 결과 : " + result);
			return result;
		}
	}
	
	/* *Author : 차민수
	 * 기능 : 장바구니 상품 선택 삭제
	 * 매개변수 : 사용자 아이디, 상품 아이디 목록 
	 * 기타 : 상품 아이디가 여러 개인 경우, 한번에 처리하기위해 트랜잭션 어노테이션 활용
	 */
	@Transactional
	@Override
	public int removeCart(String mem_id, List<String> w_id)  {
		int result = 0;
		for(String id : w_id) {
			result +=mapper.removeCart(mem_id, id);
		}
		return result;
	}
	
	/* *Author : 차민수
	 * 기능 : 장바구니 상품 전체 삭제
	 * 매개변수 : 사용자 아이디
	 */
	@Override
	public int removeCartAll(String mem_id) {
		return mapper.removeCartAll(mem_id);
	}
}
