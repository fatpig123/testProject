package org.hwine.exception;

import org.springframework.http.HttpStatus;

import lombok.AllArgsConstructor;
import lombok.Getter;

//응답에 담을 내용(응답 객체를 하나 더 생성해도됨)
@Getter
@AllArgsConstructor
public enum ErrorCode {
	
	//일반
	METHOD_NOT_ALLOWED(HttpStatus.METHOD_NOT_ALLOWED, "Method Not Allowed"),
	NOT_FOUND_PAGE_URL(HttpStatus.NOT_FOUND, "URL이 이상함"),
	
	//공통
	DB_UPDATE_ERR(HttpStatus.INTERNAL_SERVER_ERROR, "DB 업데이트가 실패했습니다."),
	
	//회원
	NOT_FOUND_MEMBER(HttpStatus.BAD_REQUEST, "일치하는 회원정보가 없습니다."),
	
	
	//Product
	NOT_FOUND_PRODUCT(HttpStatus.BAD_REQUEST, "일치하는 상품정보가 없습니다."),
	
	//Decanting Book
	NOT_FOUND_DECATING_BOOK(HttpStatus.BAD_REQUEST, "일치하는 디켄팅북 정보가 없습니다."),
	
	//Tabling
	NOT_THIS_PLACE_RESV(HttpStatus.BAD_REQUEST, "현재 지점의 예약이 아닙니다."),
	NOT_THIS_PLACE_ADMIN(HttpStatus.BAD_REQUEST, "현재 지점의 관리자가 아닙니다."),
	NOT_TODAY_RESV(HttpStatus.BAD_REQUEST, "오늘 예약 건이 아닙니다."),
	TOO_EARLY_RESV(HttpStatus.BAD_REQUEST, "입장 가능한 시간이 아닙니다."),
	RESV_STATUS_NOSHOW(HttpStatus.BAD_REQUEST, "노쇼 처리된 예약입니다."),
	RESV_STATUS_CANCEL(HttpStatus.BAD_REQUEST, "취소 처리된 예약입니다."),
	RESV_STATUS_DONE(HttpStatus.BAD_REQUEST, "이미 처리가 완료된 예약입니다."),
	
	ALREADY_RESVED_SEAT(HttpStatus.BAD_REQUEST, "이미 예약된 좌석입니다."),
	NO_STORE_FOUND(HttpStatus.BAD_REQUEST, "존재하지 않는 지점입니다.")
	;
	
    private final HttpStatus status;
    private final String message;
}
