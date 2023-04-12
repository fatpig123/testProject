package org.hwine.mapper.tabling;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hwine.domain.tabling.AdminReservationVO;
import org.hwine.domain.tabling.AdminResrvQRConfirmVO;
import org.hwine.domain.tabling.AdminResvQRCheckVO;
import org.hwine.domain.tabling.AdminResvUpdateForm;
import org.hwine.domain.tabling.MenuVO;
import org.hwine.domain.tabling.MyTablingResvVO;
import org.hwine.domain.tabling.ReservationVO;
import org.hwine.domain.tabling.StoreEveryInfoDTO;
import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.hwine.domain.tabling.WorkAtSamePlaceVO;

/**
 * 테이블링 관련 Mapper
 * 
 * @author : 김주현
 * @since 2023.03.15
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.15  김주현       최초 생성(테이블 현황 조회)
* 2023.03.19  김주현	   테이블링 좌석
* 2023.03.22  김주현	   테이블링 캘린더
* 2023.03.26  김주현	   지점정보 조회
* 2023.03.28  김주현	   예약 내역 조회
 *          </pre>
 * 
 */

@Mapper
public interface TablingMapper {

	// 선택한 지점_일시_에 따른 테이블 예약 현황
	List<TablesAvailableVO> findCurrentBookingStatus(TableSelectedOptionDTO options);

	// 선택한 지점_일시_테이블이 예약가능한지
	int findAvailableSeat(TableSelectedOptionDTO options);

	// 테이블 예약
	int insertReservation(ReservationVO reservation);

	// 7일간 예약건수 확인
	List<ReservationVO> selectReservationFor7Days(String scode);

	// 지점 정보 가져오기
	StoreEveryInfoDTO selectStoreInfo(String scode);

	// 메뉴판
	List<MenuVO> selectDetailMenus(String scode);

	// 테이블링 내역 -필터, 정렬에 따라
	List<MyTablingResvVO> selectMyTablingList_cancel(@Param("memail") String memail, @Param("sort") String sort);

	List<MyTablingResvVO> selectMyTablingList_planned(@Param("memail") String memail, @Param("sort") String sort);

	List<MyTablingResvVO> selectMyTablingList_done(@Param("memail") String memail, @Param("sort") String sort);

	// 테이블링 노쇼에 의한 예약 상태 변경
	int updateReservationStatusByScheduler();
	// 테이블링 취소
	int updateReservationStatus(@Param("memail") String memail, @Param("rid") String rid);

	/******/

	// 관리자_테이블링 내역 전체 조회
	List<AdminReservationVO> selectReservationsByStoreId(String scode);

	// 관리자_지점별 오늘 예약 건수 조회
	int countTodayReservations(String scode);

	// 관리자_한 시간 뒤 예약건수 조회
	int countAfterOneHourReservation(String scode);

	// 관리자_오늘 노쇼 건수 조회
	int countTodayNoshow(String scode);

	// 관리자_오늘 신규 예약건수
	int countTodayNewReservation(String scode);

	// 관리자_오늘 예약 건들 조회
	List<AdminReservationVO> selectTodayReservations(String scode);

	// 관리자_예약 상세 조회
	AdminReservationVO selectResvDetail(String rid);

	// 관리자_예약 정보 수정
	int updateReservation(AdminResvUpdateForm form);

	// 관리자_qr로 정보확인
	AdminResvQRCheckVO selectResvByQR(String rid);

	// 관리자_어드민 간 같은 곳에서 일하는지
	WorkAtSamePlaceVO findWorkAtTheSamePlace(@Param("loginUserId") String loginUserId, @Param("confirm") String confirm);
	
	//관리자_예약 확정
	int confirmReservation(AdminResrvQRConfirmVO vo);
}
