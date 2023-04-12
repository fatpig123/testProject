package org.hwine.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qrcode")
public class QRController {

	@GetMapping("/load")
	public String qrcodeLoad() {
		return "/admin/websocket/qrcodeRead";
	}
	
	@GetMapping("/loadTest")
	public String qrcodeLoadTest() {
		return "/admin/websocket/qrCodeReadTest";
	}
}
