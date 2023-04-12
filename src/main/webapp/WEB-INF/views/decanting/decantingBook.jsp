<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta http-equiv="Content-Type" content="text; charset=utf-8">
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://www.wine21.com//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="//fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
<link rel="stylesheet"
	href="https://www.wine21.com/01_include/css/bootstrap.css">
<link rel="stylesheet"
	href="https://www.wine21.com/01_include/css/jquery-confirm.css">
<link rel="stylesheet"
	href="https://www.wine21.com/01_include/star_rating/css/star-rating-svg.css">
<link rel="stylesheet" href="${RESOURCES_PATH}/css/shop/common.css">
<link rel="stylesheet"
	href="https://www.wine21.com/01_include/css/jquery.toast.min.css">
<link rel="stylesheet" href="${RESOURCES_PATH}/css/shop/contents.css">
<!--Plugin CSS file with desired skin-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
	
<link rel="stylesheet" type="text/css" href="star-rating-svg.css">


<script src="jquery.star-rating-svg.js"></script>
<!--jQuery-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--Plugin JavaScript file-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>

<!-- <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9641733459156478" crossorigin="anonymous"></script> -->
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-N8BJGRX');
</script>
<!-- End Google Tag Manager -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-PG15D4H7V3"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'G-PG15D4H7V3');
</script>
<style>
html {
	-ms-touch-action: none;
}

.dib span {
	font-size: 13px;
}

.dib .bagde-item {
	font-size: 13px;
}

.wrap-wine-view .wine-name {
	font-size: 22px;
}

.wrap-wine-view .wine-name-en {
	font-size: 16px;
}

.wine-top-right .wine-price>strong {
	font-size: 18px;
	color: #46675c;
}

.wrap-wine-view .wine-top-left {
	margin: 0px;
}

#topArea {
	display: flex;
}
</style>

<script type="text/javascript">

var content = $('#w_content').val(),
rating =  parseInt($('#rating').val()),
sweetness = parseInt($('#sweetness').val()),
acidity = parseInt($('#acidity').val()),
body = parseInt($('#body').val()),
tannin = parseInt($('#tannin').val()),
hide = parseInt($('#hideshow').val()),
w_id = "${wine.w_id}";
	$(document).ready(function() {
		var SH = "${wine.db_hide}";
		if(SH > 0){
			$('#show').hide();
		}
		else{
			$('#hide').hide();
		}
		$('#show').on('click',function(){
			$('#hideshow').val(1);
			$('#hide').show();
			$('#show').hide();
		})
		$('#hide').on('click',function(){
			$('#hideshow').val(0);
			$('#show').show();
			$('#hide').hide();
		})
		  $("#svbtn").on('click',function () {
			    Swal.fire({
			      text: '디켄팅북을 저장 하시겠습니까?',
			      icon: 'question',
			      showCancelButton: true,
			      confirmButtonColor: '#46675c',
			      cancelButtonColor: 'lightgrey',
			      confirmButtonText: '저장',
			      cancelButtonText: '취소',
			      reverseButtons: true, // 버튼 순서 거꾸로
			      
			    }).then((result) => {
			      if (result.isConfirmed) {
			    	  var content = $('#w_content').val(),
			    	  rating =  parseInt($('#rating').val()),
			    	  sweetness = parseInt($('#sweetness1').val()),
			    	  acidity = parseInt($('#acidity1').val()),
			    	  body = parseInt($('#body1').val()),
			    	  tannin = parseInt($('#tannin1').val()),
			    	  hide = parseInt($('#hideshow').val()),
			    	  w_id = "${wine.w_id}";
			    	if(parseInt(rating) > 0){
						$.ajax({
							url : "./write.do", 
							type : "POST", 
							data : {
								content : content,
								rating : rating,
								sweetness : sweetness,
								acidity : acidity,
								body : body,
								tannin : tannin,
								hide : hide,
								w_id : w_id
							},
							dataType : "text",
							beforeSend : function(xhr){
					               let header = $("meta[name='_csrf_header']").attr("content");
					               let token = $("meta[name='_csrf']").attr("content");
					               xhr.setRequestHeader(header, token);
							},
							success : function(data) {
						        Swal.fire({							          
						        	text: '저장 되었습니다',
								    confirmButtonColor: '#46675c'
						        }).then((result) => {
									location.href="/decanting/bookList";
						        });
							},
						     error:function(request,status,error){
						         alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						     }
						     
						});
			    	}
			    	else{
					    Swal.fire({
						      text: '상품 별점을 작성해 주세요',
						      icon: 'warning',
						      confirmButtonColor: '#46675c',
						      confirmButtonText: '확인'
					    })
			    	}

			      }
			    })
			  });
	});

