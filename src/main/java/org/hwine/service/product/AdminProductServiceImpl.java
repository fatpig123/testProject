package org.hwine.service.product;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.hwine.domain.member.MemberVO;
import org.hwine.domain.order.PickUpOrderVO;
import org.hwine.domain.product.AdminProductListVO;
import org.hwine.domain.product.ProductInsertVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.chartVO;
import org.hwine.mapper.order.AdminOrderMapper;
import org.hwine.mapper.product.AdminProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminProductServiceImpl implements AdminProductService {

	@Autowired
	private AdminProductMapper mapper;
	
	// 상품 등록
	@Override
	public void registerProduct(ProductInsertVO productInsertVO) {
		String wineid = mapper.selectSequence();
		LocalTime w_update_date = LocalTime.now();

		// 품종 등록
//	    mapper.insertWineVariety(wineid, productInsertVO.getWv_variety(), productInsertVO.getWv_variety_kor());
//		log.info("품종 등록 완료");

		// 지역 등록
		mapper.insertWineRegions(wineid, productInsertVO.getWr_nation(), productInsertVO.getWr_area(),
				productInsertVO.getWr_nation_kor(), productInsertVO.getWr_area_kor());
		log.info("지역 등록 완료");

		// 와인생산자 등록
		mapper.insertWineMaker(wineid, productInsertVO.getWm_maker(), productInsertVO.getWm_maker_kor(),
				productInsertVO.getWr_nation(), productInsertVO.getWr_area());
		log.info("와인생산자 등록 완료");

		// 와인 등록
		mapper.insertWine(wineid, productInsertVO.getW_name(), productInsertVO.getW_name_kor(),
				productInsertVO.getW_price(), productInsertVO.getW_img(), productInsertVO.getW_alcohol(),
				productInsertVO.getW_sweetness(), productInsertVO.getW_acidity(), productInsertVO.getW_body(),
				productInsertVO.getW_tannin(), productInsertVO.getW_ferment(), productInsertVO.getW_temperature(),
				productInsertVO.getW_volume(), productInsertVO.getW_type(), w_update_date,
				productInsertVO.getWv_variety(), productInsertVO.getWm_maker());
		log.info("와인 등록 완료");

		// 음식 등록
//		mapper.insertWineFood(wineid, productInsertVO.getWf_name(), productInsertVO.getWf_img_url());
//		log.info("음식 등록 완료");

		// 음식 종류 등록
		String[] wfs_name = productInsertVO.getWfs_name();
//		String wf_name = productInsertVO.getWf_name();
//		for (int i = 0; i < wfs_name.length; i++) {
//			mapper.insertWineFoodSpecies(wineid, wfs_name[i], wf_name);
//		}
//		log.info("음식 종류 등록 완료");

		// 음식 매퍼 등록
		for (int i = 0; i < wfs_name.length; i++) {
			mapper.insertFoodMappers(wfs_name[i], wineid);
		}
		log.info("음식 매퍼 등록 완료");

		// 아로마 등록
//		mapper.insertWineAroma(wineid, productInsertVO.getWa_name(), productInsertVO.getWa_img_url());
//		log.info("아로마 등록 완료");
//		
		// 아로마 종류 등록
		String[] was_name = productInsertVO.getWas_name();
//		String wa_name = productInsertVO.getWa_name();
//		for (int i = 0; i < was_name.length; i++) {
//			mapper.insertWineAromaSpecies(wineid, was_name[i], wa_name);
//		}
//		log.info("아로마 종류 등록 완료");

		// 아로마 매퍼 등록
		for (int i = 0; i < was_name.length; i++) {
			mapper.insertAromaMappers(was_name[i], wineid);
		}
		log.info("아로마 매퍼 등록 완료");

		// 재고 등록
		mapper.insertStoreWineStocks(productInsertVO.getSws_stock(), productInsertVO.getS_code(), wineid);
		log.info("재고 등록 완료");
	}

	// 상품 조회
	public List<AdminProductListVO> adminList(String s_code) {
		
		log.info("서비스단 s_code: " + s_code);
		List<AdminProductListVO> productVO = new ArrayList<>();
		List<AdminProductListVO> vo1 = new ArrayList<>();
		List<AdminProductListVO> vo2 = new ArrayList<>();;
		
		if (s_code.equals("all")) { 
			//서울
			vo1=mapper.adminList("scode1");
			// 대구
			productVO=mapper.adminList("scode2");
			
			log.info(vo1);
			log.info(productVO);
			for (int i=0; i<vo1.size(); i++) {
				productVO.get(i).setSws_stock(vo1.get(i).getSws_stock() + productVO.get(i).getSws_stock());
				productVO.get(i).setTotal_wine_sales(vo1.get(i).getTotal_wine_sales());
				productVO.get(i).setW_id(vo1.get(i).getW_id());
				productVO.get(i).setW_name_kor(vo1.get(i).getW_name_kor());
				productVO.get(i).setW_price(vo1.get(i).getW_price());
				productVO.get(i).setW_register_date(vo1.get(i).getW_register_date());
				productVO.get(i).setW_update_date(vo1.get(i).getW_update_date());
			}
		} else {
			productVO=mapper.adminList(s_code);
		}
		return productVO;
	}

	// 상품 상세
	@Override
	public ProductVO adminProductItem(ProductInsertVO productInsertVO) {
		System.out.println("adminProductItem >>"+productInsertVO);
		return mapper.adminProductItem(productInsertVO);
	}

	// 상품 삭제
	@Override
	public void deleteWineById(String w_id) {
		mapper.deleteWineById(w_id);
	}

	//상품 가격 변경
	@Override
	public void updateWinePriceById(ProductInsertVO productInsertVO) {
		mapper.updateWinePriceById(productInsertVO);
	}

	//재고량 변경
	@Override
	public void updateWineStocks(ProductInsertVO productInsertVO) {
		log.info("재고량 변경 서비스단");
		mapper.updateWineStocks(productInsertVO);
	}

	@Override
	public List<ProductVO> getReqOrdList(Authentication auth) {
		
		if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_DAEGU")) {
			return mapper.getOrdReqList(2);
		}
		else {
			return mapper.getOrdReqList(1);
		}
		
	}

	@Override
	public List<chartVO> getSalesChart(int type, String w_id, int sumCount, Authentication auth) {
		if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_SEOUL")) {
			return mapper.getSalesChart(type, w_id, sumCount, 1);
		}
		else if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_DAEGU")) {
			return mapper.getSalesChart(type, w_id, sumCount, 2);
		}
		else {
			return mapper.getSalesChart(type, w_id, sumCount, 0);
		}
		
	}

	@Override
	public List<chartVO> getCtgrChart(int type, int sumCount, Authentication auth) {
		if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_SEOUL")) {
			return mapper.getCtgrChart(type,  sumCount, 1);
		}
		else if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_DAEGU")) {
			return mapper.getCtgrChart(type,  sumCount, 2);
		}
		else {
			return mapper.getCtgrChart(type,  sumCount, 0);
		}
	}

	@Override
	public List<chartVO> getMemberChart(int type, int sumCount, int genderAge, String w_id, Authentication auth) {
		if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_SEOUL")) {
			return mapper.getMemberChart(type,  sumCount, genderAge,w_id, 1);
		}
		else if(auth.getAuthorities().toArray()[1].toString().contains("ROLE_ADMIN_DAEGU")) {
			return mapper.getMemberChart(type,  sumCount, genderAge,w_id, 2);
		}
		else {
			return mapper.getMemberChart(type,  sumCount, genderAge,w_id, 0);
		}
	}

	@Override
	public int getTodaySales() {
		return mapper.getTodaySales();
	}

	@Override
	public int getTodayPickup() {
		return mapper.getTodayPickup();
	}

	@Override
	public int getTodaySignup() {
		return mapper.getTodaySignup();
	}

	@Override
	public List<ProductVO> getReqPro(int scode) {
		return mapper.getOrdReqList(scode);
	}
	
}
