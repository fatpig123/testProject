package org.hwine.domain.tabling;

import java.time.LocalDate;

import lombok.Getter;
import lombok.ToString;

/**
 * 마이페이지: 예약 한 건에 대한 VO(예약 + 지점)
 * @author : 김주현
 */
@Getter
@ToString
public class MyTablingResvVO {

	private String r_id;
	private LocalDate r_date;
	private int r_time;
	private int r_head_count;
	private int r_status;
	private String st_id;
	private String r_msg;
	
	private String s_code;
	private String s_name;
	private String s_img_urls;

	private String sep; //for mypage
}
