package org.hwine.mapper.product;

import java.time.LocalTime;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hwine.domain.product.AdminProductListVO;
import org.hwine.domain.product.ProductInsertVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.chartVO;
@Mapper
public interface AdminProductMapper {

	// 시퀀스 값(와인 id) 선택
	public String selectSequence();

	// 품종 등록
	public void insertWineVariety(@Param("winedid") String wineid, @Param("wv_variety") String wv_variety,
			@Param("wv_variety_kor") String wv_variety_kor);

	// 지역 등록
	public void insertWineRegions(String wineid, @Param("wr_nation") String wr_nation, @Param("wr_area") String wr_area,
			@Param("wr_nation_kor") String wr_nation_kor, @Param("wr_area_kor") String wr_area_kor);

	// 와인생산자 등록
	public void insertWineMaker(String wineid, @Param("wm_maker") String wm_maker,
			@Param("wm_maker_kor") String wm_maker_kor, @Param("wr_nation") String wr_nation,
			@Param("wr_area") String wr_area);

	// 와인 등록
	public void insertWine(@Param("w_id") String wineid, @Param("w_name") String w_name,
			@Param("w_name_kor") String w_name_kor, @Param("w_price") int w_price, @Param("w_img") String w_img,
			@Param("w_alcohol") String w_alcohol, @Param("w_sweetness") int w_sweetness,
			@Param("w_acidity") int w_acidity, @Param("w_body") int w_body, @Param("w_tannin") int w_tannin,
			@Param("w_ferment") String w_ferment, @Param("w_temperature") String w_temperature,
			@Param("w_volume") int w_volume, @Param("w_type") String w_type,
			@Param("w_update_date") LocalTime w_update_date, @Param("wv_variety") String wv_variety,
			@Param("wm_maker") String wm_maker);

	// 음식 등록
	public void insertWineFood(String wineid, @Param("wf_name") String wf_name, @Param("wf_img_url") String wf_img_url);

	// 음식 종류 등록
	public void insertWineFoodSpecies(String wineid, @Param("wfs_name") String wfs_name,
			@Param("wf_name") String wf_name);

	// 음식 매퍼 등록
	public void insertFoodMappers(@Param("wfs_name") String wfs_name, @Param("w_id") String wineid);

	// 아로마 등록
	public void insertWineAroma(String wineid, @Param("wa_name") String wa_name,
			@Param("wa_img_url") String wa_img_url);

	// 아로마 종류 등록
	public void insertWineAromaSpecies(String wineid, @Param("was_name") String was_name,
			@Param("wa_name") String wa_name);

	// 아로마 매퍼 등록
	public void insertAromaMappers(@Param("was_name") String was_name, @Param("w_id") String wineid);

	// 재고 등록
	public void insertStoreWineStocks(@Param("sws_stock") int sws_stock, @Param("s_code") String s_code,
			@Param("w_id") String wineid);

	// 상품 조회 (전체/서울/대구)
	public List<AdminProductListVO> adminList( @Param("s_code") String s_code);

	// 상품 상세
	public ProductVO adminProductItem(ProductInsertVO productInsertVO);

	// 상품 가격 업데이트
	public void updateWinePriceById(ProductInsertVO productInsertVO);

	// 재고량 변경
	public void updateWineStocks(ProductInsertVO productInsertVO);

	// 상품 삭제
	public void deleteWineById(String w_id);

	public List<ProductVO> getOrdReqList(int auth);

	public List<chartVO> getSalesChart(@Param("type")int type,@Param("w_id") String w_id,@Param("sumCount") int sumCount, @Param("auth")int auth);

	public List<chartVO> getCtgrChart(@Param("type")int type,@Param("sumCount") int sumCount, @Param("auth")int auth);

	public List<chartVO> getMemberChart(@Param("type")int type,@Param("sumCount") int sumCount,@Param("genderAge") int genderAge,@Param("w_id") String w_id, @Param("auth")int auth);

	public int getTodaySales();

	public int getTodayPickup();

	public int getTodaySignup();

}
