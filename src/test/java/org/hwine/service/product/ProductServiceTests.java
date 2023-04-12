package org.hwine.service.product;

import java.util.List;

import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.filteredProductVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
* 상품 관련 Controller
* @author : 노희진
* @since 2023.03.06
* @version 1.0 
* 
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.06  노희진       	최초 생성
* 2023.03.08  노희진		디캔팅 북 관련 로직 추가
* 2023.03.13  노희진		정렬 로직 추가
* 2023.03.14  노희진		무한 스크롤 로직 추가
* 2023.03.16  노희진		필터링된 상품 목록 로직 추가
* 2023.03.21  노희진		상품 필터링 중복 선택 로직 추가
* 
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
      "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
      "file:src/main/webapp/WEB-INF/spring/security-context.xml",
      "file:src/main/webapp/WEB-INF/spring/tiles-define.xml"})
@Log4j
@WebAppConfiguration
public class ProductServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	//필터링된 상품 목록 출력
	@Test
	public void testProductFilteredList() {
		log.info("필터링된 상품 목록 출력 service test");
		String sort="recent";
		int startIdx=1;
		int endIdx=12;
		filteredProductVO filtered = new filteredProductVO();
		service.combinedProductList(filtered, sort, startIdx, endIdx);
	}
	

}
