package org.hwine.domain.product;

import org.hwine.domain.order.Criteria;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	// input variables
	private Criteria cri;
	private int total;

	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;

	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;

		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		this.startPage = 1;
		
		// -number : 총 페이지에 따라 수정 (n-1)
		this.startPage = this.endPage - 9;
		
		int realEnd = (int) (Math.ceil((double)total / cri.getAmount()));

		if (realEnd < this.endPage)
			this.endPage = realEnd;

		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}