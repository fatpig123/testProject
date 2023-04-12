package org.hwine.mapper.home;

import java.util.List;

import org.hwine.domain.product.ProductVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

/**
 * 상품 관련 MapperTests
 * 
 * @author : 노희진
 * @since 2023.03.06
 * @version 1.0
 * 
 *          수정일 수정자 수정내용 
 *          ---------- -------- ---------------------------
 *          2023.03.26 노희진 최초 생성
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml", })
@Log4j
public class HomeMapperTests {

	@Autowired(required = true)
	private HomeMapper hMapper;

	// 베스트 와인 6개
	@Test
	public void testBestProduct6() {
		//log.info(hMapper);
		log.info("베스트 와인 목록 >>>>>>>>> mapper test");
		log.info(hMapper.bestProduct6());
//		List<ProductVO> list = hMapper.bestProduct6();
//		list.forEach(item -> log.info(item));
	}

	// 신상 와인 6개
	@Test
	public void testNewProduct6() {
		log.info("신상 와인 목록 >>>>>>>>> mapper test");
		log.info(hMapper.newProduct6());
	}
	
	@Test
	public void testBest() {
		log.info("베스트 10개 : " + hMapper.mainBestProduct());
	}

}
