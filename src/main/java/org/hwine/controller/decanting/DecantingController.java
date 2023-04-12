package org.hwine.controller.decanting;

import java.security.Principal;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

import org.hwine.domain.decanting.AvgVO;
import org.hwine.domain.decanting.FollowVO;
import org.hwine.domain.member.FollowerVO;
import org.hwine.domain.product.DecantingBookVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.SimpleWineVO;
import org.hwine.exception.CustomNotFoundException;
import org.hwine.exception.ErrorCode;
import org.hwine.service.decanting.DecantingService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lilittlecat.chatgpt.offical.ChatGPT;

import okhttp3.OkHttpClient;

/**
 * 디켄팅북 관련 컨트롤러
 * 
 * @author 조일우
 * @since 2023.03.09
 * @version 1.0
 * 
 *          <pre>
* 수정일        		수정자       				수정내용
* ----------  --------    ---------------------------
* 2023.03.09  	조일우       		최초 생성
* 2023.03.11	조일우			작성, 수정 기능 구현
* 2023.03.13	조일우			팔로우 기능 구현
* 2023.03.15	조일우			작성, 수정 기능 보안
* 2023.03.16	조일우			미로그인 접근 기능 구현
 *          </pre>
 * 
 */

@Controller
@RequestMapping("/decanting")
public class DecantingController {

	final private int listNum = 9;

	@Autowired
	private DecantingService service;

	@GetMapping("/decantingBook")
	public String decantingBook(Principal principal, Model model,
			@RequestParam(value = "db_id", required = false) String db_id,
			@RequestParam(value = "w_id", required = false) String w_id) {
		System.out.println("w_id = " + w_id + " db_id : " + db_id);
		
		if(w_id == null && db_id == null) {
			throw new CustomNotFoundException(ErrorCode.NOT_FOUND_PAGE_URL);
		}
		
		if (w_id == null && db_id != null) {
			DecantingBookVO vo = service.getReview(db_id);
			model.addAttribute("wine", vo);
			if (principal != null) {
				if (vo.getM_email().equals(principal.getName())) {
					model.addAttribute("writeAble", 1);
				} else {
					model.addAttribute("writeAble", 0);
				}
				if (vo.getM_grade() == 0 && !vo.getM_email().equals(principal.getName())) {
					return "/";
				}
			} else {
				model.addAttribute("writeAble", 0);
			}
		} else if (principal != null) {
			db_id = service.checkDB(w_id, principal.getName());
			if (null != db_id) {
				DecantingBookVO vo = service.getReview(db_id);
				model.addAttribute("wine", vo);
				if (vo.getM_email().equals(principal.getName())) {
					model.addAttribute("writeAble", 1);
				} else {
					model.addAttribute("writeAble", 0);
				}

				if (vo.getM_grade() == 0 && !vo.getM_email().equals(principal.getName())) {
					return "/";
				}
			} else {
				DecantingBookVO vo = service.getWineMin(w_id);
				model.addAttribute("wine", vo);
				System.out.println("w_id = " + w_id + " db_id : " + db_id);
				model.addAttribute("writeAble", 1);
				model.addAttribute("NewDB", 1);
			}
		} else {
			return "/";
		}
		return "/decanting/decantingBook";
	};

	@PostMapping("/write.do")
	@ResponseBody
	public void decantingBookWrite(Principal principal, @RequestParam("content") String content,
			@RequestParam("rating") int rating, @RequestParam("sweetness") int sweetness,
			@RequestParam("tannin") int tannin, @RequestParam("body") int body, @RequestParam("acidity") int acidity,
			@RequestParam("w_id") String w_id, @RequestParam("hide") int hide) {
		System.out.println(content + rating + sweetness + tannin + body + acidity + w_id);
		service.DWrite(principal.getName(), w_id, content, rating, sweetness, tannin, body, acidity, hide);
	};

	@GetMapping("/followList")
	public String followList(Model model, Principal principal) {
		final int followNum = 20;
		final int start = 1;

		model.addAttribute("followList", service.getFollowList(principal.getName(), start, start + followNum));
		return "/decanting/followList";
	}

	@PostMapping("/moreFollow")
	@ResponseBody
	public List<FollowerVO> moreFollow(Model model, Principal principal, @RequestParam("start") int start) {
		final int followNum = 20;
		return service.getFollowList(principal.getName(), start, start + followNum);
	}

