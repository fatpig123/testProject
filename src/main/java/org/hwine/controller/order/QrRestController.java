package org.hwine.controller.order;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class QrRestController {
	
	@GetMapping("/qr")
	public Object createQr(@RequestParam String url) throws WriterException, IOException {
		int width = 200;
		int height = 200;
		BitMatrix matrix = new MultiFormatWriter().encode(url, BarcodeFormat.QR_CODE, width, height);

		try (ByteArrayOutputStream out = new ByteArrayOutputStream();) {
			log.info("QR 코드 URL : " + url);
			MatrixToImageWriter.writeToStream(matrix, "PNG", out);
			return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(out.toByteArray());
		}
	}
}
