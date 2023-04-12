package org.hwine.service.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.hwine.domain.tabling.MenuCategory;
import org.hwine.domain.tabling.MenuVO;
import org.hwine.domain.tabling.MyPageTabling;
import org.hwine.domain.tabling.MyTablingResvDTO;
import org.hwine.domain.tabling.MyTablingResvVO;
import org.hwine.domain.tabling.ReservationVO;
import org.hwine.domain.tabling.StoreEveryInfoDTO;
import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.hwine.domain.tabling.TablingCalendarDay;
import org.hwine.domain.tabling.TablingCalendarTime;
import org.hwine.exception.CustomNotFoundException;
import org.hwine.exception.ErrorCode;
import org.hwine.exception.TablingException;
import org.hwine.mapper.tabling.TablingMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 테이블링 관련 Service 구현체
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

@Service
@RequiredArgsConstructor
@Log4j
public class TablingServiceImpl implements TablingService {

	private final TablingMapper tablingMapper;

	/**
	 * 좌석 지정 시, 좌석의 초기 상태
	 * 
	 * @param TableSelectedOptionDTO options
	 * @return List<TablesAvailableVO>
	 */
	@Override
	public List<TablesAvailableVO> getInitReservationStatus(TableSelectedOptionDTO options) {
		System.out.println(options);
		if (options.getStoreId().equals("scode1")) {
			log.info("서울");
			return tablingMapper.findCurrentBookingStatus(options);
		} else if (options.getStoreId().equals("scode2")) {
			log.info("대구");
			return tablingMapper.findCurrentBookingStatus(options);
		} else {
			throw new TablingException(ErrorCode.NO_STORE_FOUND);
		}
	}

	/**
	 * 좌석 선택 시, 예약 가능한 좌석인 지 확인
	 * 
	 * @param TableSelectedOptionDTO options
	 * @return boolean
	 */
	@Override
	public void checkAvailableSeat(TableSelectedOptionDTO options) {
		if (tablingMapper.findAvailableSeat(options) == 0)
				throw new TablingException(ErrorCode.ALREADY_RESVED_SEAT);
	}

	/**
	 * 좌석 예약
	 * 
	 * @param TableSelectedOptionDTO options
	 * @return int
	 */
	@Override
	@Transactional
	public void confirmReservation(String email, TableSelectedOptionDTO options) {
		log.info("예약처리 시작");

		// 1. 좌석 상태 확인
		if (tablingMapper.findAvailableSeat(options) != 0) {
			throw new TablingException(ErrorCode.ALREADY_RESVED_SEAT);
		}

		// 2. 예약
		ReservationVO reservation = new ReservationVO(LocalDateTime.now(), options.getSelectedDate(),
				options.getSelectedTime(), options.getHeadCount(), options.getTableId(), email,
				options.getRequestMsg());
		
		if(tablingMapper.insertReservation(reservation) != 1) {
			throw new RuntimeException(ErrorCode.DB_UPDATE_ERR.getMessage());
		}
	}

	/**
	 * 와인웍스 지점 정보 조회(정보 + 메뉴판)
	 * 
	 * @param String scode
	 * @return StoreEveryInfoDTO
	 */
	public StoreEveryInfoDTO getStoreInfo(String scode) {
		StoreEveryInfoDTO dto = tablingMapper.selectStoreInfo(scode);
		if(dto == null)
			throw new CustomNotFoundException(ErrorCode.NO_STORE_FOUND);
		return dto;
	}

	/**
	 * 예약 달력 조회(예약이 가능한 시간, 일 조회)
	 * 
	 * @param String mId, String scode
	 * @return List<TablingCalendarDay>
	 */
	@Override
	public List<TablingCalendarDay> checkCalendar(String scode) {

		List<ReservationVO> reservations = tablingMapper.selectReservationFor7Days(scode);
		List<TablingCalendarDay> days = new ArrayList<>(); // 하루
		LocalDateTime today = LocalDateTime.now().withHour(10).withMinute(0).withSecond(0).withNano(0);

		// 생성
		for (int i = 1; i < 8; i++) { // 다음날부터 7일 간
			LocalDateTime date = today.plusDays(i);
			List<TablingCalendarTime> hours = new ArrayList<>(); // 시간(11~21시)
			for (int j = 0; j < 11; j++) {
				date = date.plusHours(1);
				hours.add(new TablingCalendarTime(date.getHour()));
			}
			days.add(new TablingCalendarDay(date.toLocalDate(), hours));
		}

		// 달력에 데이터 추가
		for (ReservationVO reservation : reservations) {

			// 날짜, 시간
			LocalDate rday = reservation.getR_date();
			int rtime = reservation.getR_time();
			TablingCalendarDay day = days.stream().filter(d -> d.getDate().equals(rday)).findFirst().get();
			TablingCalendarTime time = day.getHours().stream().filter(t -> t.getHour() == rtime).findFirst().get();

			// 다음 3시간 동안 예약 불가 처리
			decideAfterHourReservations(day, time);

			// 예약자
			day.addReservedEmail(reservation.getM_email());
		}

		// available 판단
		for (TablingCalendarDay day : days) {
			int cnt = 0;

			// 한 시간에 테이블 개수만큼의 예약이 차면 예약불가
			for (TablingCalendarTime time : day.getHours()) {
				if (time.getCnt() >= 16) {
					time.changeAvailable();
					cnt++;
				}
			}

			// 하루에 예약 불가한 시간이 11개 이상이면 예약불가
			if (cnt >= 11)
				day.changeAvailable();
		}

		return days;
	}

