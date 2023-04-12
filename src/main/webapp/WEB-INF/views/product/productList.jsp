<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
<script src="/resources/asset/js/product/sortedList.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!DOCTYPE html>
<html lang="ko">
<body>
	<style>
.layer category_layer {
	display: block;
}

.list-wine-name {
	font-weight: 800;
	color: black;
	/* margin-bottom: 10px; */
}

.list-wine-name-eng {
	color: #525151
}

.cate_label {
	margin-top: 30px !important;
}

.pricerange {
	border: 1px solid;
	width: auto;
	border-radius: 20px;
	background-color: #46675c;
	color: white;
	font-size: 1;
	text-align: center;
	padding: 12px;
}

#wine_nation_image {
	width: 30px;
	height: 20px;
	margin-top: 5px;
	margin-right: 8px;
}

.quick_menu{
	position: fixed;
    right: 0;
    bottom: 100px;
    z-index: 400;
    left: 400px;
    margin: 0 auto;
    width: 100px;
}

/* #resetDiv {
	border: 1px solid #46675c;
	display: flex;
	margin-top: 10px;
	border-radius: 7px;
	height:36px;
	color:#46675c;
} */
</style>
	<input type="hidden" id="path_gb" value="MOBILE">
	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/slick.css">
	<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
	<script type="text/javascript">
		$(window).scroll(function() {
			if (!$("#header").hasClass("fixed")) {
				$('.top_banner .top_banner_slide').slick('refresh');
			}
		});

		$(".top_banner.time_out").hide();
		$(".top_banner.time_out").slideDown('300');
		setTimeout(function() {
			$(".top_banner.time_out").slideUp('300');
		}, 3000);

		//모바일 gnb toggle menu
		$(".mb_gnb_area .menu_list li button").on("click", function() {
			$(this).next("ul").slideToggle();
			$(this).parent("li").siblings().find("ul").slideUp();
		});

		//PC 모바일 구분
		if (chkDevice.isPC()) {
			$("#path_gb").val('WEB');
		} else {
			$("#path_gb").val('MOBILE');
		}
	</script>
	<!-- contents -->
	<section id="contents">
		<div class="lnb product_lnb lnb_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">WINE</h2>
				</div>
			</div>
		</div>
		<div class="wrap">
			<div class="content product product_lists_page test"
				style="margin-top: 10px;">

				<div class="filter-keywords"
					style="margin: 30px 7px; display: none;">
					<!-- 필터 키워드 출력되는 곳 -->
					<div id="keyword1" style="display: flex; flex-wrap: wrap;">
						<div id="priceRange"></div>
						<div id="resetDiv" style="display: none;">
							<button type="submit"
								style="font-size: 15px; font-weight: 600; height: 25px; margin: auto auto;"
								onclick="location.href='/product/list'">
								<img src="/resources/asset/images/shop/product/resetButton.png"
									style="width: 25px;" />
							</button>
						</div>
					</div>
					<!-- 필터 초기화 -->

				</div>

				<div class="product_lists_wrap">
					<div class="prd_list_tit">
						<div class="top">
							<h2>WINES</h2>
							<div class="line_map">
								<ul>
									<li onclick="location.href='/'" style="cursor: pointer;">HOME</li>
									<li onclick="location.href='/product/list'"
										style="cursor: pointer;" id="cate_txt">ALL</li>
								</ul>
							</div>
						</div>
						<div class="top">
							<div class="line_map"
								style="border: 1px solid; padding-top: 10px; padding-bottom: 10px; padding-right: 130px; padding-left: 126px; margin-right: 20px; margin-top: 15px; background-color: #46675c; border-radius: 5px; color: white;">
								<i class="fa-sharp fa-light fa-filters"></i>
								<button onclick="filterOpen();" class="filterBtn">
									<span style="color: white;">SMART FILTER</span>
								</button>
							</div>
						</div>
					</div>
					<script>
						function filterOpen() {
							resetFilter();
							commonUI.layer.open('category_layer');
						}
					</script>
					<style>
