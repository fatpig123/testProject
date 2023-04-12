package org.hwine.service.cart;


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
public class CartServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private CartService service;
	
	/* *Author : 차민수
	 * 기능 : 장바구니 상품 목록 가져오기 테스트
	 * 매개변수 : 사용자 아이디
	 */
	@Test
	public void testGetCarts() {
		service.getList("tkalsfk@naver.com").forEach(item -> log.info(item));
	}
}
