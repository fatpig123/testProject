package org.hwine.domain.order;

import java.util.Date;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MyRecentPickupVO {

	private String po_id;
	private int po_status;
	private Date po_register_date;
	private Date po_booking_date;
	private int poi_quantity;
	private Date po_visited_date;
	private int po_total_price;
	private String s_code;
	private int w_price;
	private String w_name_kor;
	private String w_img;
	private String w_id;
}
