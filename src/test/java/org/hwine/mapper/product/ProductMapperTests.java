package org.hwine.mapper.product;

import org.hwine.domain.product.filteredProductVO;
import org.hwine.mapper.product.ProductMapper;
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
 *          수정일 수정자 수정내용 ---------- -------- ---------------------------
 *          2023.03.06 노희진 최초 생성 2023.03.08 노희진 디캔팅 북 관련 로직 추가 2023.03.13 노희진 정렬
 *          로직 추가 2023.03.14 노희진 무한 스크롤 로직 추가 2023.03.16 노희진 필터링된 상품 목록 로직 추가
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml", })
@Log4j
public class ProductMapperTests {

	@Autowired(required = true)
	private ProductMapper mapper;

//	//상품 상세
	@Test
	public void testSelectProductItem() {
		log.info("상품상세 mapper test");
		String w_id="160883";
		log.info(mapper.selectProductItem(w_id));
	}

	// 상품 재고 정보
//	@Test
//	public void testProductStockInfo() {
//		log.info("상품 재고 정보 조회 mapper test");
//		String w_id="160841";
//		log.info(mapper.productStockInfo(w_id));
//	}
//	
//	//상품에 대한 디캔팅 북
//	@Test
//	public void testProductDecantingBook() {
//		log.info("상품에 대한 디캔팅 북 조회 mapper test");
//		String w_id="160841";
//		log.info(mapper.productDecantingBook(w_id));
//	}

	// 디캔팅 북 총 개수
//	@Test
//	public void testDecantingBookCnt() {
//		log.info("디캔팅 북 총 개수 mapper test");
//		String w_id="160841";
//		log.info(mapper.decantingBookCnt(w_id));
//	}

	// 와인 목록
//	@Test
//	public void testProductList() {
//		log.info("와인 목록 mapper test");
//		String sort = "recent";
//		int startIdx = 1;
//		int endIdx = 10;
//		log.info(mapper.productList(sort, startIdx, endIdx));
//	}

	// 유사 와인 추천 (생산자가 같은 와인)
//	@Test
//	public void testRelatedProductList() {
//		log.info("유사 와인 추천 mapper test" );
//		String w_id="160841";
//		int startIdx = 1;
//		int endIdx = 12;
//		log.info(mapper.relatedProductList(w_id, startIdx, endIdx));
//	}

	// 와인 필터링
//	@Test
//	public void testProductFilterList() {
//		log.info("필터링 목록 mapper test");
////		String sort = "recent";
////		int startIdx = 1;
////		int endIdx = 10;
//
//		filteredProductVO filtered = new filteredProductVO();
//
//		filtered.setW_price1(5000);
//		filtered.setW_price2(1000000);
//		filtered.setW_sweetness(1);
//		filtered.setW_tannin(3);
//		filtered.setW_acidity(3);
//		filtered.setW_body(2);
//		filtered.setW_type("레드");
//		filtered.setWr_nation_kor("프랑스");
//		filtered.setWv_variety_kor("피노 누아");
//
//		log.info(mapper.productFilteredList(filtered));
//	}
	
	//필터링된 목록 + 일반 목록
//	@Test
//	public void testCombinedProductList() {
//		
//		filteredProductVO filtered = new filteredProductVO();
//		log.info("DddfadfasdfadfadfasdfasdfadsF");
//
//		filtered.setW_price1(0);
//		filtered.setW_price2(1000000);
//		
//		filtered.setW_sweetness(1);
//		filtered.setW_acidity(-1);
//		filtered.setW_body(-1);
//		filtered.setW_tannin(-1);
//		
//		String[] type = {"레드", "화이트"};
//		String[] nation = {"프랑스", "이탈리아"};
//		String[] variety = {"피노 누아"};
//		
//		filtered.setW_type(type);
//		filtered.setWr_nation_kor(nation);
//		filtered.setWv_variety_kor(variety);
//		
//		filtered.setStartIdx(1);
//		filtered.setEndIdx(12);
//		filtered.setSort("highprice");
//		
//		log.info("filtered????????????????????????????????????" + filtered);
//		
//		log.info(mapper.combinedProductList(filtered));
//		
	//필터링된 와인 총개수
//	@Test
//	public void testFilteredCnt() {
//		
//		filteredProductVO filtered = new filteredProductVO();
//		log.info("졸려요");
//
//		filtered.setW_price1(0);
//		filtered.setW_price2(26933000);
//		
//		filtered.setW_sweetness(2);
//		filtered.setW_acidity(-1);
//		filtered.setW_body(-1);
//		filtered.setW_tannin(-1);
//		
//		String[] type = {"레드"};
//		String[] nation = {};
//		String[] variety = {};
//		
//		filtered.setW_type(type);
//		filtered.setWr_nation_kor(nation);
//		filtered.setWv_variety_kor(variety);
//		
//		log.info(mapper.filteredCnt(filtered));
//	}

		
	}