	@PostMapping("/follow")
	@ResponseBody
	public void follow(Principal principal, @RequestParam("follow") int follow,
			@RequestParam(value = "f_id") String f_id) {
		System.out.println(follow + " : " + f_id);
		if (follow < 0) {
			service.followInsert(f_id, principal.getName());
		} else {
			System.out.println(f_id);
			service.follow(follow, f_id);
		}
	}

	@GetMapping("/bookList")
	public String getBookList(Principal principal, @RequestParam(value = "db_id", required = false) String db_id,
			Model model) throws Exception {
		List<DecantingBookVO> list = null;

		int reviewNum = 0;
		FollowVO followVO = null;
		List<ProductVO> blList = null;
		List<ProductVO> brList = null;
		AvgVO HAvg = null;
		AvgVO myAvg = null;
		if (db_id != null) {
			list = service.getReviewList(db_id, 1, 10,0, null);
			System.out.println(list);
			reviewNum = service.getReviewNum(db_id, 1, 10, 0, null);
			HAvg = service.getHAvg(db_id);
			model.addAttribute("HAvg", HAvg);
			if (principal == null) {
				followVO = service.following(db_id, null);
				model.addAttribute("followVO", followVO);
				List<ProductVO> rList = service.getbrList(db_id, null, (int) Math.round(HAvg.getAcidAvg()),
						(int) Math.round(HAvg.getBodyAvg()), (int) Math.round(HAvg.getSweetAvg()),
						(int) Math.round(HAvg.getTanninAvg()));
				model.addAttribute("rList", rList);
			} else {
				myAvg = service.getMyAvg(principal.getName());

				blList = service.getblList(db_id, principal.getName());
				brList = service.getbrList(db_id, principal.getName(),
						(int) Math.round((HAvg.getAcidAvg() + myAvg.getAcidAvg()) / 2),
						(int) Math.round((HAvg.getBodyAvg() + myAvg.getBodyAvg()) / 2),
						(int) Math.round((HAvg.getSweetAvg() + myAvg.getSweetAvg()) / 2),
						(int) Math.round((HAvg.getTanninAvg() + myAvg.getTanninAvg()) / 2));

				model.addAttribute("blList", blList);
				model.addAttribute("brList", brList);
				model.addAttribute("db_id", db_id);
				model.addAttribute("MyAvg", myAvg);
				followVO = service.following(db_id, principal.getName());
				model.addAttribute("followVO", followVO);
				System.out.println(followVO);
			}
		} else if (principal != null) {
			myAvg = service.getMyAvg(principal.getName());
			model.addAttribute("MyAvg", myAvg);

			List<ProductVO> rList = service.getbrList(null, principal.getName(), (int) Math.round(myAvg.getAcidAvg()),
					(int) Math.round(myAvg.getBodyAvg()), (int) Math.round(myAvg.getSweetAvg()),
					(int) Math.round(myAvg.getTanninAvg()));
			model.addAttribute("rList", rList);

			list = service.getMyReviewList(principal.getName(), 1, 10, 0, null);
			reviewNum = service.getMyReviewNum(principal.getName(), 1, 10, 0, null);
			model.addAttribute("myReview", 1);
			DecantingBookVO vo = service.getMyReview(principal.getName());
			model.addAttribute("name", vo.getM_nickname());
			followVO = service.following(null, principal.getName());
			model.addAttribute("followVO", followVO);
			System.out.println(followVO);
		} else {
			return "/login";

		}
		if (!list.isEmpty()) {
			model.addAttribute("reviewNum", reviewNum);
		}
		model.addAttribute("bookList", list);
		return "/decanting/bookList";
	}

