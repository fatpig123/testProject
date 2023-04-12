package org.hwine.service.product;

import java.util.List;

import org.hwine.domain.product.AdminProductListVO;
import org.hwine.domain.product.ProductInsertVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.chartVO;
import org.springframework.security.core.Authentication;

/**
 * 백오피스 상품 관련 Service
 * 
 * @author : 노희진
 * @since 2023.03.06
 * @version 1.0
 * 
 *          수정일 수정자 수정내용 ---------- -------- ---------------------------
 *          2023.04.03 노희진 최초 생성 2023.03.04 노희진 상품 상세, 상품 등록
 * 
 */

public interface AdminProductService {


	// 상품 등록
	public void registerProduct(ProductInsertVO productInsertVO);

	// 상품 조회 (전체/서울/대구)
	public List<AdminProductListVO> adminList(String s_code);

	// 상품 상세
	public ProductVO adminProductItem(ProductInsertVO productInsertVO);

	// 상품 가격 변경
	public void updateWinePriceById(ProductInsertVO productInsertVO);

	// 재고량 변경
	public void updateWineStocks(ProductInsertVO productInsertVO);

	// 상품 삭제
	public void deleteWineById(String w_id);

	public List<ProductVO> getReqOrdList(Authentication auth);

	public List<chartVO> getSalesChart(int type, String w_id, int sumCount, Authentication auth);

	public List<chartVO> getCtgrChart(int type, int sumCount, Authentication auth);

	public List<chartVO> getMemberChart(int type, int sumCount, int genderAge, String w_id, Authentication auth);

	public int getTodaySales();

	public int getTodayPickup();

	public int getTodaySignup();

	public List<ProductVO> getReqPro(int scode);
}