</script>
</head>
	<!-- contents 시작 -->
	<section class="sub-contents wrap-wine-view clear" style="background-color: white; margin:0 auto; max-width:465px;">
		<form class="all">
			<div class="inner" id="topArea">

				<div class="wine-top-left">
					<img src="${wine.w_img }" style="margin-left: -15px;">
				</div>
				<!--.wine-top-left -->

				<div class="wine-top-right"
					style="margin-bottom: 0; position: relative;">
					<dl>
						<dt class="wine-name">${wine.w_name_kor }</dt>
						<dd class="wine-name-en">${wine.w_name }</dd>
					</dl>


					<c:choose>
						<c:when test="${writeAble eq 1}">
							<div id="full-stars-example-two" style="position: relative; margin-top: -15px;">
						</c:when>
						<c:otherwise>
							<div id="full-stars-example-two"
								style="position: relative; pointer-events: none;">
						</c:otherwise>
					</c:choose>

					<dl>
						<div class="rating-group"
							style="margin-top: 40px; display: block; position: relative;">
							<div style="top: -18px; position: absolute;">
								<span style="font-size: 18px">평점</span>
							</div>
							<input disabled checked class="rating__input rating__input--none"
								name="rating3" id="rating3-none" value="0" type="radio">
							<label aria-label="1 star" class="rating__label rt1"
								for="rating3-1"><i
								class="rating__icon rating__icon--star fa fa-star"></i></label> <input
								class="rating__input" name="rating3" id="rating3-1" value="1"
								type="radio"> <label aria-label="2 stars"
								class="rating__label rt2" for="rating3-2"><i
								class="rating__icon rating__icon--star fa fa-star"></i></label> <input
								class="rating__input" name="rating3" id="rating3-2" value="2"
								type="radio"> <label aria-label="3 stars"
								class="rating__label rt3" for="rating3-3"><i
								class="rating__icon rating__icon--star fa fa-star"></i></label> <input
								class="rating__input" name="rating3" id="rating3-3" value="3"
								type="radio"> <label aria-label="4 stars"
								class="rating__label rt4" for="rating3-4"><i
								class="rating__icon rating__icon--star fa fa-star"></i></label> <input
								class="rating__input" name="rating3" id="rating3-4" value="4"
								type="radio"> <label aria-label="5 stars"
								class="rating__label rt5" for="rating3-5"><i
								class="rating__icon rating__icon--star fa fa-star"></i></label> <input
								class="rating__input" name="rating3" id="rating3-5" value="5"
								type="radio">
						</div>
					</dl>
					<input id="rating" type="hidden" value="${wine.db_rating }">
				</div>
				<p class="wine-price" style="margin-top: -20px;">
					<strong><fmt:formatNumber type="currency"
							currencySymbol="" value="${wine.w_price }" />원</strong>( ${wine.w_volume }ml
					)
				</p>
				<c:choose>
					<c:when test="${wine.m_grade eq 1 && writeAble eq 1}">
						<div style="margin-top:10px;">

							<div id="show">
								보이기<img src="/resources/asset/images/shop/default/view.png"
									style="margin-left: 5px;">
							</div>
							<div id="hide">
								숨기기<img src="/resources/asset/images/shop/default/hide.png"
									style="margin-left: 5px;">
							</div>
							<input id="hideshow" value="${wine.db_hide}" type="hidden">
						</div>
					</c:when>
					<c:otherwise>
						<input id="hideshow" value="0" type="hidden">
					</c:otherwise>
				</c:choose>
			</div>
			</div>

			<div class="de" style="margin: 20px 30px;">

				<c:choose>
					<c:when test="${writeAble eq 1 }">
						<textarea id="w_content" name="story" rows="5" cols="33"
							style="width: 100%; border: 1px solid #46675c; border-radius: 10px;"
							placeholder="맛, 느낌 등을 남겨 놓으면 와인 선택시 도움이 됩니다.(선택)">${wine.db_content }</textarea>
					</c:when>
					<c:otherwise>
						<textarea id="w_content" name="story" rows="5" cols="33"
							style="width: 100%; border: 1px solid #46675c; border-radius: 10px;"
							disabled>${wine.db_content }</textarea>
					</c:otherwise>
				</c:choose>

			</div>
			</div>


			<script>
			$(".rt"+"${wine.db_rating}").trigger('click'); 
				// Slider
				$(function() {
					var $range11 = $(".js-range-slider111"), $input11 = $(".js-input-from111");
					
					if( "${writeAble}" == "0"){
						$range11.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							disable : true,
							from : "${wine.db_sweetness}",
							
							onStart : function(data) {
								$input11.prop("value", data.from);
							},
							onChange : function(data) {
								$input11.prop("value", data.from);
							}
						});
					}else{
						$range11.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							from : "${wine.db_sweetness}",
							onStart : function(data) {
								$input11.prop("value", data.from);
							},
							onChange : function(data) {
								$input11.prop("value", data.from);
							}
						});
					}


					var $range22 = $(".js-range-slider22"), $input22 = $(".js-input-from22");
					if( "${writeAble}" == "0"){
						$range22.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							disable : true,
							from : "${wine.db_acidity}",
							onStart : function(data) {
								$input22.prop("value", data.from);
							},
							onChange : function(data) {
								$input22.prop("value", data.from);
							}

						});
					}else{
						$range22.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							from : "${wine.db_acidity}",
							onStart : function(data) {
								$input22.prop("value", data.from);
							},
							onChange : function(data) {
								$input22.prop("value", data.from);
							}

						});
					}


					var $range33 = $(".js-range-slider33"), $input33 = $(".js-input-from33");
					if( "${writeAble}" == "0"){
						$range33.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							disable : true,
							from : "${wine.db_tannin}",
							onStart : function(data) {
								$input33.prop("value", data.from);
							},
							onChange : function(data) {
								$input33.prop("value", data.from);
							}
						});
					}else{
						$range33.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							from : "${wine.db_tannin}",
							onStart : function(data) {
								$input33.prop("value", data.from);
							},
							onChange : function(data) {
								$input33.prop("value", data.from);
							}
						});
					}
					

					var $range44 = $(".js-range-slider44"), $input44 = $(".js-input-from44");
					if( "${writeAble}" == "0"){
						
						$range44.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							disable : true,
							from : "${wine.db_body}",
							onStart : function(data) {
								$input44.prop("value", data.from);
							},
							onChange : function(data) {
								$input44.prop("value", data.from);
							}
						});
					}else{
						$range44.ionRangeSlider({
							skin : "round",
							min : 0,
							max : 5,
							from : "${wine.db_body}",
							onStart : function(data) {
								$input44.prop("value", data.from);
							},
							onChange : function(data) {
								$input44.prop("value", data.from);
							}
						});
					}


				});

				$(window).scroll(
						function() {
							var $header = $("header"), scrlTop = $(window)
									.scrollTop(), hdHeight = $header
									.outerHeight();

							if (scrlTop >= hdHeight) {
								$header.addClass("fixed");
							} else {
								$header.removeClass("fixed");
								conPd();
							}
						});
