package org.hwine.controller.product;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.hwine.domain.product.DecantingBookVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.filteredProductVO;
import org.hwine.exception.CustomNotFoundException;
import org.hwine.exception.ErrorCode;
import org.hwine.service.decanting.DecantingService;
import org.hwine.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

/**
 * 상품 관련 Controller
 * 
 * @author : 노희진
 * @since 2023.03.06
 * @version 1.0
 * 
 *          수정일 		수정자 		수정내용 
 *          ---------- -------- ---------------------------
 *          2023.03.06 노희진   최초 생성 
 *          2023.03.08 노희진   디캔팅 북 관련 로직 추가 
 *          2023.03.13 노희진   정렬로직 추가 
 *          2023.03.14 노희진   무한 스크롤 로직 추가 
 *          2023.03.16 노희진   필터링된 상품 목록 로직 추가
 *          2023.03.21 노희진   필터값 중복 선택 로직 추가
 *          2023.03.28 노희진   무한 스크롤, 정렬, 필터 로직 오류 수정
 *          2023.04.09 김주현	일치하지 않는 상품 예외처리 추가
 */

@Log4j
@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private DecantingService Dservice;

	@Autowired
	private ProductService service;

	
	// 1) 상품 리스트 (정렬x & 상품 리스트에 맨 처음 로드될 때)
	@GetMapping(value = "/list")
	public String productList(Model model, @RequestParam(value = "ctgr", required = false) String ctgr) {
		model.addAttribute("itemList", service.productList("recent", 1, 6));
		if(ctgr != null) {
			model.addAttribute("headerCtgr",ctgr);
		}
		return "/product/productList";
	}

	// 2) 상품 리스트 (정렬o / 무한 스크롤o)
	@GetMapping(value = "/sortedAdded")
	@ResponseBody
	public List<ProductVO> addProductList(Model model, filteredProductVO filtered, @RequestParam("sort") String sort, @RequestParam("startIdx") int startIdx, @RequestParam(value = "endIdx", required = false) int endIdx) {
		List<ProductVO> list;
		if (filtered==null) {
			list = service.productList(sort, startIdx, endIdx);
		} else {
			list = service.combinedProductList(filtered, sort, startIdx, endIdx);
			log.info("필터링 or 정렬 후 startIdx " + startIdx);
			log.info("필터링 or 정렬 후 endIdx " + endIdx);
		}
		return list;
	}

	// 3) 필터링된 상품 리스트 (필터링된 상품 리스트에 맨 처음 로드될 때)
	@GetMapping(value = "/filteredList")
	public String filteredProductList(Model model, filteredProductVO filtered) {
		List<ProductVO> list = service.combinedProductList(filtered, "recent", 1, 6);
		model.addAttribute("itemList", list);
		model.addAttribute("filter",filtered);
		return "/product/productList";
	}

	// 5) 필터링된 상품 개수 출력
	@GetMapping(value = "/filteredCnt")
	@ResponseBody
	public int filteredProductListSize(filteredProductVO filtered) {
		int fCnt = service.filteredCnt(filtered);
		log.info(fCnt);
		return fCnt;
	}

	// 상품 상세
	@GetMapping(value = "/item")
	public String productItem(@RequestParam("w_id") String w_id, Model model, Principal principal) {
		System.out.println("상품 개별 페이지 진입");
		
		ProductVO vo = service.selectProductItem(w_id);
		if(vo == null) {
			throw new CustomNotFoundException(ErrorCode.NOT_FOUND_PRODUCT);
		}
		model.addAttribute("itemInfo", vo);

		model.addAttribute("itemStockInfo", service.productStockInfo(w_id));
		int sumRate = 0;
		int avgRate = 0;
		List<DecantingBookVO> decantingList = new ArrayList<>();
		if (principal == null) {
			decantingList = service.productDecantingBook(w_id, 1, 3);
			if(decantingList.size() < 1) {
				model.addAttribute("decantingBookCnt", 0);
			}
			else {
				model.addAttribute("decantingBookCnt", Dservice.getReviewNum(decantingList.get(0).getDb_id(), 1, 10, 0 , null));
			}
		} else {
			decantingList = service.productDecantingBookLogin(w_id, principal.getName(), 1, 3);
			if(decantingList.size() < 1) {
				model.addAttribute("decantingBookCnt", 0);
			}
			else {
				model.addAttribute("decantingBookCnt", Dservice.getMyReviewNum(principal.getName(), 1, 10, 0 , null));
			}
		}
		if (decantingList.size() > 0) {
			for (int i = 0; i < decantingList.size(); i++) {
				sumRate += decantingList.get(i).getDb_rating();
			}
			avgRate = sumRate / decantingList.size();
		}
		// 디캔팅 북 리스트
		model.addAttribute("avgRate", avgRate);
		model.addAttribute("decantingList", decantingList);
		
		// 유사 상품 리스트
		List<ProductVO> relatedProductList = service.relatedProductList(w_id);
		model.addAttribute("relatedProductList", relatedProductList);
		return "/product/productItem";
	}

	// 상품에 대한 리뷰 목록
	@GetMapping("/getReview")
	@ResponseBody
	public List<DecantingBookVO> getReview(@RequestParam("w_id") String w_id, @RequestParam("start") int start,
			 Principal principal) {
		final int moreNum = 10;
		List<DecantingBookVO> decantingList = new ArrayList<>();
		if (principal == null ) {
			decantingList = service.productDecantingBook(w_id, start, start + moreNum);
			System.out.println(decantingList+"notlogin");
		} else {
			decantingList = service.productDecantingBookLogin(w_id, principal.getName(), start, start + moreNum);
			System.out.println(decantingList);
		}
		return decantingList;
	}

	// 유사 상품 리스트
	@GetMapping(value = "/sortedAdded2")
	@ResponseBody
	public List<ProductVO> addRelatedProductList(@RequestParam("w_id") String w_id) {
		List<ProductVO> list = service.relatedProductList(w_id);
		return list;
	}
	
}
