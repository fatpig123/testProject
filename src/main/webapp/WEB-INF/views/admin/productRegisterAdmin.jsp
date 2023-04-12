<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!DOCTYPE html>
<html lang="ko">
<style>
.form-row-regi-regi {
	flex-wrap: wrap;
}

.txt {
	font-size: large;
	font-weight: 600;
	margin-left: 10px;
}

#aroma-checkboxes label {
	margin-right: 6px;
}

#food-checkboxes label {
	margin-right: 6px;
}
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="container">

		<!-- Outer Row -->
		<div class="container-fluid">
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">상품 등록</h6>
				</div>
				<div class="card-body">
					<form>
						<div class="form-row-regi">
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputPassword4">상품명 *</label> <input type="text"
										class="form-control" id="name_kor" placeholder="ex) 상그리아 델 솔"
										value="${w_name_kor }">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">상품명 (영어) *</label> <input type="text"
										class="form-control" id="name"
										placeholder="ex) Sangria Del Sol" value="${w_name }">
								</div>
							</div>
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputPassword4">가격 *</label> 
									<input type="number"  min="0" max="1000"
										class="form-control" id="price" placeholder="ex) 300,000" oninput="formatPrice()" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputZip">재고량 *</label> 
									<input input type="number"  min="0" max="10000" class="form-control" id="seoulStock" required>
								</div>
								
							</div>
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputAddress">타입 *</label>
									<select id="type" class="form-control" required>
										<option selected>타입 선택</option>
										<option value="레드">레드</option>
										<option value="화이트">화이트</option>
										<option value="스파클링">스파클링</option>
										<option value="주정강화">주정강화</option>
										<option value="로제">로제</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label for="inputAddress">품종 *</label>
									<select id="variety_kor" class="form-control" required>
										<option selected>품종 선택</option>
										<option value="가르가네가">가르가네가</option>
										<option value="가르나차">가르나차</option>
										<option value="가르나차 네그라">가르나차 네그라</option>
										<option value="가르나차 블랑카">가르나차 블랑카</option>
										<option value="가르나차 비앙카">가르나차 비앙카</option>
										<option value="가르나차 틴토레라">가르나차 틴토레라</option>
										<option value="가르나차 펠루다">가르나차 펠루다</option>
										<option value="가메이">가메이</option>
										<option value="감">감</option>
										<option value="게뷔르츠트라미너">게뷔르츠트라미너</option>
										<option value="고데요">고데요</option>
										<option value="고바이오">고바이오</option>
										<option value="그라시아노">그라시아노</option>
									</select>
								</div>
							</div>
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputAddress2">와인 생산자 *</label> 
									<input type="text" class="form-control" id="maker_kor" placeholder="ex) 깔베" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputAddress2">와인 생산자 (영어) *</label> 
									<input type="text" class="form-control" id="maker"
										placeholder="ex) Calvet" required>
								</div>
							</div>
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputState">국가 *</label> 
									<select id="nation" class="form-control" required>
										<option selected>국가 선택</option>
										<option value="프랑스">프랑스</option>
										<option value="독일">독일</option>
										<option value="이탈리아">이탈리아</option>
										<option value="스페인">스페인</option>
										<option value="미국">미국</option>
										<option value="칠레">칠레</option>
										<option value="아르헨티나">아르헨티나</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label for="inputState">지역 *</label> 
									<select id="area" class="form-control" required>
										<option selected>지역 선택</option>
										<option value="보르도">보르도</option>
										<option value="토스카나">토스카나</option>
										<option value="산 후안">산 후안</option>
										<option value="리오 네그로">리오 네그로</option>
										<option value="바덴">바덴</option>
										<option value="카헤티">카헤티</option>
										<option value="알렌테주"">알렌테주</option>
										<option value="포드라베">포드라베</option>
										<option value="발데오라스">발데오라스</option>
									</select>
								</div>
							</div>
							<div style="display: flex;">
								<div class="form-group col-md-3">
									<label for="inputAddress2">음용온도 *</label> 
									<select id="temperature" class="form-control" required>
										<option selected>음용온도 선택</option>
										<option value="10~12 ℃">10~12 ℃</option>
										<option value="12~15 ℃">12~15 ℃</option>
										<option value="16~20 ℃">16~20 ℃</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">알콜 도수 *</label> 
									<select id="al" class="form-control" required>
										<option selected>도수 선택</option>
										<option value="6~8 ℃">6~8 ℃</option>
										<option value="8~10 ℃">8~10 ℃</option>
										<option value="10~15 ℃">10~15 ℃</option>
										<option value="15~18 ℃">15~18 ℃</option>
										<option value="20 ℃">20 ℃</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label for="inputAddress2">용량 *</label> 
									<input type="text" class="form-control" id="volume" placeholder="ex) 750" required>
								</div>
								<div class="form-group col-md-3">
									<label for="inputEmail4">숙성도 *</label> 
									<input type="text"
										class="form-control" id="ferment"
										placeholder="ex) 오크통에서 최소 1년 숙성" required>
								</div>
							</div>

						</div>
						<hr>
						<div class="form-row-regi" style="margin-top: 6px;">
							<span class="txt">스타일</span>
							<div style="display: flex;">
								<div class="form-group col-md-3">
									<label for="inputZip">당도 *</label> 
									<select id="sw" class="form-control" required>
										<option selected>당도 선택</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">산도 *</label> 
									<select id="aci" class="form-control" required>
										<option selected>산도 선택</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">탄닌 *</label> 
									<select id="tan" class="form-control" required> 
										<option selected>탄닌 선택</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">바디 *</label> 
									<select id="bd" class="form-control" required>
										<option selected>바디감 선택</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
						</div>

						<hr>
						<div class="form-row-regi" style="margin-top: 6px;">
							<span class="txt">음식 및 아로마 매칭</span>
							<div style="display: flex;">
								<div class="form-group col-md-3">
									<label for="inputZip">음식 매칭 *</label> 
									<select id="food" class="form-control" required>
										<option selected>음식 선택</option>
										<option value="lemon">lemon</option>
										<option value="chicken">chicken</option>
										<option value="fruit">fruit</option>
										<option value="almond">almond</option>
										<option value="asia">asia</option>
										<option value="fried">fried</option>
										<option value="pig">pig</option>
										<option value="dry">dry</option>
										<option value="pizza">pizza</option>
										<option value="cake">cake</option>
										<option value="fish">fish</option>
										<option value="chellfish">chellfish</option>
										<option value="bibimbap">bibimbap</option>
										<option value="sheep">sheep</option>
										<option value="salad">salad</option>
										<option value="champagne">champagne</option>
										<option value="cow">cow</option>
										<option value="noodle">noodle</option>
									</select>
								</div>
								<div style="margin-top: 10px;" id="food-checkboxes"></div>

								<div class="form-group col-md-3">
									<label for="inputZip">아로마 매칭 *</label> 
									<select id="aroma" class="form-control" required>
										<option selected>아로마 선택</option>
										<option value="stone">stone</option>
										<option value="oak">oak</option>
										<option value="berry">berry</option>
										<option value="herbal">herbal</option>
										<option value="cinnamon">cinnamon</option>
										<option value="apple">apple</option>
										<option value="ripen">ripen</option>
										<option value="pineapple">pineapple</option>
										<option value="flower">flower</option>
										<option value="almond">almond</option>
										<option value="lemon">lemon</option>
										<option value="croissant">croissant</option>
										<option value="fruit">fruit</option>
										<option value="paprika">paprika</option>
									</select>
								</div>
								<div style="margin-top: 10px;" id="aroma-checkboxes"></div>
							</div>

							<hr>
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<label for="inputEmail4">상품 이미지 *</label> 
									<input class="lozad" src="${item.w_img}" id="image" required>
									<button class="btn ">찾아보기</button>
								</div>
							</div>

						</div>
						<div style="display: flex; justify-content: space-around; margin: 20px 200px;}">
						<button style="width: 100px; height: 40px;" type="button" class="btn btn-danger"  onclick="location:href='/admin/product/list'">취소</button>
						<button style="width: 100px; height: 40px;" type="button" class="btn btn-primary" id="registerBtn">상품 등록</button>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	</div>


