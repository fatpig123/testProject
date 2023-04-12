package org.hwine.domain.product;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.hwine.domain.cart.StockVO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class ProductVO {
	
	private String w_id;
	private String w_name;
	private String w_name_kor;
	private String w_img;
	private String w_price;
	
	private String w_alcohol;
	private int w_sweetness;
	private int w_acidity;
	private int w_body;
	private int w_tannin;
	
	private String w_ferment;
	private String w_temperature;
	private int w_volume;
	private String w_type;
	
	private Date w_register_date;
	private Date w_update_date;
	
	private String wv_variety;
	private String wv_variety_kor;
	private String wr_nation;
	private String wr_nation_kor;
	private String wr_area;
	private String wr_area_kor;
	private String wm_maker;
	private String wm_maker_kor;
	
	//아로마 이름 리스트
	private List<WineAromaNameVO> aromaNameList;
	
	//상품 재고 정보
	private String s_code;
	private int sws_stock;
	private String s_name;
	
	//상품에 대한 디캔팅 북 리스트
	private List<DecantingBookVO> decantingBookList;
	
	//상품에 대한 디캔팅 북 평균 점수
	private int avg_db_rating;
	
	//작성자 : 차민수
	//상품 갯수 리스트 형태로 StockVO 로 가져옴
	private List<StockVO> stocks;
	
	//관리자 상품 조회시 재고 정보도 한번에 함께 출력
	private int total_wine_sales;
	
	private int year_order_avg;
	private int sws_order;

}