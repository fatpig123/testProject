package org.hwine.domain.order;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
* 주문 시, 문자 전송 관련 DTO
* @author : 차민수
* @since 2023.03.20
* @version 1.0 
* 
* <pre>
* 수정일       수정자       수정내용
* ----------  --------    ---------------------------
* 2023.03.20  차민수       	최초 생성
* </pre>
* 
*/
@Getter
@Setter
@NoArgsConstructor
@ToString
public class PickUpDTO {

	private String pickupId;
	private String pickupName;
	private Date pickupDate;
	private String to;
	private boolean status;
	private String result;
	private int orderStatus;
	
	public void addResult(String pickupId, String pickupName, Date pickupDate, boolean status, String result, int orderStatus) {
		
		this.pickupId = pickupId;
		this.pickupName = pickupName;
		this.pickupDate = pickupDate;
		this.status = status;
		this.result = result;
		this.orderStatus = orderStatus;
	}
}
