package org.hwine.mapper.cart;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
      "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
      "file:src/main/webapp/WEB-INF/spring/security-context.xml",
      "file:src/main/webapp/WEB-INF/spring/tiles-define.xml"})
@Log4j
@WebAppConfiguration
public class CartMapperTests {

	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	/* *Author : 차민수
	 * 기능 : 장바구니 상품 목록 가져오기 테스트
	 * 매개변수 : 사용자 아이디
	 */
	@Test
	public void testGetCarts() {
		mapper.getCart("tkalsfk@naver.com").forEach(item -> log.info(item));
	}
	
	/* *Author : 차민수
	 * 기능 : 장바구니 상품 수량 조절
	 * 매개변수 : 사용자 아이디, 상품 번호, 상품 수량 
	 * 기타 : 넘어온 수량만큼 기존 수량에 추가로 더해줌  
	 */
	/*
	 * @Test public void testUpdateCarts() { int result =
	 * mapper.cw_quantityUpdate("tkalsfk@naver.com", "168804", 1); log.info(result);
	 * }
	 */
	
	/* *Author : 차민수
	 * 기능 : 사용자의 아이디와 상품 번호를 받아 장바구니내에 동일 상품이 존재하는지 여부 판단
	 * 매개변수 : 사용자 아이디, 상품 번호   
	 */
	/*
	 * @Test public void testIsExist() {
	 * log.info(mapper.isExist("tkalsfk@naver.com", "168804")); }
	 */
	
	/* *Author : 차민수
	 * 기능 : 사용자의 아이디, 상품 번호, 상품 수량을 받아 장바구니에 추가
	 * 매개변수 : 사용자 아이디, 상품 번호   
	 */
	/*
	 * @Test public void testIsert() {
	 * log.info(mapper.insertCart("tkalsfk@naver.com", "161072", 2)); }
	 */
}