.filterBtn {
	padding-left: 28px;
	background:
		url(/resources/asset/images/shop/default/icon_smart_search.png)
		no-repeat left/22px;
	font-weight: 500;
	color: #111;
}
</style>
					<div class="prd_list_area">

						<div class="search_result">
							<div class="result_area">
								<p class="result" id="total_count_text">총 7,566 건</p>
							</div>

							<div class="second_order">
								<select name="js_select" id="js_select"
									style="border: none; border-bottom: 1px solid #ccc;">
									<option value="recent" selected>최신순</option>
									<option value="highprice">높은 가격순</option>
									<option value="lowprice">낮은 가격순</option>
									<option value="totalsales">판매량순</option>
									<option value="rating">평점순</option>
								</select>
							</div>
						</div>
						<ul class="n_prd_list" id="product_ul">
							<c:forEach items="${itemList }" var="item">
								<li>
									<div class="item">
										<div class="main_img">
											<a href="/product/item?w_id=${item.w_id}"
												class="prd_img table_box"> <picture> <img
													src="${item.w_img }" loading="lazy" alt=""> </picture>
											</a>
											<p class="vivino">
												평균평점 <em style="color: #bd0808;">${item.avg_db_rating }</em>
											</p>
										</div>
										<div class="info">
											<div class="more_info">
												<p class="prd_name">
													<a href="/product/item?w_id=${item.w_id}"> <span
														class="list-wine-name">${item.w_name_kor }</span> <span
														class="en list-wine-name-eng">${item.w_name }</span>
													</a>
												</p>
											</div>
											<div class="cate_label"
												style="display: flex; align-items: center;">
												<span
													style="background: #E0D8EA; padding: 9px; display: none;"
													id="wine_nation_kor">${item.wr_nation_kor }</span>
												<div style="margin-left: 5px;">
													<!-- <img id="wine_nation_image" src=""> -->
												</div>
												<c:choose>
													<c:when test="${item.wr_nation_kor eq '이탈리아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_italia.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '프랑스'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_france.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '스페인'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_spain.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '독일'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_germ.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '미국'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_usa.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '칠레'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_chile.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '아르헨티나'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_argentina.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '호주'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/icon_rec_flag_aus.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '남아프리카'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/south-africa.jpg">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '포르투갈'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/portugal.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '뉴질랜드'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/newzealand.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '오스트리아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/austria.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '캐나다'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/canada.jpg">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '크로아티아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/croatia.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '조지아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/georgia.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '불가리아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/bulgaria.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '슬로베니아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/slovenia.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '우루과이'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/uruguai.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '그리스'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/greece.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '루마니아'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/rumania.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '이스라엘'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/israel.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '레바논'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/lebanon.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '몰도바'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/moldova.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '일본'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/japan.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '중국'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/china.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '대한민국'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/korea.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '헝가리'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/hungary.png">
													</c:when>
													<c:when test="${item.wr_nation_kor eq '영국'}">
														<img style="margin-top: 0px;" id="wine_nation_image"
															src="/resources/asset/images/shop/default/uk.png">
													</c:when>
												</c:choose>
												<input type="hidden" value="${item.w_type }" id="wineType">
												<c:choose>
													<c:when test="${item.w_type eq '레드'}">
														<span
															style="background: #ffd8d8; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:when test="${item.w_type eq '로제'}">
														<span
															style="background: #FFDEC6; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:when test="${item.w_type eq '화이트'}">
														<span
															style="background: #f3f5ff; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:when test="${item.w_type eq '고도주'}">
														<span
															style="background: #d8d3f6; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:when test="${item.w_type eq '주정강화'}">
														<span
															style="background: #d7edff; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:when test="${item.w_type eq '스파클링'}">
														<span
															style="background: #d8e6ff; padding: 9px; margin-bottom: 0px">${item.w_type }
															와인</span>
													</c:when>
													<c:otherwise>
														<span
															style="background: #d3d3d3; padding: 9px; margin-bottom: 0px">기타
															와인</span>
													</c:otherwise>
												</c:choose>
												<div style="display: flex;">
													<p class="price"
														style="font-size: 13px; margin-left: 7px; font-weight: bold;">
														<ins style="text-decoration: none;">
															<fmt:formatNumber value="${item.w_price }"
																pattern="#,###" />
															</strong>원
														</ins>
													</p>
												</div>
											</div>
											<!-- <div class="price_area" style="margin-right: 18px; padding-right: 24px;">
												 -->
											<!-- </div> -->
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="quick_menu " style="display: none;">
			<ul class="list">
				<li class="top"><a href="javascript:scrollTop();">
						<div class="icon">
							<picture> 
							<img src="/resources/asset/images/shop/default/mb_ico_quick_topArrow.png"
								alt="top" draggable="false"><!-- pc이미지 --> </picture>
						</div>
						<div class="txt">TOP</div>
				</a></li>
			</ul>
		</div>
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/jqcloud.min.css">
		<script type="text/javascript"
			src="/resources/asset/js/jqcloud.min.js"></script>
		<script>
			//가격 원화 표시
			function comma(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
		</script>
	</section>
	<!-- //contents -->

	<script language="javascript">
	$('#Allcontents').on('scroll', function(){
            var main_scroll_Event = (function(){
                console.log(1);
                var $body = $("body");
                var $quickMenu = $(".quick_menu");

                function _downEvent(){
                 console.log(2);
                    $quickMenu.fadeOut();
                }

                function _upEvent(){
                 console.log(3);
                    $quickMenu.fadeIn();
                }

                function _touch_event_binding(){
                    var startX = null;
                    var startY = null;

                    $body.bind("touchstart",function(e){
                        //console.log("touch start");
                        startY = e.originalEvent.touches[0].screenY;
                    });

                    $body.bind("touchend",function(e){
                        //console.log("touch end");
                        var lastY = e.originalEvent.changedTouches[0].screenY;
                        yMove = startY - lastY;

                        if(yMove < -10){
                            //console.log('Up');
                            _upEvent();
                            return false;
                        }else if(yMove > 10){
                            //console.log('Down');
                            _downEvent();
                            return false;
                        }
                    });
                }

                function _srcoll_event_binding(){
                    $body.on("mousewheel DOMMouseScroll", function(event){
                        var whellDownCheck = event.originalEvent.wheelDelta || -(event.originalEvent.detail);

                        if(whellDownCheck > 0){
                            //console.log('Up');
                            _upEvent();
                            return false;
                        }else if(whellDownCheck < 0){
                            //console.log('Down');
                            _downEvent();
                            return false;
                        }
                    });
                }

                _touch_event_binding();
                _srcoll_event_binding();
            })();
    });
	</script>

	<script>
		//무한스크롤
		var startIdx = 7;
		var endIdx = 12;

		$('#Allcontents')
				.scroll(
						function(e) {
							var elem = $("#Allcontents");
							if (elem[0].scrollHeight - elem.scrollTop() - 10 <= elem
									.outerHeight()) {
								//scrollbottom이 0이 되면 으로 만들어야 함
								if (document.body.offsetHeight
										- window.innerHeight == 0) {
									//console.log("스크롤 실행되나??");
									//console.log( window.scrollY + " " + window.innerHeight + " " + " " + document.body.offsetHeight)
									addWineListInfinity();
								}
							}
							;
						});

		//정렬(order by) 버튼 누를 때
		$(document).ready(function() {
			$("#js_select").change(function() {
				startIdx = 1;
				endIdx = 6;
				$('#product_ul').html("");
				sortedList();
				//alert($("#js_select").val());
			});
		});

		function addWineListInfinity() {
			let val = $("#js_select").val();
			let html = "";

			function getNationImg(wine_nation_kor) {
				//wine_nation_kor = $("#wine_nation_kor").text(); 	
				//alert(wine_nation_kor);
				if (wine_nation_kor === "이탈리아") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_italia.png');
				} else if (wine_nation_kor === "프랑스") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_france.png');
				} else if (wine_nation_kor === "스페인") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_spain.png');
				} else if (wine_nation_kor === "독일") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_germ.png');
				} else if (wine_nation_kor === "미국") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_usa.png');
				} else if (wine_nation_kor === "칠레") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_chile.png');
				} else if (wine_nation_kor === "아르헨티나") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_argentina.png');
				} else if (wine_nation_kor === "호주") {
					return ('/resources/asset/images/shop/default/icon_rec_flag_aus.png');
				} else if (wine_nation_kor === "남아프리카") {
					return ('/resources/asset/images/shop/default/south-africa.jpg');
				} else if (wine_nation_kor === "포르투갈") {
					return ('/resources/asset/images/shop/default/portugal.png');
				} else if (wine_nation_kor === "뉴질랜드") {
					return ('/resources/asset/images/shop/default/newzealand.png');
				} else if (wine_nation_kor === "오스트리아") {
					return ('/resources/asset/images/shop/default/austria.png');
				} else if (wine_nation_kor === "캐나다") {
					return ('/resources/asset/images/shop/default/canada.png');
				} else if (wine_nation_kor === "크로아티아") {
					return ('/resources/asset/images/shop/default/croatia.png');
				} else if (wine_nation_kor === "조지아") {
					return ('/resources/asset/images/shop/default/georgia.png');
				} else if (wine_nation_kor === "불가리아") {
					return ('/resources/asset/images/shop/default/bulgaria.png');
				} else if (wine_nation_kor === "슬로베니아") {
					return ('/resources/asset/images/shop/default/slovenia.png');
				} else if (wine_nation_kor === "우루과이") {
					return ('/resources/asset/images/shop/default/uruguai.png');
				} else if (wine_nation_kor === "그리스") {
					return ('/resources/asset/images/shop/default/greece.png');
				} else if (wine_nation_kor === "루마니아") {
					return ('/resources/asset/images/shop/default/rumania.png');
				} else if (wine_nation_kor === "이스라엘") {
					return ('/resources/asset/images/shop/default/israel.png');
				} else if (wine_nation_kor === "레바논") {
					return ('/resources/asset/images/shop/default/lebanon.png');
				} else if (wine_nation_kor === "몰도바") {
					return ('/resources/asset/images/shop/default/moldova.png');
				} else if (wine_nation_kor === "일본") {
					return ('/resources/asset/images/shop/default/japan.png');
				} else if (wine_nation_kor === "중국") {
					return ('/resources/asset/images/shop/default/china.png');
				} else if (wine_nation_kor === "대한민국") {
					return ('/resources/asset/images/shop/default/korea.png');
				} else if (wine_nation_kor === "헝가리") {
					return ('/resources/asset/images/shop/default/hungary.png');
				} else if (wine_nation_kor === "영국") {
					return ('/resources/asset/images/shop/default/uk.png');
				}
			}
			function getColorByWineType(w_type) {
				//w_type = $("#wineType").val();
				//alert(w_type);
				if (w_type === "레드") {
					return ("background: #ffd8d8; padding: 9px; margin-bottom:0px");
				} else if (w_type === "로제") {
					return ("background: #FFDEC6; padding: 9px; margin-bottom:0px");
				} else if (w_type === "화이트") {
					return ("background: #f3f5ff; padding: 9px; margin-bottom:0px");
				} else if (w_type === "고도주") {
					return ("background: #f3f5ff; padding: 9px; margin-bottom:0px");
				} else if (w_type === "주정강화") {
					return ("background: #d7edff; padding: 9px; margin-bottom:0px");
				} else if (w_type === "스파클링") {
					return ("background: #d8e6ff; padding: 9px; margin-bottom:0px");
				} else {
					return ("background: #d3d3d3; padding: 9px; margin-bottom:0px");
				}
			}

			$
					.ajax({
						url : "/product/sortedAdded",
						type : "GET",
						async : false,
						data : {
							"w_price1" : w_price1,
							"w_price2" : w_price2,
							"w_type" : w_type,
							"wr_nation_kor" : wr_nation_kor,
							"wv_variety_kor" : wv_variety_kor,
							"w_sweetness" : w_sweetness,
							"w_acidity" : w_acidity,
							"w_body" : w_body,
							"w_tannin" : w_tannin,
							"sort" : val,
							"startIdx" : startIdx,
							"endIdx" : endIdx
						},
						beforeSend : function(xhr) {
							let header = $("meta[name='_csrf_header']").attr(
									"content");
							let token = $("meta[name='_csrf']").attr("content");
							xhr.setRequestHeader(header, token);
						},
						success : function(data) {
							//alert("성공");
							for (let i = 0; i < data.length; i++) {
								html += "<li>"
								html += "<div class='item'>"
								html += "<div class='main_img'>"
								html += "<a href=/product/item?w_id="
										+ data[i].w_id
										+ " class='prd_img table_box'><picture>"
								html += "<img src='" + data[i].w_img + "'loading='lazy'> </picture></a>"
								html += "<p class='vivino'>평균 평점<em style='color:#bd0808;'> "
										+ data[i].avg_db_rating + " </em></p>"
								html += "<div class='label_wrap'>"
								html += "</div>"
								html += "</div>"
								html += "<div class='info'>"
								html += "<div class='more_info'>"
								html += "<p class='prd_name'>"
								html += "<a href='/product/list/'>"
								html += "<span class='list-wine-name'>"
										+ data[i].w_name_kor + "</span>"
								html += "<span class='en list-wine-name-eng'>"
										+ data[i].w_name + "</span></a>"
								html += "</p>"
								html += "</div>"
								html += "<div class='cate_label' style='display:flex; align-items: center;'>"

								html += "<span style='background: #E0D8EA; padding: 9px; display:none;' id='wine_nation_kor'>"
										+ data[i].wr_nation_kor + "</span>"

								var flagNation = getNationImg(data[i].wr_nation_kor);

								html += "<img style='margin-top: 0px;' id='wine_nation_image' src='"+ flagNation +"'>"

								var typeColor = getColorByWineType(data[i].w_type);

								html += "<span style='" + typeColor + "'>"
										+ data[i].w_type + " 와인" + "</span>"
								html += "<p class='price' style='font-size: 13px; margin-left: 7px; font-weight: bold;'>"
								html += "<ins style='text-decoration-line:none;'>"
										+ comma(data[i].w_price) + "원</ins>"
								html += "</p>"
								html += "</div>"
								html += "</div>"
								html += "<div class='price_area' style='text-align: right; font-weight: bold;'>"
								html += "</div>"
								html += "</div>"
								html += "</div>"
								html += "</li>"
							}
							$('#product_ul').append(html);
							startIdx += 6;
							endIdx += 6;
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						}
					});
		}
	</script>

	<script>
		let w_price1 = 0;
		let w_price2 = 800000000;
		let w_type = [];
		let wr_nation_kor = [];
		let wv_variety_kor = [];
		let w_sweetness = -1;
		let w_acidity = -1;
		let w_body = -1;
		let w_tannin = -1;

		//필터 초기화 함수
		function resetFilter() {
			//alert("필터 초기화 함수 실행");

			startIdx = 0;
			endIdx = 10;
			w_price1 = 0;
			w_price2 = 800000000;
			w_type = [];
			wr_nation_kor = [];
			wv_variety_kor = [];
			w_sweetness = -1;
			w_acidity = -1;
			w_body = -1;
			w_tannin = -1;
			scroll = 0;

			$("#fromPrice").val(w_price1);
			$("#toPrice").val(w_price2);
			$(".js-input-from1").val(w_sweetness);
			$(".js-input-from2").val(w_acidity);
			$(".js-input-from3").val(w_body);
			$(".js-input-from4").val(w_tannin);

			let sweetFinal = $(".js-range-slider1").data("ionRangeSlider");
			let acidityFinal = $(".js-range-slider2").data("ionRangeSlider");
			let tanninFinal = $(".js-range-slider3").data("ionRangeSlider");
			let bodyFinal = $(".js-range-slider4").data("ionRangeSlider");
			let priceFinal = $(".js-range-slider").data("ionRangeSlider");

			//스타일, 가격 초기화
			sweetFinal.reset();
			acidityFinal.reset();
			tanninFinal.reset();
			bodyFinal.reset();
			priceFinal.reset();

			//타입 초기화
			$("#w_type .filter-text").removeClass("checked");
			$('.hi' + $("#w_type").attr('id')).remove();
			//국가 초기화
			$("#wr_nation_kor .filter-text").removeClass("checked");
			$('.hi' + $("#wr_nation_kor").attr('id')).remove();
			//품종 초기화
			$("#wv_variety_kor .filter-text").removeClass("checked");
			$('.hi' + $("#wv_variety_kor").attr('id')).remove();
			//당도 초기화
			if ($('.hi' + $("#w_sweetness").attr('id')).length) {
				$('.hi' + $("#w_sweetness").attr('id')).remove();
			}
			//산도 초기화
			if ($('.hi' + $("#w_acidity").attr('id')).length) {
				$('.hi' + $("#w_acidity").attr('id')).remove();
			}
			//탄닌 초기화
			if ($('.hi' + $("#w_tannin").attr('id')).length) {
				$('.hi' + $("#w_tannin").attr('id')).remove();
			}
			//바디감 초기화
			if ($('.hi' + $("#w_body").attr('id')).length) {
				$('.hi' + $("#w_body").attr('id')).remove();
			}

			$("#keyword1").remove('.keyFilter');
			filterApply();
			sortedList();
		}
		$(document).ready(
				function() {
					$("#w_type .filter-text").on(
							"click",
							function() {

								//키워드 색깔 바꾸기
								if ($(this).hasClass("checked")) {
									$(this).removeClass("checked");
									w_type.shift($(this).text());
									//이미 검색된 필터면 지우기
									$('.hi' + $(this).attr('id')).remove();

								} else {
									$(this).addClass("checked");
									w_type.push($(this).text());
									//필터 검색 결과 페이지에 키워드 출력
									$("#keyword1").prepend(
											"<div id='keykey' class='keyFilter hi"
													+ $(this).attr('id')
													+ "\'>" + $(this).text()
													+ `</div>`);
								}
								filterApply();
							})

					$("#wr_nation_kor .filter-text").on(
							"click",
							function() {

								if ($(this).hasClass("checked")) {
									$(this).removeClass("checked");
									wr_nation_kor.shift($(this).text());
									$('.hi' + $(this).attr('id')).remove();

								} else {
									$(this).addClass("checked");
									wr_nation_kor.push($(this).text());
									$("#keyword1").prepend(
											"<div id='keykey' class='keyFilter hi"
													+ $(this).attr('id')
													+ "\'>" + $(this).text()
													+ `</div>`);
								}
								filterApply();
							})

					$("#wv_variety_kor .filter-text").on(
							"click",
							function() {

								if ($(this).hasClass("checked")) {
									$(this).removeClass("checked");
									wv_variety_kor.shift($(this).text());
									$('.hi' + $(this).attr('id')).remove();

								} else {
									$(this).addClass("checked");
									wv_variety_kor.push($(this).text());
									$("#keyword1").prepend(
											"<div id='keykey' class='keyFilter hi"
													+ $(this).attr('id')
													+ "\'>" + $(this).text()
													+ `</div>`);
								}
								filterApply();
							})

					//당도 넘기기
					$("#w_sweetness").on(
							"click change",
							function() {
								if ($('.hi' + $(this).attr('id')).length) {
									$('.hi' + $(this).attr('id')).remove();
								}
								$("#keyword1").prepend(
										"<div id='keykey' class='keyFilter hi"
												+ $(this).attr('id') + "\'>"
												+ '당도 ' + $(this).val()
												+ `</div>`);
							})

					//산도 넘기기
					$("#w_acidity").on(
							"click change",
							function() {
								if ($('.hi' + $(this).attr('id')).length) {
									$('.hi' + $(this).attr('id')).remove();
								}
								$("#keyword1").prepend(
										"<div id='keykey' class='keyFilter hi"
												+ $(this).attr('id') + "\'>"
												+ '산도 ' + $(this).val()
												+ `</div>`);
							})

					//탄닌 넘기기
					$("#w_tannin").on(
							"click change",
							function() {
								if ($('.hi' + $(this).attr('id')).length) {
									$('.hi' + $(this).attr('id')).remove();
								}
								$("#keyword1").prepend(
										"<div id='keykey' class='keyFilter hi"
												+ $(this).attr('id') + "\'>"
												+ '탄닌 ' + $(this).val()
												+ `</div>`);
							})

					//바디감 넘기기
					$("#w_body").on(
							"click change",
							function() {
								if ($('.hi' + $(this).attr('id')).length) {
									$('.hi' + $(this).attr('id')).remove();
								}
								$("#keyword1").prepend(
										"<div id='keykey' class='keyFilter hi"
												+ $(this).attr('id') + "\'>"
												+ '바디감 ' + $(this).val()
												+ `</div>`);
							})

					$("#filterApply").on("click", function() {

						w_price1 = $("#fromPrice").val();
						w_price2 = $("#toPrice").val();
						w_sweetness = $(".js-input-from1").val();
						w_acidity = $(".js-input-from2").val();
						w_body = $(".js-input-from3").val();
						w_tannin = $(".js-input-from4").val();

						sortedList();
						$('.filter-keywords').css({
							'display' : 'block'
						});
						$('#resetDiv').css({
							'display' : 'flex',
							'width' : '40px'
						});
						commonUI.layer.close();
					})
				});

		//필터 적용 후 검색 결과 출력 함수
		function filterApply() {
			//return false;	 

			//alert("필터 검색 결과 실행!!");
			w_price1 = $("#fromPrice").val();
			w_price2 = $("#toPrice").val();
			w_sweetness = $(".js-input-from1").val();
			w_acidity = $(".js-input-from2").val();
			w_body = $(".js-input-from3").val();
			w_tannin = $(".js-input-from4").val();

			$
					.ajax({
						url : "/product/filteredCnt",
						type : "GET",
						data : {
							"w_price1" : w_price1,
							"w_price2" : w_price2,
							"w_type" : w_type,
							"wr_nation_kor" : wr_nation_kor,
							"wv_variety_kor" : wv_variety_kor,
							"w_sweetness" : w_sweetness,
							"w_acidity" : w_acidity,
							"w_body" : w_body,
							"w_tannin" : w_tannin,
							"sort" : "recent",
							"startIdx" : 1,
							"endIdx" : 6
						},
						beforeSend : function(xhr) {
							let header = $("meta[name='_csrf_header']").attr(
									"content");
							let token = $("meta[name='_csrf']").attr("content");
							xhr.setRequestHeader(header, token);
						},
						success : function(data) {
							//alert("필터 검색 결과 함수 성공!!");
							//alert(data);
							$("#filterApply").text(
									data.toLocaleString('ko-KR') + "개의 결과 보기");
							$("#total_count_text").text(
									"총 " + data.toLocaleString('ko-KR') + " 건");
							startIdx = 1;
							endIdx = 6;
							$("#product_ul").html("");
							sortedList();
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						}
					});
		};
	</script>

