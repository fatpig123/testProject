package org.hwine.domain.tabling;

import lombok.Getter;

/**
 * 메뉴VO
 * @author : 김주현
 */
@Getter
public class MenuVO {
	
	private String scode;
	private String menuName;
	private String menuNameEng;
	private int menuPrice;
	private String menuCategory; //상위 분류
	private String description;
}
