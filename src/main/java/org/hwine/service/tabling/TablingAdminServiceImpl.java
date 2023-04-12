package org.hwine.service.tabling;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hwine.domain.member.AuthVO;
import org.hwine.domain.tabling.AdminReservationDTO;
import org.hwine.domain.tabling.AdminReservationVO;
import org.hwine.domain.tabling.AdminResrvQRConfirmVO;
import org.hwine.domain.tabling.AdminResvQRCheckDTO;
import org.hwine.domain.tabling.AdminResvUpdateForm;
import org.hwine.domain.tabling.AdminTablingMainDTO;
import org.hwine.domain.tabling.WorkAtSamePlaceVO;
import org.hwine.exception.ErrorCode;
import org.hwine.exception.TablingException;
import org.hwine.mapper.member.MemberMapper;
import org.hwine.mapper.tabling.TablingMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 관리자 테이블링
 * 
 * @author : 김주현
 * @since 2023.04.03
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.04.03  김주현       최초 생성(예약내역 조회)
 *          </pre>
 * 
 */

@Service
@RequiredArgsConstructor
@Log4j
public class TablingAdminServiceImpl implements TablingAdminService {

	private final TablingMapper tablingMapper;
	private final MemberMapper memberMapper;

	// 관리자가 어느 지역 사람인지
	private static Map<String, String> AUTH_MAP;
	static {
		AUTH_MAP = new HashMap<>();
		AUTH_MAP.put("SEOUL", "scode1");
		AUTH_MAP.put("DAEGU", "scode2");
	}

	private String getAdminStoreId(String adminId) {
		log.info("접근 아이디" + adminId);
		List<AuthVO> auths = memberMapper.findMemberAuth(adminId);

		for (AuthVO auth : auths) {
			if (auth.getRole().equals("ROLE_ADMIN_SEOUL")) {
				return AUTH_MAP.get("SEOUL");
			} else if (auth.getRole().equals("ROLE_ADMIN_DAEGU")) {
				return AUTH_MAP.get("DAEGU");
			} else if (auth.getRole().equals("ROLE_ADMIN_TOTAL")) {
				return AUTH_MAP.get("SEOUL");
			}
		}
		throw new RuntimeException("해당 관리자가 없습니다.");
	}

	// 테이블링 메인
	public AdminTablingMainDTO getAllMainInfo(String adminId) {

		String storeId = getAdminStoreId(adminId);
		List<AdminReservationDTO> list = getTodayReservationsByScode(storeId);

		AdminTablingMainDTO dto = new AdminTablingMainDTO(getAboveCounts(storeId), list,
				calculateTodayReservations(list));
		log.info(dto);
		return dto;
	}

	// 테이블링 메인_전체관리자
	public AdminTablingMainDTO getAllMainInfoByTotalAdmin(String scode) {
		List<AdminReservationDTO> list = getTodayReservationsByScode(scode);
		AdminTablingMainDTO dto = new AdminTablingMainDTO(getAboveCounts(scode), list,
				calculateTodayReservations(list));
		log.info(dto);
		return dto;
	}

	// 테이블링 내역 조회
	@Override
	public List<AdminReservationDTO> getReservationList(String adminId) {
		return getAllReservationsByScode(getAdminStoreId(adminId));
	}

	// 테이블링 내역 조회 by. 전체관리자
	@Override
	public List<AdminReservationDTO> getReservationListByTotalAdmin(String scode) {
		return getAllReservationsByScode(scode);
	}

	// 지점별 오늘 예약건수
	@Override
	public int getTodayReservationCnt(String adminId) {
		String storeId = getAdminStoreId(adminId);
		return tablingMapper.countTodayReservations(storeId);
	}

	// 예약 상세 조회
	@Override
	public AdminReservationDTO getResvDetail(String rid) {
		AdminReservationVO vo = tablingMapper.selectResvDetail(rid);
		log.info("상세조회: " + vo);
		return new AdminReservationDTO(vo);
	}

	// 예약 정보 수정
	@Override
	public int modifyReservation(AdminResvUpdateForm form) {
		return tablingMapper.updateReservation(form);
	}

	// qr로 예약정보 조회
	@Override
	public AdminResvQRCheckDTO findQRInfo(String rid) {
		return new AdminResvQRCheckDTO(tablingMapper.selectResvByQR(rid));
	}

