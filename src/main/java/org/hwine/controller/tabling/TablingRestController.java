package org.hwine.controller.tabling;

import java.util.List;

import javax.validation.Valid;

import org.hwine.domain.tabling.MenuCategory;
import org.hwine.domain.tabling.MyPageTabling;
import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.hwine.domain.tabling.TablingCalendarDay;
import org.hwine.service.member.MemberService;
import org.hwine.service.tabling.TablingService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 테이블링 Controller
 * 
 * @author : 김주현
 * @since 2023.03.15
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.15  김주현       	최초 생성(좌석 선택 로직)
* 2023.03.21  김주현		예약 로직
* 2023.03.23  김주현		지점 + 캘린더 조회
* 2023.03.25  김주현		예약 내역 조회 로직
* 2023.03.27  김주현		예약 취소 로직
 *          </pre>
 * 
 */

@RestController
@SessionAttributes("header_infos")
@RequestMapping("/api/tabling")
@RequiredArgsConstructor
@Log4j
public class TablingRestController {

	private final TablingService tablingService;
	private final MemberService memberService;

	@PostMapping("/seatStatus")
	public ResponseEntity<List<TablesAvailableVO>> getTableStatus(TableSelectedOptionDTO dto) {
		log.info("테이블 init 요청");
		return new ResponseEntity<>(tablingService.getInitReservationStatus(dto), HttpStatus.OK);
	}

	@PostMapping("/checkAvailable")
	public ResponseEntity<Void> checkAvailable(TableSelectedOptionDTO dto) {
		log.info("테이블 상태");
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@GetMapping("/calendar/{store}")
	public ResponseEntity<List<TablingCalendarDay>> getInitCalendar(@PathVariable String store) {
		log.info("처음 달력");
		return new ResponseEntity<>(tablingService.checkCalendar(store), HttpStatus.OK);
	}

	@GetMapping("/menus/{store}")
	public ResponseEntity<List<MenuCategory>> getDetailMenu(@PathVariable String store) {
		return new ResponseEntity<>(tablingService.getDetailMenu(store), HttpStatus.OK);
	}

	@GetMapping("/mypage/list/{status}/{sort}")
	public ResponseEntity<MyPageTabling> getMyTablings(Authentication authentication, @PathVariable String status,
			@PathVariable String sort) {
		log.info(status + ", " + sort);
		return new ResponseEntity<>(tablingService.getAllMyTabling(authentication.getName(), status, sort),
				HttpStatus.OK);
	}

	@PostMapping("/reservation")
	@ModelAttribute("header_infos")
	public ResponseEntity<Void> reserve(Authentication authentication, @Valid TableSelectedOptionDTO dto, BindingResult bindingResult) {
		log.info("예약, " + dto);
		tablingService.confirmReservation(authentication.getName(), dto);
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@PostMapping("/cancel_resv/{rid}")
	public ResponseEntity<Void> cancelReservation(Authentication authentication, @PathVariable String rid) {
		log.info("테이블링 취소");
		tablingService.cancelReservation(authentication.getName(), rid);
		return new ResponseEntity<>(HttpStatus.OK);
	}
}
