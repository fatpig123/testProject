<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<script src="/resources/asset/js/product/sortedList.js"></script>
<script src="/resources/asset/js/product/addInfinity.js"></script>
   
<!DOCTYPE html>

<style>
.wine-type {
   height: 100;
}

.range-slider {
   position: relative;
   height: 50px;
   font-size: 13px;
   letter-spacing: 0;
}

.wine-filter-box-price .irs-slider {
   position: absolute;
   top: 30px;
   width: 18px;
   height: 18px;
   border-radius: 9px;
   box-shadow: 2.4px 6.6px 10px 0 rgb(0 0 0/ 10%);
   border: solid 1px #46675c !important;
   background-color: #fff;
}

.wine-filter-box-price .irs-line {
   top: 36px;
   height: 8px;
   background-color: #f4f4f4;
   border-radius: 4px;
}

.wine-filter-box-price .irs-bar {
   position: absolute;
   display: block;
   top: 36px;
   height: 8px;
   background-color: #46675c !important;
}

.irs--round .irs-handle {
   top: 26px;
   width: 24px;
   height: 24px;
   border: 4px solid #46675c !important;
   background-color: white;
   border-radius: 24px;
   box-shadow: 0 1px 3px rgb(0 0 255/ 30%);
}

.irs--round .irs-from, .irs--round .irs-to, .irs--round .irs-single {
   font-size: 14px;
   line-height: 1;
   text-shadow: none;
   padding: 3px 5px;
   background-color: #46675c !important;
   color: white;
   border-radius: 4px;
}

.irs--round .irs-from:before, .irs--round .irs-to:before, .irs--round .irs-single:before
   {
   position: absolute;
   display: block;
   content: "";
   bottom: -6px;
   left: 50%;
   width: 0;
   height: 0;
   margin-left: -3px;
   overflow: hidden;
   border: 3px solid transparent;
   border-top-color: #46675c !important;
}

.range-box input[type=text] {
   min-width: 32%;
   width: auto;
   height: 24px;
   margin-top: 0;
   padding: 0;
   color: #46675c;
   font-size: 14px;
   border: 0;
   outline: none;
   background: #fff;
}

.range-box .js-input-to {
   float: right;
   text-align: right;
}

.range-box span {
   display: inline-block;
   width: 40%;
}

.wine-matching-subj {
   margin-top: 14px;
}

.pop-wine-view {
   width: 90%;
   margin: 0;
   padding: 0;
   box-sizing: border-box;
}

.pop-wine-view * {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
}

.wine-d-box-info-list dl {
   margin-bottom: 0;
}

.apply-btn {
   border: solid 1px;
   width: 100%;
   height: 60px;
   background-color: #46675c;
   color: white;
   font-size: large;
}
/* 종류 */
.range-slider {
   position: relative;
   height: 50px;
   font-size: 13px;
   letter-spacing: 0;
}

.wine-type {
   float: none;
   width: auto;
   height: 100px;
}

.wine-type ul {
   overflow: hidden;
   padding: 0;
}

.wine-type li {
   float: left;
   width: calc(( 100% - 20px)/3);
   text-align: center;
}

.wine-type li+li {
   margin: 0 0 10px 10px;
}

.wine-type li:nth-child(3n+1) {
   margin-left: 0;
}

.wine-type li div input[type=checkbox] {
   display: none;
}

.wine-type li div input[type=checkbox]+label {
   display: block;
   padding: 2px 5px;
   border: 1px solid #ccc;
   border-radius: 99px;
}

.wine-type li div input[type=checkbox]:checked+label {
   color: #46675c;
   border: 1px solid #46675c;
}

/* 가격 필터 박스 */
.wine-filter-box .page-top-sch {
   margin: 0 0 20px;
}

.wine-filter-box-price {
   position: relative;
}

.wine-filter-box-price .range-slider {
   position: relative;
   height: 50px;
   font-size: 13px;
   letter-spacing: 0;
}

.wine-filter-box-price .irs-line {
   top: 36px;
   height: 8px;
   background-color: #f4f4f4;
   border-radius: 4px;
}

.wine-filter-box-price .irs-slider {
   position: absolute;
   top: 30px;
   width: 18px;
   height: 18px;
   border-radius: 9px;
   box-shadow: 2.4px 6.6px 10px 0 rgba(0, 0, 0, 0.1);
   border: solid 1px #46675c;
   background-color: #fff;
}

.wine-filter-box-price .irs-bar {
   position: absolute;
   display: block;
   top: 36px;
   height: 8px;
   background-color: #46675c !important;
}