</div>
<!-- /.container-fluid -->
<script type="text/javascript">
	let w_name_kor;
	let w_name ;
	let w_img;
	let w_price;
	
	let w_ferment;
	let w_temperature;
	let w_volume ;
	let w_type;
	
	let wv_variety;
	let wv_variety_kor; 
	let wr_nation;
	let wr_nation_kor;
	let wr_area;
	let wr_area_kor;
	
	let wm_maker_kor;
	let wm_maker;
	
	let w_alcohol;
	let w_sweetness;
	let w_acidity;
	let w_body;
	let w_tannin;
	
	let wa_name;
	let wa_img_url;
	let was_name = [];
	let wf_name;
	let wf_img_url;
	let wfs_name = [];
	
	let s_code = "scode1";
	let sws_stock;
	let s_name = "와인웍스 더현대 서울"
	
	$(document).ready(function() {
		
		$('#name_kor').change(function(){
			w_name_kor = $(this).val();
		   //alert(w_name_kor); 
		});
		$('#name').change(function(){
			w_name = $(this).val();
		   //alert(w_name); 
		});
		$('#price').change(function(){
			w_price = $(this).val();
		   //alert(w_price); 
		});
		//가격 변환 함수
		function formatPrice() {
			  const priceInput = document.getElementById('price');
			  let price = priceInput.value.replace(/\D/g, '');
			  price = parseInt(price);
			  if (!isNaN(price)) {
			    const formattedPrice = price.toLocaleString('en-US');
			    priceInput.value = formattedPrice;
			  }
			}
		$('#type').change(function(){
			w_type = $(this).val();
		    //alert(w_type); 
		});
		$('#variety_kor').change(function(){
			wv_variety_kor = $(this).val();
		   //alert(wv_variety_kor); 
		   	if (wv_variety_kor === "가르가네가"){
			    	wv_variety = "Garganega"
			   } else if (wv_variety_kor === "가르나차" || wv_variety_kor == "가르나차 네그라" || wv_variety_kor == "가르나차 블랑카" || wv_variety_kor == "가르나차 비앙카" || 
					   wv_variety_kor == "가르나차 틴토레라" || wv_variety_kor == "가르나차 펠루다"){
			    	wv_variety = "Garnacha"
			   } else if (wv_variety_kor === "감"){
			    	wv_variety = "Persimmon"
			   } else if (wv_variety_kor === "게뷔르츠트라미너"){
			    	wv_variety = "Gewurztraminer"
			   } else if (wv_variety_kor === "고데요"){
			    	wv_variety = "Godello"
			   } else if (wv_variety_kor === "고바이오"){
					wv_variety = "Gouveio"
			   }else if (wv_variety_kor === "그라시아노"){
			   	 	wv_variety = "Graciano"
				} else if (wv_variety_kor === "가메이"){
			    	wv_variety = "Gamay"
				} else if (wv_variety_kor === "피노 누아") {
			 		wv_variety = "Pinot Noir";
		    	} else if(wv_variety_kor === "카르베네 소비뇽") {
		    		wv_variety = "Cabernet Sauvignon";
		    	} else if(wv_variety_kor === "네렐로 마스칼레제") {
		    		wv_variety = "Nerello Mascalese";
		    	} else if (wv_variety_kor==="코르비나"){
		    		wv_variety="Corvina";
		    	} else if (wv_variety_kor==="카베르네 프랑"){
		    		wv_variety="Cabernet Franc";
		    	} else if (wv_variety_kor==="피노 네로"){
		    		wv_variety="Pinot Nero";
		    	}else if (wv_variety_kor==="람부르스코"){
		    		wv_variety="Lambrusco";
		    	}else if (wv_variety_kor==="아르반"){
		    		wv_variety="Arbanne";
		    	}else if (wv_variety_kor==="페드로 히메네스"){
		    		wv_variety="Pedro Ximenez";
		    	}
		});
/* 		$('#variety').change(function(){
			wv_variety = $(this).val();
		    //alert(wv_variety); 
		}); */
		
		$('#temperature').change(function(){
			w_temperature = $(this).val();
		   //alert(w_temperature); 
		});
		$('#volume').change(function(){
			w_volume = $(this).val();
		    //alert(w_volume); 
		});
		$('#ferment').change(function(){
			w_ferment = $(this).val();
		   // alert(w_ferment); 
		});
		$('#maker_kor').change(function(){
			wm_maker_kor = $(this).val();
		    //alert(wm_maker_kor); 
		});
		$('#maker').change(function(){
			wm_maker = $(this).val();
		    //alert(wm_maker); 
		});
		$('#nation').change(function(){
			wr_nation_kor = $(this).val();
		  //  alert(wr_nation_kor); 
		    
		    if(wr_nation_kor === "프랑스") {
		    	  wr_nation = "france";
		    	  alert(wr_nation);
		    	} else if(wr_nation_kor === "이탈리아") {
		    	  wr_nation = "italy";
		    	} else if(wr_nation_kor === "독일") {
		    	  wr_nation = "germany";
		    	} else if (wr_nation_kor==="스페인"){
		    	  wr_nation="spain";
		    	} else if (wr_nation_kor=="미국"){
		    		wr_nation="usa";
		    	} else if (wr_nation_kor=="칠레"){
		    		wr_nation="chile";
		    	}
		});
		
		$('#area').change(function(){
			wr_area_kor = $(this).val();
		   // alert(wr_area_kor); 
		    
		    	if(wr_area_kor === "보르도") {
		    	  wr_area = "bordeux";
		    	  alert(wr_area);
		    	} else if(wr_area_kor === "산 후안") {
		    		wr_area = "san huan";
		    	} else if(wr_area_kor === "토스카나") {
		    		wr_area = "Toscana";
		    	} else if (wr_area_kor==="리오 네그로") {
		    		wr_area="Rio Negro";
		    	} else if (wr_area_kor=="바덴") {
		    		wr_area="Baden";
		    	} else if (wr_area_kor=="카헤티") {
		    		wr_area="Kakheti";
		    	} else if (wr_area_kor=="알렌테주") {
		    		wr_area="Alentejo";
		    	}
		});
		
		$('#sw').change(function(){
			w_sweetness = $(this).val();
		    //alert(w_sweetness); 
		});
		$('#aci').change(function(){
			w_acidity = $(this).val();
		   // alert(w_acidity); 
		});
		$('#bd').change(function(){
			w_body = $(this).val();
		   // alert(w_body); 
		});
		$('#tan').change(function(){
			w_tannin = $(this).val();
		   // alert(w_tannin); 
		});
		$('#al').change(function(){
			w_alcohol = $(this).val();
		   //alert(w_alcohol); 
		});
		$('#seoulStock').change(function(){
			sws_stock = $(this).val();
		   //alert(sws_stock); 
		});
		$('#image').change(function(){
			w_img = $(this).val();
		    //alert(w_img); 
		});
		
		$('#aroma').change(function() {
		    var optionValue = $(this).val();
		    wa_name=optionValue;
		    //alert(wa_name);
		    var checkboxes = $('#aroma-checkboxes');
		    checkboxes.empty();
		    
		    if (optionValue === "stone") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>미네랄</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>부싯돌</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>석유</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>슬레이트</label>");
		    } else if (optionValue === "oak") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>카라멜</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>오크</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>초콜릿</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>코코아</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox5'>커피</label>");
		    } else if (optionValue === "berry") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>블루베리</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>체리</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>딸기</label>");
		    } else if (optionValue === "herbal") {
			      checkboxes.append("<label><input type='checkbox' value='checkbox3'>Checkbox 3</label>");
			      checkboxes.append("<label><input type='checkbox' value='checkbox4'>Checkbox 4</label>");
		  	} else if (optionValue === "option2") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>Checkbox 3</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>Checkbox 4</label>");
		  	} else if (optionValue === "option2") {
			      checkboxes.append("<label><input type='checkbox' value='checkbox3'>Checkbox 3</label>");
			      checkboxes.append("<label><input type='checkbox' value='checkbox4'>Checkbox 4</label>");
		  	}
		});
		
		//아로마 이름 리스트에 넣기
		 $('#aroma-checkboxes').on('change', 'input[type=checkbox]', function() {
		   let selected = $(this).parent().text().trim();
		   if ($(this).is(':checked')) {
		     was_name.push(selected);
		    // alert(was_name);
		   } else {
		     was_name.splice(was_name.indexOf(selected), 1);
		   }
		 });
		
		$('#food').change(function() {
		    var optionValue = $(this).val();
		    wf_name=optionValue;
		    //alert(wf_name);
		    var checkboxes = $('#food-checkboxes');
		    checkboxes.empty();
		    
		    if (optionValue === "lemon") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>오렌지</label>");
		    } else if (optionValue === "chicken") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>치킨</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>가금류</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>푸아그라</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>양념치킨</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox5'>닭고기</label>");
		    } else if (optionValue === "fruit") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>과일</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>자두</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>말린무화과</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>건포도</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox5'>딸기</label>");
		    } else if (optionValue === "almond") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox1'>견과류</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox2'>호두</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>피스타치오</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>피칸</label>");
		  	} else if (optionValue === "option2") {
		      checkboxes.append("<label><input type='checkbox' value='checkbox3'>Checkbox 3</label>");
		      checkboxes.append("<label><input type='checkbox' value='checkbox4'>Checkbox 4</label>");
		  	} else if (optionValue === "asia") {
			      checkboxes.append("<label><input type='checkbox' value='checkbox3'>Checkbox 3</label>");
			      checkboxes.append("<label><input type='checkbox' value='checkbox4'>Checkbox 4</label>");
		  	}
		});
		
		//음식 이름 리스트에 넣기
		 $('#food-checkboxes').on('change', 'input[type=checkbox]', function() {
		   let selected = $(this).parent().text().trim();
		   if ($(this).is(':checked')) {
			  wfs_name.push(selected);
		    // alert(wfs_name);
		   } else {
			  wfs_name.splice(wfs_name.indexOf(selected), 1);
		   }
		 });
		
		  $("#registerBtn").on('click',function () {
			    Swal.fire({
			      text: '상품을 등록하시겠습니까?',
			      icon: 'question',
			      showCancelButton: true,
			      confirmButtonColor: '#46675c',
			      cancelButtonColor: 'lightgrey',
			      confirmButtonText: '저장',
			      cancelButtonText: '취소',
			      reverseButtons: true, // 버튼 순서 거꾸로
			      
			    }).then((result) => {
			      if (result.isConfirmed) {
			    	  var data = {
			    			  
			  				"w_name_kor": w_name_kor,
			  				"w_name": w_name,
			  				"w_img": w_img,
			  				"w_price": w_price,
			  				
			  				  "w_alcohol": w_alcohol,
			                  "w_sweetness": w_sweetness,
			                  "w_acidity": w_acidity,
			                  "w_body": w_body,
			                  "w_tannin": w_tannin,
			  				
			  				"w_ferment": w_ferment, 
			  				"w_temperature": w_temperature,
			  				"w_volume": w_volume,
			  		 	    "w_type": w_type,
			  		 	    
			  		 	      "wv_variety": wv_variety,
			                  "wv_variety_kor": wv_variety_kor,
			                  "wr_nation_kor": wr_nation_kor,
			                  "wr_nation" : wr_nation,
			                  "wr_area_kor" : wr_area_kor,
			                  "wr_area" : wr_area,
			                  "wm_maker_kor": wm_maker_kor,
			                  "wm_maker" : wm_maker,
			                  
			  	    		"was_name": was_name,
			  	    		"wa_img_url": "아로마 대분류 이미지 지원x",
			  	    		"wf_img_url": "푸드 대분류 이미지 지원x",
			  	    		"wfs_name": wfs_name,
			  	    		
			  	    		"sws_stock": sws_stock,
			  	    		"s_code": s_code,
			  	    		"s_name": s_name
			  		}
			    	  $.ajax({
							url : "/admin/product/register", 
							type : 'post', 
							data : data,
							dataType : "text",
							beforeSend : function(xhr){
								   let header = $("meta[name='_csrf_header']").attr("content");
					               let token = $("meta[name='_csrf']").attr("content");
					               xhr.setRequestHeader(header, token);
							},
							success : function(data) {
						        Swal.fire({							          
						        	text: '등록되었습니다!',
								    confirmButtonColor: '#46675c'
						        }).then((result) => {
									location.href="/admin/product/list";
						        });
							},
						     error:function(request,status,error){
						         alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						     }
						});
			      }
			    })
			  });
	});
</script>
</html>