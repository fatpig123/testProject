package org.hwine.mapper.home;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.hwine.domain.product.MainWineFoodVO;
import org.hwine.domain.product.MainProductVO;
import org.hwine.domain.product.ProductVO;

@Mapper
public interface HomeMapper {
	
	//베스트 와인 6개 출력
	public List<ProductVO> bestProduct6();
	
	//신상 와인 6개 출력
	public List<ProductVO> newProduct6();
	
	//음식과 함께하는 와인리스트
	List<MainWineFoodVO> selectMainFoodWineList(String wfood);

	List<MainProductVO> mainBestProduct();
	
	List<MainProductVO> mainNewProduct();
}
