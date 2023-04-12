package org.hwine.service.tabling;

import java.util.List;

import org.hwine.domain.tabling.MenuCategory;
import org.hwine.domain.tabling.MyPageTabling;
import org.hwine.domain.tabling.StoreEveryInfoDTO;
import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.hwine.domain.tabling.TablingCalendarDay;


/**
 * 테이블링 관련 Service 인터페이스
 * 
 * @author : 김주현
 * @since 2023.03.15
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.15  김주현       	최초 생성
* 2023.03.21  김주현       	좌석 예약
* 2023.03.24  김주현       	지점, 캘린더, 메뉴 정보 조회
* 2023.03.25  김주현       	예약 조회
* 2023.03.27  김주현		예약 취소
 *          </pre>
 * 
 */
public interface TablingService {
	
	//초기 좌석 예약 상태
	List<TablesAvailableVO> getInitReservationStatus(TableSelectedOptionDTO options);
	
	//선택한 좌석이 예약가능한 지 판단
	void checkAvailableSeat(TableSelectedOptionDTO options);
	
	//예약
	void confirmReservation(String email, TableSelectedOptionDTO opt);

	//지점 정보 조회
	StoreEveryInfoDTO getStoreInfo(String scode);
	
	//지점별 예약 가능한 지 캘린더 확인
	List<TablingCalendarDay> checkCalendar(String scode);
	
	//메뉴 정보 가져오기
	List<MenuCategory> getDetailMenu(String scode);
	
	//예약 내역 조회(전체)
	MyPageTabling getAllMyTabling(String memail, String status, String sort);

	//예약 취소
	void cancelReservation(String memail, String rid);

}