.wine-filter-box-price .irs-min, .wine-filter-box-price .irs-max {
   color: #777;
   line-height: 1;
   top: 0;
   padding: 3px 5px;
   background-color: #f4f4f4;
   border-radius: 4px;
}

.irs-min {
   left: 0;
}

.irs-max {
   right: 0;
}

.irs-min, .irs-max {
   position: absolute;
   display: block;
   cursor: default;
}

.wine-filter-box-price .irs-from, .wine-filter-box-price .irs-to,
   .wine-filter-box-price .irs-single {
   font-size: 12px;
   line-height: 1;
   text-shadow: none;
   padding: 3px 5px;
   background-color: #46675c;
   color: white;
   border-radius: 4px;
}

.irs-from, .irs-to, .irs-single {
   position: absolute;
   display: block;
   top: 0;
   left: 0;
   cursor: default;
   white-space: nowrap;
}

.wine-filter-box-price .irs-from:before, .wine-filter-box-price .irs-to:before,
   .wine-filter-box-price .irs-single:before {
   position: absolute;
   display: block;
   content: "";
   bottom: -6px;
   left: 50%;
   width: 0;
   height: 0;
   margin-left: -3px;
   overflow: hidden;
   border: 3px solid transparent;
   border-top-color: #46675c;
}

/* 가격 표시 박스 */
.range-box {
   overflow: hidden;
}

.range-box input[type=text] {
   min-width: 32%;
   width: auto;
   height: 24px;
   margin-top: 0;
   padding: 0;
   color: #404040;
   font-size: 14px;
   border: 0;
   outline: none;
   background: #fff;
}

.range-box .js-input-to {
   float: right;
   text-align: right;
}

.range-box span {
   display: inline-block;
   width: 40%;
}

.range-box .range-box-from {
   
}

.range-box .range-box-to {
   float: right;
   text-align: right;
   margin-right: 13px;
}

.chk-price-none {
   top: 0;
   right: 0;
   z-index: 3;
}

.chk-price-none .input-box label {
   margin-right: 0;
}

