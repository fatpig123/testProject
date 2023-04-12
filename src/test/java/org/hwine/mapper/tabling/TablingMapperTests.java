package org.hwine.mapper.tabling;

import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.assertEquals;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.hwine.domain.tabling.ReservationVO;
import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j;

/**
 * 테이블링 관련 mapper 테스트
 * 
 * @author : 김주현
 * @since 2023.03.15
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.15 김주현       	최초 생성
* 2023.03.19 김주현       	테이블 예약 테스트
 *          </pre>
 * 
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml", })
@Log4j
public class TablingMapperTests {

	@Autowired
	private TablingMapper tablingMapper;

	@Test
	public void 지점_일시_에따른_예약현황_가져오기() {
		TableSelectedOptionDTO options = null;
		List<TablesAvailableVO> result = tablingMapper.findCurrentBookingStatus(options);

		for (TablesAvailableVO dto : result) {
			log.info(dto);
		}

		assertEquals(result.size(), 16);
	}

	@Test
	@Transactional
	public void 테이블_예약() {
		System.out.println(LocalDateTime.now());
		System.out.println(string2LocalDate("2023-03-20"));
		ReservationVO reservation = null;
		tablingMapper.insertReservation(reservation);
	}
	
	@Test
	public void 칠일간예약건수확인() {
		List<ReservationVO> result = tablingMapper.selectReservationFor7Days("scode1");
		log.info(result);
		log.info("=========");
//		for(ReservationVO vo : result) {
//			vo.addAvailableStatus();
//		}
//		log.info(result);
	}

	private LocalDate string2LocalDate(String str) {
		return LocalDate.parse(str, DateTimeFormatter.ISO_DATE);
	}

	private LocalDateTime processReservationTime(String date, int time) { 
		date = date + " " + time;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH"); 
		return LocalDateTime.parse(date, formatter);
	}
}
