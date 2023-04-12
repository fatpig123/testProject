package org.hwine.domain.tabling;

import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 와인웍스 지점 정보를 담은 DTO
 * @author : 김주현
 */
@Getter
@NoArgsConstructor
@ToString
public class StoreEveryInfoDTO {

	private String scode;
	private String sname;
	private String sdescription;
	private String ssimpledesc;
	private String imgUrls;
	private String stel;
	private String saddress;
	
	private List<MenuCategory> menuCategory; //메뉴	정보
}
