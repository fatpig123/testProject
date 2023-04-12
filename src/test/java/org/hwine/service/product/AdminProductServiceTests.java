package org.hwine.service.product;

import java.util.List;

import org.hwine.domain.product.AdminProductListVO;
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
public class AdminProductServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private AdminProductService adminService;

		//관리자 상품 리스트
		@Test
		public void testAdminProductList() {
			String s_code="scode1";
			List<AdminProductListVO> productVO=adminService.adminList(s_code);
			productVO.forEach(item -> System.out.println(item));
		}

}