.irs {
   position: relative;
   display: block;
   -webkit-touch-callout: none;
   -webkit-user-select: none;
   -khtml-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

.irs-line {
   position: relative;
   display: block;
   overflow: hidden;
   outline: none !important;
}

.irs-line-left, .irs-line-mid, .irs-line-right {
   position: absolute;
   display: block;
   top: 0;
}

.irs-line-left {
   left: 0;
   width: 11%;
}

.irs-line-mid {
   left: 9%;
   width: 82%;
}

.irs-line-right {
   right: 0;
   width: 11%;
}

.irs-bar {
   position: absolute;
   display: block;
   left: 0;
   width: 0;
}

.irs-bar-edge {
   position: absolute;
   display: block;
   top: 0;
   left: 0;
}

.irs-shadow {
   position: absolute;
   display: none;
   left: 0;
   width: 0;
}

.irs-slider {
   position: absolute;
   display: block;
   cursor: default;
   z-index: 1;
}

.irs-slider.type_last {
   z-index: 2;
}

.irs-min {
   position: absolute;
   display: block;
   left: 0;
   cursor: default;
}

.irs-max {
   position: absolute;
   display: block;
   right: 0;
   cursor: default;
}

.irs-from, .irs-to, .irs-single {
   position: absolute;
   display: block;
   top: 0;
   left: 0;
   cursor: default;
   white-space: nowrap;
}

.irs-grid {
   position: absolute;
   display: none;
   bottom: 0;
   left: 0;
   width: 100%;
   height: 20px;
}

.irs-with-grid .irs-grid {
   display: block;
}

.irs-grid-pol {
   position: absolute;
   top: 0;
   left: 0;
   width: 1px;
   height: 8px;
   background: #000;
}

.irs-grid-pol.small {
   height: 4px;
}

.irs-grid-text {
   position: absolute;
   bottom: 0;
   left: 0;
   white-space: nowrap;
   text-align: center;
   font-size: 9px;
   line-height: 9px;
   padding: 0 3px;
   color: #000;
}

.irs-disable-mask {
   position: absolute;
   display: block;
   top: 0;
   left: -1%;
   width: 102%;
   height: 100%;
   cursor: default;
   background: rgba(0, 0, 0, 0.0);
   z-index: 2;
}

.irs-disabled {
   opacity: 0.4;
}

.lt-ie9 .irs-disabled {
   filter: alpha(opacity = 40);
}

.irs-hidden-input {
   position: absolute !important;
   display: block !important;
   top: 0 !important;
   left: 0 !important;
   width: 0 !important;
   height: 0 !important;
   font-size: 0 !important;
   line-height: 0 !important;
   padding: 0 !important;
   margin: 0 !important;
   outline: none !important;
   z-index: -9999 !important;
   background: none !important;
   border-style: solid !important;
   border-color: transparent !important;
}

.irs--round .irs-handle {
   top: 26px;
   width: 24px;
   height: 24px;
   border: 4px solid #46675c !important;
   background-color: white;
   border-radius: 24px;
   box-shadow: 0 1px 3px rgb(0 0 255/ 30%);
}

.irs--round .irs-from, .irs--round .irs-to, .irs--round .irs-single {
   font-size: 14px;
   line-height: 1;
   text-shadow: none;
   padding: 3px 5px;
   background-color: #46675c !important;
   color: white;
   border-radius: 4px;
}

.irs--round .irs-from:before, .irs--round .irs-to:before, .irs--round .irs-single:before
   {
   position: absolute;
   display: block;
   content: "";
   bottom: -6px;
   left: 50%;
   width: 0;
   height: 0;
   margin-left: -3px;
   overflow: hidden;
   border: 3px solid transparent;
   border-top-color: #46675c !important;
}

.range-box input[type=text] {
   min-width: 32%;
   width: auto;
   height: 24px;
   margin-top: 0;
   padding: 0;
   color: #404040;
   font-size: 14px;
   border: 0;
   outline: none;
   background: #fff;
}

.range-box .js-input-to {
   float: right;
   text-align: right;
}

.range-box span {
   display: inline-block;
   width: 40%;
}

.filter-text {
  border-radius: 20px;
    border: 1px solid #ccc;
    width: 90%;
    height: 26px;
    color: #46675c;
    font-weight: 100;
    margin: auto;
    margin-top: 10px;
    padding-top: 4px;
}
.filter-text.checked {
    border-radius: 10px;
    border: 1px solid;
    width: 90%;
    height: 22px;
    color: white;
    background-color: #46675c;
    font-weight: 450;
    margin: auto;
    margin-top: 10px;
    padding-top: 2px;
}

.reset-filter {
	background-color: #46675c;
	border-radius: 15px;
	color: white;
	margin-left: 330px;
	width: 80px;
	height: 25px;
    margin-top: 10px;
}

#wr_nation_kor {
	text-align: center;
}
#wr_nation_kor li {
	display: inline-block;
}
#wr_nation_kor a {
	width:30px;
}
#w_type a {
	width: 30px;
}
#keykey {
	border: 1px solid;
	width: auto;
	border-radius: 20px;
	background-color: #46675c;
	color: white;
	font-size: 1;
	text-align: center;
	padding: 12px;
	}
</style>