	// qr로 예약 확정
	@Transactional
	@Override
	public void confirmResv(String loginUserId, AdminResvQRCheckDTO dto) {

		AdminReservationVO dbData = tablingMapper.selectResvDetail(dto.getRid());

		// 1. 로그인 유저와 같은 지점에서 일하는지 확인
		WorkAtSamePlaceVO sameworkVO = tablingMapper.findWorkAtTheSamePlace(loginUserId, dto.getConfirm());
		if (sameworkVO == null)
			throw new TablingException(ErrorCode.NOT_THIS_PLACE_ADMIN);

		// 2. 예약이 이 지점인지 확인(+관리자랑 같은 곳인지도)
		String table = dbData.getSt_id();
		String scode = dto.getScode();
		String adminRole = sameworkVO.getA_role().split("_")[2];
		if (table.substring(0, 4).equals("sel1") && AUTH_MAP.get(adminRole).equals(scode)) {

		} else if (table.substring(0, 4).equals("dae1") && AUTH_MAP.get(adminRole).equals(scode)) {

		} else {
			throw new TablingException(ErrorCode.NOT_THIS_PLACE_RESV);
		}

		// 0. 현재 예약상태가 1일때만 가능
		if (dbData.getR_status() == 0) {
			throw new TablingException(ErrorCode.RESV_STATUS_CANCEL);
		} else if (dbData.getR_status() == 2) {
			throw new TablingException(ErrorCode.RESV_STATUS_DONE);
		} else if (dbData.getR_status() == -1) {
			throw new TablingException(ErrorCode.RESV_STATUS_NOSHOW);
		}

		// 오늘 예약건인지 확인
		if (!dbData.getR_date().equals(LocalDate.now()))
			throw new TablingException(ErrorCode.NOT_TODAY_RESV);

		// 입장 가능한 시간인지 확인(예약 10분 전 부터 ~ 예약 20분 후까지_
		int hour = LocalDateTime.now().getHour();
		int min = LocalDateTime.now().getMinute();
		//(!(dbData.getR_time() - 1 == hour && min >= 50) && !(dbData.getR_time() == hour && min <= 20)): 원래로직
		if (!(dbData.getR_time() - 1 == hour && min >= 50) && !(dbData.getR_time() == hour && min <= 40)) {
			throw new TablingException(ErrorCode.TOO_EARLY_RESV);
		}

		System.out.println("예외처리 모두 통과");
		// [성공처리] 같은 지점에서 일하면 추가 + 상태변경
		AdminResrvQRConfirmVO updateform = new AdminResrvQRConfirmVO(dto);
		updateform.addAdminNote(sameworkVO.getM_email());
		if (tablingMapper.confirmReservation(updateform) != 1)
			throw new RuntimeException(ErrorCode.DB_UPDATE_ERR.getMessage());
	}

	//전체 예약조회
	private List<AdminReservationDTO> getAllReservationsByScode(String scode) {
		List<AdminReservationVO> vos = tablingMapper.selectReservationsByStoreId(scode);
		List<AdminReservationDTO> result = new ArrayList<>();
		for (AdminReservationVO vo : vos) {
			result.add(new AdminReservationDTO(vo));
		}
		return result;
	}
	
	//오늘 예약 조회
	private List<AdminReservationDTO> getTodayReservationsByScode(String scode) {
		List<AdminReservationVO> vos = tablingMapper.selectTodayReservations(scode);
		List<AdminReservationDTO> result = new ArrayList<>();
		for (AdminReservationVO vo : vos) {
			result.add(new AdminReservationDTO(vo));
		}
		return result;
	}

	private int[] getAboveCounts(String storeId) {
		int[] counts = new int[4];
		counts[0] = tablingMapper.countTodayReservations(storeId); // 오늘 총 예약건수
		counts[1] = tablingMapper.countAfterOneHourReservation(storeId); // 한 시간 뒤 예약건수 조회
		counts[2] = tablingMapper.countTodayNoshow(storeId); // 오늘 노쇼 건수 조회
		counts[3] = tablingMapper.countTodayNewReservation(storeId); // 오늘 신규 예약건수

		return counts;
	}

	private int calculateTodayReservations(List<AdminReservationDTO> list) {
		int cnt = 0;
		for (AdminReservationDTO dto : list) {
			if (dto.getRstatus() == 2)
				cnt++;
		}
		return cnt;
	}
}