	/**
	 * 지점별 메뉴판 정보 조회
	 * 
	 * @param String scode
	 * @return List<MenuCategory>
	 */
	@Override
	public List<MenuCategory> getDetailMenu(String scode) {
		List<MenuVO> menus = tablingMapper.selectDetailMenus(scode);

		List<MenuCategory> categories = new ArrayList<>();

		for (MenuVO vo : menus) {
			Optional<MenuCategory> oCategory = categories.stream()
					.filter(c -> c.getCategory().equals(vo.getMenuCategory())).findFirst();

			MenuCategory category = null;
			/*
			 * 카테고리가 이미 존재할 때 최대, 최소 가격 정함
			 */
			if (oCategory.isPresent()) {
				category = oCategory.get();
				categories.remove(category);
				category.modifyMaxPrice(vo.getMenuPrice());
				category.modifyMinPrice(vo.getMenuPrice());
				category.getMenus().add(vo);
			} else { // 카테고리의 시작
				List<MenuVO> list = new ArrayList<>();
				list.add(vo);
				category = new MenuCategory(vo.getMenuCategory(), vo.getMenuPrice(), vo.getMenuPrice(), list);
			}
			categories.add(category);
		}

		return categories;
	}

	/**
	 * 마이페이지, 테이블링 내역 조회(상태 필터, 정렬)
	 * 
	 * @param String memail, String status, String sort
	 * @return MyPageTabling
	 */
	@Override
	public MyPageTabling getAllMyTabling(String memail, String status, String sort) {

		List<MyTablingResvDTO> reservations = new ArrayList<>();

		// 방문예정 시, 2시간 이내 방문할 예약 건이 있다면 맨 앞으로
		if (status.equals("planned")) {
			int idx = -1;
			List<MyTablingResvVO> vos = getTablingListByStatus(memail, status, sort);
			for (int i = 0; i < vos.size(); i++) {
				MyTablingResvDTO resv = new MyTablingResvDTO(vos.get(i));
				if (resv.setQrStatus(vos.get(i)))// 곧 방문인지
					idx = i;
				reservations.add(resv);

				if (idx != -1) {
					MyTablingResvDTO dto = reservations.remove(idx);
					reservations.add(0, dto);
				}
			}
		} else { // 방문완료, 취소
			for (MyTablingResvVO vo : getTablingListByStatus(memail, status, sort)) {
				MyTablingResvDTO resv = new MyTablingResvDTO(vo);
				reservations.add(resv);
			}
		}

		return new MyPageTabling(reservations.size(), status, sort, reservations);
	}

	/**
	 * 마이페이지, 테이블링 취소(방문 예정인 건 한정)
	 * 
	 * @param String memail, String rid
	 * @return int
	 */
	@Override
	public void cancelReservation(String memail, String rid) {
		if(tablingMapper.updateReservationStatus(memail, rid) != 1)
			throw new RuntimeException(ErrorCode.DB_UPDATE_ERR.getMessage());
	}

	/**
	 * 마이페이지, 테이블링 필터(방문예정, 완료, 취소)에 따라 다른 매퍼 호출
	 * 
	 * @param String memail, String status, String sort
	 * @return List<MyTablingResvVO>
	 */
	private List<MyTablingResvVO> getTablingListByStatus(String memail, String status, String sort) {
		if (status.equals("cancel")) {
			return tablingMapper.selectMyTablingList_cancel(memail, sort);
		} else if (status.equals("planned")) {
			return tablingMapper.selectMyTablingList_planned(memail, sort);
		}
		return tablingMapper.selectMyTablingList_done(memail, sort);
	}

	/**
	 * 예약 건이 존재할 경우, 이후 3시간까지 예약 불가 처리 최대 3시간 동안 이용가능하다는 비즈니스 로직
	 * 
	 * @param String memail, String status, String sort
	 * @return void
	 */
	private void decideAfterHourReservations(TablingCalendarDay day, TablingCalendarTime time) {
		int now = time.getHour();
		for (int i = 0; i < 3; i++) {
			increaseAfterHourReservationsCnt(day, now + i);
		}
	}

	/**
	 * 현재 시간의 예약 건수 증가
	 * 
	 * @param TablingCalendarDay day, int hour
	 * @return void
	 */
	private void increaseAfterHourReservationsCnt(TablingCalendarDay day, int hour) {
		Optional<TablingCalendarTime> timeObj = day.getHours().stream().filter(t -> t.getHour() == hour).findFirst();

		if (timeObj.isEmpty())
			return;

		timeObj.get().addCnt();
	}

}
