package org.hwine.domain.tabling;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * 테이블링 동안 유저의 요청 정보를 담음(form)
 * 
 * @author : 김주현
 * @since 2023.03.24 
 * @version 1.0
 * 
 *          <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.24  김주현       	최초 생성
* 2023.04.01  김주현       	validation 추가
 *          </pre>
 * 
 */

@Getter
@Setter
@NoArgsConstructor
@ToString
public class TableSelectedOptionDTO {

	@NotBlank
	@Pattern(regexp="scode\\d{2}")
	private String storeId;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate selectedDate;
	
	@Range(min = 11, max = 22)
	private int selectedTime;
	
	@Pattern(regexp="^[a-zA-Z]{4}_[a-zA-Z]{2}\\d{2,3}_table\\d+$")
	private String tableId;
	
	@Range(min=1, max=6)
	private int headCount;
	
	private String requestMsg;
}