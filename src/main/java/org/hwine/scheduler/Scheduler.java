package org.hwine.scheduler;

import org.hwine.mapper.tabling.TablingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Component
@Log4j
public class Scheduler {
	
	// OrderMapper 의존성 주입
	@Setter(onMethod_ = @Autowired)
	private TablingMapper mapper;

	//30분마다 예약 시간 확인 및 노쇼 처리
    @Scheduled(cron = "0 30/30 * 1/1 * ?")
    public void autoNoshow() {
       log.info("Spring Scheduler 실행 -> 30분마다 예약 시간 확인 및 노쇼 처리");
       mapper.updateReservationStatusByScheduler();
       log.info("Spring Scheduler 실행 완료");
    }
}