	@GetMapping("/newBookList")
	@ResponseBody
	public List<DecantingBookVO> getBookList(Principal principal,
			@RequestParam(value = "db_id", required = false) String db_id, @RequestParam(value = "start") int start,
			@RequestParam(value = "ctgr", required = false) String ctgr,
			@RequestParam(value = "sort", required = false) int sort, Model model) {
		List<DecantingBookVO> list = null;
		DecantingBookVO vo = service.getReview(db_id);
		if (ctgr.equals("-")) {
			ctgr = null;
		}
		if (principal != null && principal.getName().equals(vo.getM_email())) {
			list = service.getMyReviewList(principal.getName(), start, start + listNum, sort, ctgr);
			if (!list.isEmpty()) {
				list.get(0).setCnt(service.getMyReviewNum(principal.getName(), start, start + listNum, sort, ctgr));
			}
		} else {
			list = service.getReviewList(db_id, start, start + listNum, sort, ctgr);
			if (!list.isEmpty()) {
				list.get(0).setCnt(service.getReviewNum(db_id, start, start + listNum, sort, ctgr));
			}
		}
		;
		for (DecantingBookVO votmp : list) {
			votmp.setM_email("");
		}
		return list;
	}

	@GetMapping("/wineRec")
	@ResponseBody
	public String winRecommand(@RequestParam(value = "prompt") String prompt) {
		OkHttpClient client = new OkHttpClient.Builder().readTimeout(120, TimeUnit.SECONDS)
				.writeTimeout(120, TimeUnit.SECONDS).build();
		ChatGPT chatGPT = new ChatGPT("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", client);
		String ans = "0";
		ans = chatGPT.ask(prompt +" 와인이 존재해? YES or NO로 대답해줘");
		System.out.println(ans);
		if(ans.contains("YES")) {
			ans = "1";
		}
		return ans;
	}

	@GetMapping("/wineRec2")
	@ResponseBody
	public List<SimpleWineVO> winRecommand2(@RequestParam(value = "prompt") String prompt) {
		List<SimpleWineVO> list = new ArrayList<SimpleWineVO>();
		
		OkHttpClient client = new OkHttpClient.Builder().readTimeout(120, TimeUnit.SECONDS)
				.writeTimeout(120, TimeUnit.SECONDS).build();
	      long beforeTime = System.currentTimeMillis();
		ChatGPT chatGPT = new ChatGPT("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", client);
		String ans =  chatGPT.ask(prompt+" 에 대해 50자 내로 설명해주고 json format [{\"name\" : name, \"desc\" : desc}] 으로 와인이름은 영어로 설명은 한국어로 와인 3개 추천해줘");
	    System.out.println(ans);
	      long afterTime = System.currentTimeMillis(); 
	      long secDiffTime = (afterTime - beforeTime)/1000;
	      System.out.println("시간차이(m) : "+secDiffTime);
	      beforeTime = System.currentTimeMillis();
	    int jsonIndex = ans.indexOf("[{");
	    if( jsonIndex < 0) {
	    	return list;
	    }
	    String json = ans.substring(jsonIndex);
	    System.out.println(json);
	    ans = ans.substring(0,jsonIndex - 1);
		JSONArray array = new JSONArray(json);  
	      
	      for(int i = 0; i < array.length(); i++) {
	    	  JSONObject object = array.getJSONObject(i);  
	    	  String tmp = deAccent(object.getString("name")).replaceAll("[0-9]", "").replace("-", "").replace("'", "");
	    	  System.out.println(tmp);
	    	  if(tmp.substring(tmp.length()).equals(" ")) {
	    		  tmp = tmp.substring(0,tmp.length() -1);
	    	  }
	    	  SimpleWineVO vo = service.isWineThere(tmp.replace(" ", "%").replace(",", ""));
	    	  if(vo != null) {
			      vo.setDesc(object.getString("desc"));  
			      list.add(vo);  
	    	  }
	      }
	      if(!list.isEmpty()) {
	    	  list.get(0).setMainDesc(ans);
	      }
	      System.out.println(list);
	      afterTime = System.currentTimeMillis(); 
	      secDiffTime = (afterTime - beforeTime)/1000;
	      System.out.println("시간차이(m) : "+secDiffTime);
		return list;
	}
	
	@GetMapping("/anvWine")
	@ResponseBody
	public List<SimpleWineVO> getAnyversary ( ){
		List<SimpleWineVO> list = new ArrayList<SimpleWineVO>();
		list = service.getAnvWine();
		return list;
	}
	
    public String deAccent(String str) {
        String nfdNormalizedString = Normalizer.normalize(str, Normalizer.Form.NFD); 
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        return pattern.matcher(nfdNormalizedString).replaceAll("");
    }
	
	
}
