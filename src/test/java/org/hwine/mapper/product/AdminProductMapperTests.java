package org.hwine.mapper.product;

import java.sql.Date;
import java.time.LocalTime;

import org.hwine.domain.product.Criteria;
import org.hwine.domain.product.ProductInsertVO;
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
public class AdminProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private AdminProductMapper mapper;
	
	  @Test 
	  public void getProductListAdminTest() {
	  log.info("백오피스 상품 목록 mapper test"); 
	  String s_code="scode1";
	  log.info(mapper.adminList(s_code).size()); 
	  }

	@Test
	public void getProductItemAdminTest() {
		log.info("백오피스 상품 상세 mapper test");
		ProductInsertVO pVO = new ProductInsertVO();
		pVO.setW_id("3");
		log.info(mapper.adminProductItem(pVO));
	}

	
//	@Test
//	public void updateWinePrice() {
//		ProductInsertVO insertVO = new ProductInsertVO();
//		insertVO.setW_price(30000);
//		insertVO.setW_id("4");
//		mapper.updateWinePriceById(insertVO);
//	}
	
//	@Test
//	public void updateSeoulStock() {
//		ProductInsertVO insertVO = new ProductInsertVO();
//		insertVO.setSws_stock(100);
//		insertVO.setW_id("4");
//		insertVO.setS_code("scode1");
//		mapper.updateWineStocks(insertVO);
//	}
	
	/*  @Test 
	  public void insertWineVarietyTest() {
	  
			
			 * ProductInsertVO insertVO = new ProductInsertVO();
			 * 
			 * insertVO.setW_name_kor("w_name_kor"); insertVO.setW_name("w_name");
			 * insertVO.setW_img("w_img"); insertVO.setW_price(7000);
			 * 
			 * insertVO.setW_ferment("w_ferment");
			 * insertVO.setW_temperature("w_temperature"); insertVO.setW_volume(750);
			 * insertVO.setW_type("w_type");
			 * 
			 * insertVO.setWv_variety("품종영어"); insertVO.setWv_variety_kor("품종");
			 * insertVO.setWr_nation("국가영어"); insertVO.setWr_nation_kor("국가");
			 * insertVO.setWr_area("지역영어"); insertVO.setWr_area_kor("지역");
			 * 
			 * insertVO.setWm_maker_kor("와인생산자"); insertVO.setWm_maker("와인생산자 영어");
			 * 
			 * insertVO.setW_alcohol("알콜도수"); insertVO.setW_sweetness(1);
			 * insertVO.setW_acidity(2); insertVO.setW_body(4); insertVO.setW_tannin(3);
			 * 
			 * insertVO.setWa_name("아로마 대분류"); insertVO.setWa_img_url("아로마 img url");
			 * insertVO.setWas_name(was_name);
			 * 
			 * insertVO.setWf_name("wfname"); insertVO.setWf_img_url("wf img url");
			 * insertVO.setWfs_name(wfs_name);
			 * 
			 * insertVO.setS_code("scode1"); insertVO.setSws_stock(10);
			 * insertVO.setS_name("와인웍스 더현대 서울");
			 
	  
	  String wineid="222"; 
	  String wv_variety="ddss"; 
	  String wv_variety_kor="ddss";
	  
	  String wr_nation="wr_nationss"; 
	  String wr_area="wr_areass"; 
	  String wr_nation_kor="wr_nation_korss"; 
	  String wr_area_kor="wr_area_korss";
	  
	  String wm_maker_kor="wm_maker_korss"; 
	  String wm_maker="wm_makerss";
	  
	  String w_name="w_namess"; 
	  String w_name_kor="w_name_kor"; 
	  String w_img="w_img";
	  int w_price=5000;
	  
	  String w_alcohol="w_alcohol"; 
	  int w_sweetness=1; 
	  int w_acidity=1; 
	  int w_body=1;
	  int w_tannin=1;
	  
	  String w_ferment="w_ferment"; 
	  String w_temperature="w_temperature"; 
	  int w_volume=1000; 
	  String w_type="w_type";
	  
	  String wf_name="아아아";
	  String wf_img_url="wf링크";
	  String[] wfs_name= {"음식1", "음식2"};
	  //String[] wfs_name= {"음식1"};
	  String wa_name="와네임~~";
	  String wa_img_url="와네임링크~~";
	  String[] was_name = {"아로마1", "아로마2"};
	  
	  LocalTime w_register_date; 
	  LocalTime w_update_date = LocalTime.now(); 
	  String w_id=wineid;
	  
	  int sws_stock=100;
	  String s_code="scode1";
	  
	  //순서!!!!!!!!!!! 
	  mapper.insertWineVariety(wineid, wv_variety, wv_variety_kor); 
	  mapper.insertWineRegions(wineid, wr_nation, wr_area, wr_nation_kor, wr_area_kor); 
	  mapper.insertWineMaker(wineid, wm_maker, wm_maker_kor, wr_nation, wr_area);
	  
	  mapper.insertWine(w_id, w_name, w_name_kor, w_price, w_img, w_alcohol,
	  w_sweetness, w_acidity, w_body, w_tannin, w_ferment, w_temperature, w_volume,
	  w_type, w_update_date, wv_variety, wm_maker ); 
	 
	  mapper.insertWineFood(wineid, wf_name, wf_img_url);
	  for (int i=0; i<wfs_name.length; i++) {
		  mapper.insertWineFoodSpecies(wineid, wfs_name[i], wf_name);
	  }
	  for (int i=0; i<wfs_name.length; i++) {
		  mapper.insertFoodMappers(wfs_name[i], w_id);
	  }
	 mapper.insertWineAroma(wineid, wa_name, wa_img_url);
	  for (int i=0; i<was_name.length; i++) {
		  mapper.insertWineAromaSpecies(wineid, was_name[i], wa_name);
	  }
	  for (int i=0; i<was_name.length; i++) {
		  mapper.insertAromaMappers(was_name[i], w_id);
	  }
	 mapper.insertStoreWineStocks(sws_stock, s_code, w_id);
  }*/
	 
}
