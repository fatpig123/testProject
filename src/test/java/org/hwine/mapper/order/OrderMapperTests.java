package org.hwine.mapper.order;


import org.hwine.mapper.member.MemberMapper;
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
		"file:src/main/webapp/WEB-INF/spring/tiles-define.xml" })
@Log4j
@WebAppConfiguration
public class OrderMapperTests {

	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mMapper;

	/*
	 * *Author : 차민수 기능 : 장바구니에서 주문할 상품 정보 가져오기 테스트 매개변수 : 사용자 아이디, 상품 정보
	 */
	@Test
	public void testGetCarts() {
		log.info(mapper.orderProducts("162844"));
	}

	/*
	 * *Author : 차민수 기능 : 주문서 페이지에 로그인한 유저 정보 가져오기 테스트 매개변수 : 사용자 아이디
	 */
	@Test
	public void testGetMember() {
		log.info(mapper.orderUser("tkalsfk@naver.com"));
	}

	/*
	 * *Author : 차민수 기능 : 주문 완료 후 주문 내역 가져오기 테스트 매개변수 : 주문 번호
	 */
	@Test
	public void testGetOrder() {
		log.info(mapper.orderOk("230315001"));
	}
	
	/*
	 * *Author : 차민수 기능 : 주문 전체 정보 insert 테스트 매개변수 : PickUoOrderVO
	 */
	/*
	 * @Test public void testInsertPickupOrders() { PickUpOrderVO order = new
	 * PickUpOrderVO(); Date today = new Date(); order.setPo_booking_date(today);
	 * order.setPo_status(1); // 주문 완료 order.setPo_total_price(1000);
	 * order.setM_email("tkalsfk@naver.com"); order.setS_code("scode1");
	 * order.setPm_code("P001"); order.setPo_mileage(500); int result =
	 * mapper.insertPickupOrders(order); log.info(result); }
	 */
	
	@Test
	public void 마이페이지_최근_픽업상품_조회() {
		String m_email = "tj52sh9@naver.com";
		log.info(mMapper.selectMypagePickupOrder(m_email));
	}
}
