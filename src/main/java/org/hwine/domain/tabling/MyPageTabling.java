package org.hwine.domain.tabling;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 마이페이지: 예약 내역 조회 페이지 DTO
 * @author : 김주현
 */
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MyPageTabling {
	
	private int cnt; //예약 건수
	private String status; //planned, done, cancel
	private String sort; //정렬
	private List<MyTablingResvDTO> reservations;

}
