package org.hwine.service.home;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hwine.domain.product.MainWineFoodVO;
import org.hwine.domain.product.MainWineListFoodDTO;
import org.hwine.domain.product.MainProductVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.mapper.home.HomeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeMapper homeMapper;

	@Override
	public List<ProductVO> bestProduct6() {
		return homeMapper.bestProduct6();
	}

	@Override
	public List<ProductVO> newProduct6() {
		return homeMapper.newProduct6();
	}
	
	@Override
	public MainWineListFoodDTO getWineListWithFood(String wfood){
		return new MainWineListFoodDTO(wfood, homeMapper.selectMainFoodWineList(wfood));
	}

	@Override
	public Map<String, List<MainProductVO>> mainProduct() {
		
		log.info("메인 페이지 판매량 10개, 일주일동안 새롭게 등록된 10개 상품 조회");
		Map<String, List<MainProductVO>> map = new HashMap<>();
		map.put("best", homeMapper.mainBestProduct());
		map.put("new", homeMapper.mainNewProduct());
		log.info(map);
		return map;
	}
	
}