<body>
   <!-- 모바일 카테고리 레이어 -->
   <div class="layer category_layer" style="display:none;">
      <div class="display_table">
         <div class="table_cell">
            <div class="layer_area">
               <button style="margin:0; " type="button" class="layer_close"
                  onclick="commonUI.layer.close()">
                  <span>Layer Close</span>
               </button>
               <div class="layer_con">
                  <!-- <div class="open_search_area">
                     <button type="button" id="mb_search_btn" onclick="$('.mb_search_layer').show();$('.mb_search_layer #search_box').focus();">
                     오늘 마시고 싶은 와인을 검색해 보세요.
                     </button>
                  </div> -->
                  <button type="submit" class="reset-filter" onclick="resetFilter()" style="margin-top: 22px;">전체 초기화</button>

                  <div class="category_area" style="padding: 0; margin-bottom: 40px;">
                     <div class="box">
                        <div style="display: flex; justify-content: space-between;">
                           <p class="tit">가격</p>
                        </div>
                        <ul style="display: block; margin: 0 25px;">
                           <div class="wine-type wine-filter-box wine-filter-box-price" >
                              <div class="range-slider">
                                 <input type="text" class="js-range-slider" name="my_range" id="w_price1" value="" />
                              </div>
                              <div class="range-box">
                                 <span class="range-box-from">
                                    <input type="text" class="js-input-from" value="0" disabled="disabled">
                                 </span>
                                 <span class="range-box-to">
                                    <input type="text" class="js-input-to" value="0" disabled="disabled">
                                 </span>
                              </div>
                           </div>

                        </ul>
                        <input type="hidden" value="0" id="fromPrice"> 
                        <input type="hidden" value="8000000" id="toPrice">
                     </div>
                     
                     <div class="box">
                        <p class="tit">타입</p>
                        <ul id="w_type">
                           <li class="ico_red">
	                           <a href="javascript:void(0)" data-type="highalcohol" id="highalcohol"></a>
	                           <p class="filter-text" id="highalcohol">고도주</p>
                           </li>
                           <li class="ico_red">
	                           <a href="javascript:void(0)" id="red"></a>
	                           <p class="filter-text" id="red">레드</p>
                           </li>
                           <li class="ico_white">
	                           <a href="javascript:void(0)" id="white"></a>
	                           <p class="filter-text" id="white">화이트</p>
                           </li>
                           <li class="ico_rose">
	                           <a href=javascript:void(0)" id="rose"></a>
	                           <p class="filter-text" id="rose">로제</p>
                           </li>
                           <li class="ico_sparkling">
	                           <a href="javascript:void(0)" id="sparkling"></a>
	                           <p class="filter-text" id="sparkling">스파클링</p>
                           </li>
                           <li class="ico_spirits">
	                           <a href="javascript:void(0)" id="fortified"></a>
	                           <p class="filter-text" id="fortified">주정강화</p>
                           </li>
                        </ul>
                     </div>
                    
                     <div class="box">
                        <p class="tit">국가</p>
                        <ul id="wr_nation_kor">
                           <li class="ico_france">
	                           <a href="javascript:void(0)" id="france"></a>
	                           <p class="filter-text" id="france">프랑스</p>
                           </li>
                           <li class="ico_italia">
	                           <a href="javascript:void(0)" id="italy"></a>
	                           <p class="filter-text" id="italy">이탈리아</p>
                           </li>
                           <li class="ico_spain">
	                           <a href="javascript:void(0)" id="spain"></a>
	                           <p class="filter-text" id="spain">스페인</p>
                           </li>
                           <li class="ico_germ">
	                           <a href="javascript:void(0)" id="germany"></a>
	                           <p class="filter-text" id="germany">독일</p>
                           </li>
                           <li class="ico_usa">
	                           <a href="javascript:void(0)" id="usa"></a>
	                           <p class="filter-text" id="usa">미국</p>
                           </li>
                           <li class="ico_chile">
	                           <a href="javascript:void(0)" id="chile"></a>
	                           <p class="filter-text" id="chile">칠레</p>
                           </li>
                           <li class="ico_argentina">
	                           <a href="javascript:void(0)" id="argentina"></a>
	                           <p class="filter-text" id="argentina">아르헨티나</p>
                           </li>
                           <li class="ico_aus">
	                           <a href="javascript:void(0)" id="aus"></a>
	                           <p class="filter-text" id="aus">호주</p>
                           </li>
                           <li class="ico_southafrica">
	                           <a href="javascript:void(0)" id="southafrica"></a>
	                           <p class="filter-text" id="southafrica">남아프리카</p>
                           </li>
                        </ul>
                     </div>
                     <style>
                     .ico_wtype {
                     display: inline-block;
                     }
                     
                     </style>
                     <div class="box">
                        <p class="tit">품종</p>
                        <ul id="wv_variety_kor" style="text-align: center;">
                           <li class="ico_wtype"><p class="filter-text" id="cabernetsauvignon">카베르네 소비뇽</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="nerello">네렐로 마스칼레제</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="pinotnoir">피노 누아</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="corvina">코르비나</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="cabernetfranc">카베르네 프랑</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="pinotnero">피노 네로</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="lambrusco">람브루스코</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="arbane">아르반</p></li>
                           <li class="ico_wtype"><p class="filter-text" id="pedroximenez">페드로 히메네스</p></li>
                        </ul>
                     </div>
                     <div class="box" style="margin: 0 25px;">
                        <p class="tit">스타일</p>
                        <div class="wine-type wine-filter-box wine-filter-box-price" style="display: flex;">
                           <div class="view-wine-matching" style="position: relative; margin-top: 20px; color: #46675c; font-weight: 700;">
                              <div class="wine-matching-subj">
                                 <span>당도</span>
                              </div>
                           </div>
                           <div style="position: absolute; right: 0; top: 0; width: 90%;">
                              <div class="range-slider">
                                 <input id="w_sweetness" type="text" class="js-range-slider1" name="my_range" value="" />
                              </div>
                              <div class="range-box">
                                 <span class="range-box-from">
                                    <input type="text" class="js-input-from11" value="드라이" disabled="disabled">
                                 </span> 
                                 <span class="range-box-to" style="width: 12%">
                                    <input type="text" class="js-input-to1" value="스위트" disabled="disabled">
                                 </span>
                              </div>
                           </div>
                           <input class="js-input-from1" type="hidden" id="sweetness" value="-1">
                        </div>
                        
                        <div class="wine-type wine-filter-box wine-filter-box-price" style="display: flex;">
                           <div class="view-wine-matching" style="position: relative; margin-top: 20px; color: #46675c; font-weight: 500;">
                              <div class="wine-matching-subj">
                                 <span>산도</span>
                              </div>
                           </div>
                           <div style="position: absolute; right: 0; top: 0; width: 90%;">
                              <div class="range-slider">
                                 <input id="w_acidity" type="text" class="js-range-slider2" name="my_range" value="" />
                              </div>
                              <div class="range-box">
                                 <span class="range-box-from">
                                    <input type="text" class="js-input-from22" value="낮음" disabled="disabled">
                                 </span> 
                                 <span class="range-box-to" style="width: 12%">
                                    <input type="text" class="js-input-to2" value="시큼함" disabled="disabled">
                                 </span>
                              </div>
                           </div>
                           <input class="js-input-from2" type="hidden" id="acidity" value="-1">
                        </div>
                        
                        <div class="wine-type wine-filter-box wine-filter-box-price" style="display: flex;">
                           <div class="view-wine-matching" style="position: relative; margin-top: 20px; color: #46675c; font-weight: 500;">
                              <div class="wine-matching-subj">
                                 <span>탄닌</span>
                              </div>
                           </div>
                           <div style="position: absolute; right: 0; top: 0; width: 90%;">
                              <div class="range-slider">
                                 <input id="w_tannin" type="text" class="js-range-slider3" name="my_range" value="" />
                              </div>
                              <div class="range-box">
                                 <span class="range-box-from">
                                    <input type="text" class="js-input-from33" value="매끈한" disabled="disabled">
                                 </span> 
                                 <span class="range-box-to" style="width: 12%">
                                    <input type="text" class="js-input-to3" value="떫음" disabled="disabled">
                                 </span>
                              </div>
                           </div>
                           <input class="js-input-from3" type="hidden" id="tannin" value="-1">
                        </div>
                        
                        <div class="wine-type wine-filter-box wine-filter-box-price" style="display: flex;">
                           <div class="view-wine-matching" style="position: relative; margin-top: 20px; color: #46675c; font-weight: 500;">
                              <div class="wine-matching-subj">
                                 <span>바디</span>
                              </div>
                           </div>
                           <div style="position: absolute; right: 0; top: 0; width: 90%;">
                              <div class="range-slider">
                                 <input id="w_body" type="text" class="js-range-slider4" name="my_range" value="" />
                              </div>
                              <div class="range-box">
                                 <span class="range-box-from">
                                    <input type="text" class="js-input-from44" value="가벼운" disabled="disabled">
                                 </span> 
                                 <span class="range-box-to" style="width: 12%">
                                    <input type="text" class="js-input-top4" value="묵진함" disabled="disabled">
                                 </span>
                              </div>
                           </div>
                           <input class="js-input-from4" type="hidden" id="body" value="-1">
                        </div>
                     </div>
                  </div>
                  <div class="box mb_lnb pc_hidden" style="position: fixed; z-index: 502; bottom: 0; width: 100%; left: 0;">
                     <button type="button" class="apply-btn" id="filterApply" onclick="filterApply();">7,567개 결과 검색</button>
                  </div>
                  
                  <!-- 모바일 검색 레이어 -->
                  <div class="mb_search_layer">
                     <div class="display_table">
                        <div class="table_cell">
                           <div class="layer_area">
                              <div class="layer_con">
                                 <form
                                    action="https://www.winenara.com/shop/product/search_product_lists"
                                    id="searchForm" name="searchForm" method="get"
                                    accept-charset="utf-8">
                                    <div class="search_box">
                                       <button type="button" class="btn_close" onclick="$('.mb_search_layer').hide();">모바일 검색창 닫기</button>
                                       <input type="text" id="search_box" name="keyword" placeholder="오늘 마시고 싶은 와인을 검색해 보세요." autocomplete="off" value="">
                                       <button type="submit" id="s_btn">검색</button>
                                    </div>
                                 </form>
                                 <!-- 최근검색어 -->
                                 <div class="search_result" id="search_block">
                                    <div class="result_inner">
                                       <div class="allDelete off">
                                          <h2 class="tit">최근검색어</h2>
                                          <button type="button" class="btn del_btn"
                                             onclick="all_del_item();">전체삭제</button>
                                       </div>
                                       <ul id="result_list" class="result_list">
                                          <li id="nodata">최근검색어 내역이 없습니다.</li>
                                       </ul>
                                    </div>
                                 </div>

                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <input type="hidden" id="appendSuper" value="0">
</body>
</html>