/* 				function Sure(){
                    $('.pop-wine-01').show();
                    $('.bg-overlay').show();
                    scroll_on();
				}
				function SureOff(){
                    $('.bg-overlay').hide();
                    $('.pop-wine-01').hide();
                    scroll_off();
				} */
				function scroll_on() {
			        $('body').on('scroll touchmove mousewheel', function(e) {
			            e.preventDefault();
			            e.stopPropagation();
			            return false;
			        });
			    }
			  
			    // 스크롤 제한 OFF
			    function scroll_off() {
			        $('body').off('scroll touchmove mousewheel');
			    }
			    
				$('.rating__label').on('click',function(){
					$('#rating').val($(this).next().val());
				})
				function to_myPage(){
					location.href ="/";
				}
			</script>
			<div class="inner decanting">
				<div class="wine-type wine-filter-box wine-filter-box-price">
					<div class="view-wine-matching" style="position: relative;">
						<div class="wine-matching-subj">
							<span>당도</span>
						</div>
					</div>
					<div style="position: absolute; right: 0; top: 0; width: 90%;">
						<div class="range-slider">
							<!-- 관련 스크립트 하단에 입력 -->
							<input type="text" class="js-range-slider111" name="my_range"
								value="" />
						</div>
						<div class="range-box">
							<span class="range-box-from"><input type="text"
								class="js-input-from" value="드라이"></span> <span
								class="range-box-to" style="width: 12%"><input
								type="text" class="js-input-to1" value="스위트"></span>
						</div>
					</div>
					<input class="js-input-from111" type="hidden" id="sweetness1"
						value="${wine.db_sweetness }">
				</div>
				<div class="wine-type wine-filter-box wine-filter-box-price">
					<div class="view-wine-matching" style="position: relative;">
						<div class="wine-matching-subj">
							<span>산도</span>
						</div>
					</div>
					<div style="position: absolute; right: 0; top: 0; width: 90%;">
						<div class="range-slider">
							<!-- 관련 스크립트 하단에 입력 -->
							<input type="text" class="js-range-slider22" name="my_range"
								value="" />
						</div>
						<div class="range-box">
							<span class="range-box-from"><input type="text"
								class="js-input-from" value="낮음"></span> <span
								class="range-box-to" style="width: 12%"><input
								type="text" class="js-input-to2" value="시큼함"></span>
						</div>
					</div>
					<input class="js-input-from22" type="hidden" id="acidity1"
						value="${wine.db_acidity }">
				</div>
				<div class="wine-type wine-filter-box wine-filter-box-price">
					<div class="view-wine-matching" style="position: relative;">
						<div class="wine-matching-subj">
							<span>탄닌</span>
						</div>
					</div>
					<div style="position: absolute; right: 0; top: 0; width: 90%;">
						<div class="range-slider">
							<!-- 관련 스크립트 하단에 입력 -->
							<input type="text" class="js-range-slider33" name="my_range"
								value="" />
						</div>
						<div class="range-box">
							<span class="range-box-from"><input type="text"
								class="js-input-from" value="매끈한"></span> <span
								class="range-box-to" style="width: 12%"><input
								type="text" class="js-input-to3" value="떫음"></span>
						</div>
					</div>
					<input class="js-input-from33" type="hidden" id="tannin1"
						value="${wine.db_tannin }">
				</div>
				<div class="wine-type wine-filter-box wine-filter-box-price">
					<div class="view-wine-matching" style="position: relative;">
						<div class="wine-matching-subj">
							<span>바디</span>
						</div>
					</div>
					<div style="position: absolute; right: 0; top: 0; width: 90%;">
						<div class="range-slider">
							<!-- 관련 스크립트 하단에 입력 -->
							<input type="text" class="js-range-slider44" name="my_range"
								value="" />
						</div>
						<div class="range-box">
							<span class="range-box-from"><input type="text"
								class="js-input-from" value="가벼운"></span> <span
								class="range-box-to" style="width: 12%"><input
								type="text" class="js-input-top4" value="묵진함"></span>
						</div>
					</div>
					<input class="js-input-from44" type="hidden" id="body1"
						value="${wine.db_body }">
				</div>
			</div>

			<div class="decanting">

				<div class="view-tab-inner" style="padding: 0;">
					<div class="wine-d-box-info-list" style="padding: 0;">
						<dl>
							<dt>종류</dt>
							<dd>
								<a href="javascript:goInfoViewDirect(1741);">${wine.w_type }</a>
							</dd>
						</dl>
						<dl>
							<dt>생산국</dt>
							<dd>
								<a href="javascript:goInfoViewDirect(4684);" infoidx="4684">${wine.wr_nation }</a>

							</dd>
						</dl>
						<dl>
							<dt>생산지</dt>
							<dd>
								<a href="javascript:goInfoViewDirect(5795);">${wine.wr_area }
									> ${wine.wm_maker }</a>
							</dd>
						</dl>
						<dl>
							<dt>품종</dt>
							<dd><a>${wine.wv_variety }</a></dd>
						</dl>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${NewDB eq 1 }">
					<div class="save-btn" style="background: #46675c; height: 50px;">
						<button type="button" id="svbtn"
							style="color: #fff; text-align: center; width: 100%; height: 100%;">
							저장</button>
					</div>
				</c:when>
				<c:when test="${writeAble eq 1}">
					<div class="save-btn" style="background: #46675c; height: 50px;">
						<button type="button" id="svbtn"
							style="color: #fff; text-align: center; width: 100%; height: 100%;">
							수정</button>
					</div>
				</c:when>
			</c:choose>
			<!-- 				<div class="bg-overlay" style="display: none;" onclick="SureOff()">

				</div>
				<div class="pop-basic pop-wine-view pop-wine-01"
					style="display: none;">
					<h3 class="pop-tit">
						디켄팅 북을 저장하겠습니까?
						<button type="button" class="pop-close-btn">닫기</button>
					</h3>
					end .pop-body
					<div class="pop-foot clear pagination-box">
						<button type="button" class="button button-white buttonCellarSave"
							onclick="SureOff()">취소</button>
						<button onclick="Write()" type="button"
							class="button button-wine buttonCellarSave"
							style="margin-left: 15px">저장</button>
					</div>
					end .pop-foot
				</div>


				<div class="pop-basic pop-wine-view pop-wine-01-1"
					style="display: none;">
					<h3 class="pop-tit">
						등록이 완료되었습니다
						<button type="button" class="pop-close-btn">닫기</button>
					</h3>
					end .pop-body
					<div class="pop-foot clear pagination-box">
						<button onclick="to_myPage()" type="button"
							class="button button-wine buttonCellarSave" style="width: 70%;">확인</button>
					</div>
					end .pop-foot
				</div> -->
		</form>

	</section>
