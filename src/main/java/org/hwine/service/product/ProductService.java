package org.hwine.service.product;

import java.util.List;

import org.hwine.domain.product.DecantingBookVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.filteredProductVO;

/**
 * 상품 관련 Service
 * 
 * @author : 노희진
 * @since 2023.03.06
 * @version 1.0
 * 
 *          수정일 수정자 수정내용 
 *          ---------- -------- ---------------------------
 *          2023.03.06 노희진 최초 생성 
 *          2023.03.08 노희진 디캔팅 북 관련 로직 추가 
 *          2023.03.13 노희진 정렬 로직 추가 
 *          2023.03.14 노희진 무한 스크롤 로직 추가 
 *          2023.03.16 노희진 필터링된 상품 목록 로직 추가
 */

public interface ProductService {

	// 상품 리스트 (정렬o / 무한 스크롤o)
	public List<ProductVO> productList(String sort, int startIdx, int endIdx);

	// 유사 상품 추천 리스트 (정렬x / 무한 스크롤x)
	public List<ProductVO> relatedProductList(String w_id);

	// 일반 리스트 + 필터링된 리스트 합친거
	public List<ProductVO> combinedProductList(filteredProductVO filtered, String sort, int startIdx, int endIdx);

	// 필터링한 상품 총개수
	public int filteredCnt(filteredProductVO filtered);

	// 상품 상세
	public ProductVO selectProductItem(String w_id);

	// 상품 재고 정보
	public List<ProductVO> productStockInfo(String w_id);

	// 상품에 대한 디캔팅 북
	public List<DecantingBookVO> productDecantingBook(String w_id, int start, int end);

	// 디캔팅 북 총 개수
	public int decantingBookCnt(String w_id, String name);

	// 디캔팅북 로그인
	public List<DecantingBookVO> productDecantingBookLogin(String w_id, String name, int start, int end);

}
