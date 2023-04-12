package org.hwine.domain.tabling;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;


/**
 * 테이블링 지점의 메뉴 정보
 * @author : 김주현
 */
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MenuCategory {

	private String category; //대분류
	private int minPrice; //최소 가격
	private int maxPrice; //최대가격
	
	List<MenuVO> menus;
	
	public void modifyMinPrice(int newby) {
		this.minPrice = Math.min(newby, this.minPrice);
	}
	
	public void modifyMaxPrice(int newby) {
		this.maxPrice = Math.max(newby, this.maxPrice);
	}
}
