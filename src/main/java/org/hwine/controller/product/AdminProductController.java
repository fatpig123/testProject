package org.hwine.controller.product;

import java.util.List;

import org.hwine.domain.product.AdminProductListVO;
import org.hwine.domain.product.ProductInsertVO;
import org.hwine.domain.product.ProductVO;
import org.hwine.domain.product.chartVO;
import org.hwine.service.member.MemberService;
import org.hwine.service.product.AdminProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RequestMapping("/admin/product")
@Controller
@Log4j
public class AdminProductController {

	@Setter(onMethod_ = @Autowired)
	private AdminProductService adminProductService;
	
	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;

	//상품 리스트(메인)
	@GetMapping("/list")
	public String productList( Model model) {
		
		System.out.println("상품 리스트 메인 진입");
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info("관리자 상품리스트 컨트롤러" + m_email);
		
		List<AdminProductListVO> productsVO = adminProductService.adminList(m_email);
		System.out.println("List<ProductVO> productsVO= " + productsVO);
		model.addAttribute("list",productsVO );
		return "/admin/productListAdmin";
	}
	
	@GetMapping("/list/scode")
	@ResponseBody
	public List<AdminProductListVO> productListScode(String s_code) {
		Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
		String m_email = loggedInUser.getName();
		log.info(m_email);
		log.info("상품 리스트 지점별 메인 진입"+s_code);
		List<AdminProductListVO> list = adminProductService.adminList(s_code);
		log.info(list.size());
		return list;
	}

	// 관리자 상품 상세
	@GetMapping("/update")
	public String productUpdateGET(ProductInsertVO productInsertVO, Model model, Authentication authentication) {
		ProductVO pVO= adminProductService.adminProductItem(productInsertVO);
		log.info(pVO);
		model.addAttribute("item", pVO);
		System.out.println(adminProductService.getSalesChart(0, productInsertVO.getW_id(), 0, authentication));
		model.addAttribute("salesChart", adminProductService.getSalesChart(0, productInsertVO.getW_id(), 0, authentication));
		model.addAttribute("genderChart", adminProductService.getMemberChart(0, 0, 0, productInsertVO.getW_id(),authentication));
		model.addAttribute("ageChart", adminProductService.getMemberChart(0, 0, 1, productInsertVO.getW_id(), authentication));
		model.addAttribute("genderAgeChart", adminProductService.getMemberChart(0, 0, 2, productInsertVO.getW_id(), authentication));
		return "/admin/productUpdateAdmin";
	}
	
	//관리자 상품 재고량 업데이트
	@PostMapping("/update")
	@ResponseBody
	public String productUpdatePOST(ProductInsertVO productInsertVO, Model model) {
		
		adminProductService.updateWineStocks(productInsertVO);
		adminProductService.updateWinePriceById(productInsertVO);
		log.info("수량 변경 후 컨트롤러 실행 " + productInsertVO);
		return "true";
	}

	@GetMapping("/registerForm")
	public String productRegister() {
		return "/admin/productRegisterAdmin";
	}
	//관리자 상품 등록
	@PostMapping("/register")
	@ResponseBody
	public void productRegisterPOST(ProductInsertVO productInsertVO) {
		log.info("상품 등록 컨트롤러>>>>>>>>>>>>>");
		log.info("name_kor" + productInsertVO.getW_name_kor());
		log.info("name " + productInsertVO.getW_name());
		log.info("price: " + productInsertVO.getW_price());
		log.info("alcohol: " + productInsertVO.getW_alcohol());
		log.info("sweet: " + productInsertVO.getW_sweetness());
		log.info("acidity: " + productInsertVO.getW_acidity());
		log.info("body: " + productInsertVO.getW_body());
		log.info("tannin: " + productInsertVO.getW_tannin());
		log.info("ferment: " + productInsertVO.getW_ferment());
		log.info("temperature: " + productInsertVO.getW_temperature());
		log.info("volume: " + productInsertVO.getW_volume());
		log.info("type: " + productInsertVO.getW_type());
		log.info("variety: " + productInsertVO.getWv_variety());
		log.info("variety_kor: " + productInsertVO.getWv_variety_kor());
		log.info("nation kor: " + productInsertVO.getWr_nation_kor());
		log.info("nation: " + productInsertVO.getWr_nation());
		log.info("area_kor: " + productInsertVO.getWr_area_kor());
		log.info("area: " + productInsertVO.getWr_area());
		log.info("wm_maker_kor: " + productInsertVO.getWm_maker_kor());
		log.info("wm_maker: " + productInsertVO.getWm_maker());
		//log.info("wa_name: " + productInsertVO.getWa_name());
		log.info("was_name: " + productInsertVO.getWas_name().toString());
		log.info("wa_img_url : " + productInsertVO.getWa_img_url());
		//log.info("wf_name: " + productInsertVO.getWf_name());
		log.info("wf_img_url: " + productInsertVO.getWf_img_url());
		log.info("wfs_name: " + productInsertVO.getWfs_name());
		log.info("sws_stock: " + productInsertVO.getSws_stock());
		log.info("s_code: " + productInsertVO.getS_code());
		log.info("s_name: " + productInsertVO.getS_name());
		log.info("img: " + productInsertVO.getW_img());
		
		adminProductService.registerProduct(productInsertVO);
	}

	//백오피스 상품 삭제
	@DeleteMapping("/delete")
	@ResponseBody
	public void productDelete(String w_id) {
		log.info("상품 삭제 컨트롤러 >>>>>>>>>>>");
		adminProductService.deleteWineById(w_id);
	}
	
	@GetMapping("/salesChart")
	@ResponseBody
	public List<chartVO> getSalesChart(@RequestParam("type")int type, 
			@RequestParam(value = "w_id", required = false)String w_id,
			@RequestParam("sumCount")int sumCount, Authentication auth){
		return adminProductService.getSalesChart(type, w_id, sumCount, auth);
	}
	
	@GetMapping("/ctgrChart")
	@ResponseBody
	public List<chartVO> getCtgrChart(@RequestParam("type")int type,
			@RequestParam("sumCount") int sumCount, Authentication auth){
		return adminProductService.getCtgrChart(type, sumCount, auth);
	}
	
	@GetMapping("/memberChart")
	@ResponseBody
	public List<chartVO> getMemberChart(@RequestParam("type")int type,
			@RequestParam("sumCount") int sumCount,@RequestParam("genderAge") int genderAge,@RequestParam(value = "w_id", required = false) String w_id,  Authentication auth){
		return adminProductService.getMemberChart(type, sumCount, genderAge,w_id, auth);
	}
	
	@GetMapping("/reqPro")
	@ResponseBody
	public List<ProductVO> getReqPro(@RequestParam("scode") int scode){
		List<ProductVO> list = adminProductService.getReqPro(scode);
		return list;
	}
}
