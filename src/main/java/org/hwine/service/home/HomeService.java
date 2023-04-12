package org.hwine.service.home;

import java.util.List;
import java.util.Map;

import org.hwine.domain.product.MainWineFoodVO;
import org.hwine.domain.product.MainWineListFoodDTO;
import org.hwine.domain.product.MainProductVO;
import org.hwine.domain.product.ProductVO;

public interface HomeService {

	// 베스트 와인 6개 출력
	public List<ProductVO> bestProduct6();

	// 신상 와인 6개 출력
	public List<ProductVO> newProduct6();
	
	//음식에 따른 와인
	MainWineListFoodDTO getWineListWithFood(String wfood);
	
	Map<String, List<MainProductVO>> mainProduct();

}
