package org.hwine.controller.tabling;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

import org.hwine.domain.tabling.TableSelectedOptionDTO;
import org.hwine.domain.tabling.TablesAvailableVO;
import org.hwine.service.tabling.TablingService;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.async.AsyncRequestTimeoutException;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/sse/api")
@Log4j
public class SseRestController {

	private final static Long SSE_KEEP_ALIVE_TIME = 7 * 61 * 1000L; //7 * 60 * 1000L;
	
	private final TablingService tablingService;
	
	public Map<String, SseEmitter> emitters = new ConcurrentHashMap<>();
	public Map<String, List<SseEmitter>> emittersWithDatetime = new ConcurrentHashMap<>();
	
	@CrossOrigin
	@GetMapping(value="/open/{memail}", consumes = MediaType.ALL_VALUE)
	public SseEmitter initSubscribe(@PathVariable String memail) throws IOException {
	
		log.info("[sse, all] " + memail );
		
		SseEmitter sseEmitter = new SseEmitter(SSE_KEEP_ALIVE_TIME);
		emitters.put(memail, sseEmitter);
		
		try {
			sseEmitter.send(SseEmitter.event().name("open_all").data(Integer.toString(emitters.size())));
		}catch (AsyncRequestTimeoutException asyncRequestTimeoutException) {
			System.out.println(asyncRequestTimeoutException);
			emitters.remove(memail);
		}
		
        sseEmitter.onError(throwable -> {
            log.error("Sse connection error", throwable);
            emitters.remove(memail);
            sseEmitter.completeWithError(throwable);
        });
        sseEmitter.onTimeout(() -> emitters.remove(memail));
        sseEmitter.onCompletion(() -> emitters.remove(memail));
        
		return sseEmitter; 
	}
	
	@CrossOrigin
	@GetMapping(value="/open/dt/{datetime}", consumes = MediaType.ALL_VALUE)
	public SseEmitter initSubscribeWithDateTime(@PathVariable String datetime) throws IOException {

		SseEmitter emitter = new SseEmitter(SSE_KEEP_ALIVE_TIME);
		
		if(emittersWithDatetime.containsKey(datetime)) {
			emittersWithDatetime.get(datetime).add(emitter);
		}else {
			List<SseEmitter> list = new CopyOnWriteArrayList<>();
			list.add(emitter);
			emittersWithDatetime.put(datetime, list);
		}
		
		try {
			emitter.send(SseEmitter.event().name("open_datetime").data("datetime init conne"));
		}catch (AsyncRequestTimeoutException asyncRequestTimeoutException) {
			log.info(asyncRequestTimeoutException);
			emittersWithDatetime.get(datetime).remove(emitter);
		}
		
		//재연결 요청 시 기존의 것을 삭제해주어야
		List<SseEmitter> list = emittersWithDatetime.get(datetime);		
		emitter.onCompletion(() -> list.remove(emitter));
		emitter.onTimeout(() -> list.remove(emitter));
		emitter.onError((e) -> list.remove(emitter));
		
		return emitter; 
	}
	
	
	//send
	@PostMapping("/viewcnt/{memail}") 
	public void sendViewEvents( @PathVariable String memail)  {
		
		log.info("[sse, view_send] " + emitters.size());
		
		for(Entry<String, SseEmitter> entry : emitters.entrySet()) {
			try {
				entry.getValue().send(SseEmitter.event().name("viewcnt").data(Integer.toString(emitters.size())));
			} catch(IllegalStateException illegalStateException) {
				log.info("아마 만료? ResponseBodyEmitter has already completed.");
				emitters.remove(memail);
				continue;
			}catch(AsyncRequestTimeoutException asyncRequestTimeoutException) {
				log.info("async_view" + asyncRequestTimeoutException);
				emitters.remove(memail);
				continue;
			}catch (JsonProcessingException jsonEx) {
				jsonEx.printStackTrace();
			} catch (IOException e) {
				log.info(e);
				emitters.remove(memail);
			}
		}
		return;
	}
	
	@PostMapping(value="/seatUpdate/{datetime}/{memail}") 
	public void sendEvents(@PathVariable String datetime, @PathVariable String memail, TableSelectedOptionDTO options)  {
		
		log.info("[sse, datetime_send] " + emittersWithDatetime.get(datetime).size());
		
		List<TablesAvailableVO> seats = tablingService.getInitReservationStatus(options);
		ObjectMapper objectMapper = new ObjectMapper();
		
		for(SseEmitter emitter : emittersWithDatetime.get(datetime)) {
			try {
				emitter.send(SseEmitter.event().name("update_seat").data(objectMapper.writeValueAsString(seats)));
			} catch(IllegalStateException illegalStateException) {
				log.info("아마 만료? ResponseBodyEmitter has already completed.");
				emittersWithDatetime.get(datetime).remove(emitter);
				continue;
			}catch(AsyncRequestTimeoutException asyncRequestTimeoutException) {
				log.info("async_datetime" + asyncRequestTimeoutException);
				emitters.remove(memail);
				continue;
			}catch (JsonProcessingException jsonEx) {
				jsonEx.printStackTrace();
			} catch (IOException e) {
				log.info(e);
				emittersWithDatetime.get(datetime).remove(emitter);
			}
		}
		
		//all에서 삭제
		try {
			emitters.remove(memail);
		}catch (Exception e) {
			log.info(e);
		}
		return;
	}
	
    // timeout 마다 에러 로그 방지
    @ExceptionHandler(AsyncRequestTimeoutException.class)
    public @ResponseBody String asyncTimeout(AsyncRequestTimeoutException e) {
        return "SSE timeout... OK";
    }
    
    @ExceptionHandler(IllegalStateException.class)
    public @ResponseBody String cannotSendErrorAfterResponseCommit(IllegalStateException e) {
    	log.info("illegal " + e.getStackTrace());
    	return "SSE sendError ...";
    }
  
}