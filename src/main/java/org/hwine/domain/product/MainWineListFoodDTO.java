package org.hwine.domain.product;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class MainWineListFoodDTO {

	private String wfood;
	private List<MainWineFoodVO> wines;
}

