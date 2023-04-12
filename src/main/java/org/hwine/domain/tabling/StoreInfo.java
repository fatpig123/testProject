package org.hwine.domain.tabling;

import lombok.Getter;
import lombok.ToString;

/**
 * 와인웍스 지점 VO
 * @author : 김주현
 */
@Getter
@ToString
public class StoreInfo {

	private String scode;
	private String sname;
	private String sdescription;
	private String ssimpledesc;
	private String imgUrls;
	private String stel;
	private String saddress;
	
}
