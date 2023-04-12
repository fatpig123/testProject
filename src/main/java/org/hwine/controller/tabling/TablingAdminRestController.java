package org.hwine.controller.tabling;

import org.hwine.domain.tabling.AdminReservationDTO;
import org.hwine.domain.tabling.AdminResvQRCheckDTO;
import org.hwine.domain.tabling.AdminResvUpdateForm;
import org.hwine.service.tabling.TablingAdminService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/api/admin/tabling")
@RequiredArgsConstructor
@Log4j
public class TablingAdminRestController {

	private final TablingAdminService tablingAdminService;
	
	@GetMapping("/todaycnt")
	public ResponseEntity<Integer> getTodayReservationCnt(Authentication authentication) {
		return new ResponseEntity<>(tablingAdminService.getTodayReservationCnt(authentication.getName()), HttpStatus.OK);
	}
	
	@GetMapping("/detail/{rid}")
	public ResponseEntity<AdminReservationDTO> getTodayReservationCnt(@PathVariable String rid) {
		return new ResponseEntity<>(tablingAdminService.getResvDetail(rid), HttpStatus.OK);
	}
	
	@PostMapping("/modify")
	public ResponseEntity<Void> modifyResv(@RequestBody AdminResvUpdateForm form) {
		log.info("수정" + form);
		if(tablingAdminService.modifyReservation(form) == 1) {
			return new ResponseEntity<>(HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/qr_show/{rid}")
	public ResponseEntity<AdminResvQRCheckDTO> getQrResvInfo(@PathVariable String rid) {
		return new ResponseEntity<>(tablingAdminService.findQRInfo(rid), HttpStatus.OK);
	}
	
	@PostMapping("/confirm")
	public ResponseEntity<?> confirmResv(Authentication authentication, @RequestBody AdminResvQRCheckDTO dto) {
		log.info("확인" + dto);
		tablingAdminService.confirmResv(authentication.getName(), dto);
		return new ResponseEntity<>(HttpStatus.OK);
	}

}
