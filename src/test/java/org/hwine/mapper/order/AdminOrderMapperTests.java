package org.hwine.mapper.order;

import org.hwine.domain.order.Criteria;
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
public class AdminOrderMapperTests {

	@Setter(onMethod_ = @Autowired)
	private AdminOrderMapper mapper;
	
	@Test
	public void getOrderListTest() {
		Criteria cri = new Criteria();
		cri.setKeyword("차민수");
		cri.setType("name");
		log.info(mapper.getOrderListAdmin1(cri));
	}
	
	
	@Test
	public void checkAdmin() {
		log.info(mapper.checkAdmin());
	}
	
	@Test
	public void getAuths() {
		log.info("Auth" + mapper.checkScode("admin3"));
	}
}