</body>
<script>
	$(function() {
		var $range1 = $(".js-range-slider1"), $input1 = $(".js-input-from1");
		$range1.ionRangeSlider({
			skin : "round",
			values : [ '선택 안함', 0, 1, 2, 3, 4, 5 ],
			from : "${wine.db_sweetness}",
			onChange : function(data) {

				if (data.from === 0) {
					$input1.prop("value", -1);
				} else {
					$input1.prop("value", data.from - 1);
				}
				filterApply();
			}
		});

		var $range2 = $(".js-range-slider2"), $input2 = $(".js-input-from2");
		$range2.ionRangeSlider({
			skin : "round",
			values : [ '선택 안함', 0, 1, 2, 3, 4, 5 ],
			from : "${wine.db_acidity}",
			onChange : function(data) {
				if (data.from === 0) {
					$input2.prop("value", -1);
				} else {
					$input2.prop("value", data.from - 1);
				}
				filterApply();
			}

		});

		var $range3 = $(".js-range-slider3"), $input3 = $(".js-input-from3");
		$range3.ionRangeSlider({
			skin : "round",
			values : [ '선택 안함', 0, 1, 2, 3, 4, 5 ],
			from : "${wine.db_tannin}",
			onChange : function(data) {
				if (data.from === 0) {
					$input3.prop("value", -1);
				} else {
					$input3.prop("value", data.from - 1);
				}
				filterApply();
			}
		});

		var $range4 = $(".js-range-slider4"), $input4 = $(".js-input-from4");
		$range4.ionRangeSlider({
			skin : "round",
			values : [ '선택 안함', 0, 1, 2, 3, 4, 5 ],
			from : "${wine.db_body}",
			onChange : function(data) {
				if (data.from === 0) {
					$input4.prop("value", -1);
				} else {
					$input4.prop("value", data.from - 1);
				}
				filterApply();
			}
		});

		$(".js-range-slider")
				.ionRangeSlider(
						{
							skin : "round",
							type : "double",
							min : 0,
							max : 8000000,
							from : 0,
							to : 8000000,
							drag_interval : false,
							prettify_separator : ",",
							prettify_enabled : true,
							prefix : "₩",
							//min_interval: 5,
							step : 10000,
							onStart : function(data) {
								$(".js-input-from").val(
										data.from.toLocaleString() + '원');
								$(".js-input-to").val(
										data.to.toLocaleString() + '원');
							},
							onUpdate : function(data) {
								$(".js-input-from").val(0 + '원');
								$(".js-input-to").val("8,000,000" + '원');
							},
							onFinish : function(data) {

								$('#fromPrice').val(data.from);
								$('#toPrice').val(data.to);
								$('.js-input-from').val(
										data.from.toLocaleString() + '원');
								$('.js-input-to').val(
										data.to.toLocaleString() + '원');

								var fromPrice = data.from.toLocaleString()
										+ '원';
								var toPrice = data.to.toLocaleString() + '원';
								var priceRange = fromPrice + ' ~ ' + toPrice;
								$('#priceRange').text(priceRange);
								$('#priceRange')
										.attr(
												"style",
												"border: 1px solid; width: auto; border-radius: 20px; background-color: #46675c; color: white; font-size: 1; text-align: center;");
								$('#priceRange').addClass("pricerange");

								filterApply();
								console.log("ada");
							}
						});
	});
	/* 1 : 고도주
	 2 : 레드
	 3 : 화이트
	 4 : 로제
	 5 : 스파클링
	 6 : 주정강화
	 7 : 최신순
	 8 : 베스트 */

	$(document).ready(function() {
		let headerCtgr = "${headerCtgr}";
		$('#appendSuper').val(1);

		if (parseInt(headerCtgr) == 1) {
			w_type.push('고도주');
			sortedList();
		} else if (parseInt(headerCtgr) == 2) {
			w_type.push('레드');
			sortedList();
		} else if (parseInt(headerCtgr) == 3) {
			w_type.push('화이트');
			sortedList();
		} else if (parseInt(headerCtgr) == 4) {
			w_type.push('로제');
			sortedList();
		} else if (parseInt(headerCtgr) == 5) {
			w_type.push('스파클링');
			sortedList();
		} else if (parseInt(headerCtgr) == 6) {
			w_type.push('주정강화');
			sortedList();
		} else if (parseInt(headerCtgr) == 7) {
			$('#js_select').val('totalsales').prop('selected', true);
			sortedList();
		} else if (parseInt(headerCtgr) == 8) {
			$('#js_select option').val('recent').prop('selected', true);
			sortedList();
		}
		$('#appendSuper').val(0);
		console.log("자동");
	});
</script>