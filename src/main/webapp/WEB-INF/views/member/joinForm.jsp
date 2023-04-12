<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko">

<body>
	<!-- 와인 프로파일 레이어 -->
	<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
	<div class="layer wine_profile_layer"></div>
	<!-- //와인 프로파일 레이어 -->

	<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
	<div class="layer grade_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">등급현황</div>
					<div class="layer_con">
						<ul class="grade_status">
							<li>
								<p class="ico_silver">
									<span><i>Silver</i></span>
								</p> <em>실버</em>
							</li>
							<li>
								<p class="ico_gold">
									<span><i>Gold</i></span>
								</p> <em>골드</em>
							</li>
							<li>
								<p class="ico_diamond">
									<span><i>Diamond</i></span>
								</p> <em>다이아몬드</em>
							</li>
							<li>
								<p class="ico_trinity">
									<span><i>Trinity</i></span>
								</p> <em>트리니티</em>
							</li>
						</ul>
						<div class="grade_ex">
							<dl>
								<dt>내 구입금액</dt>
								<dd>0 원 (주문 0 건)</dd>
							</dl>
							<div class="g_list_box">
								<ul>
									<li class="tit">회원<br class="mb_hidden">등급
									</li>
									<li class="tit">실버</li>
									<li class="tit">골드</li>
									<li class="tit">다이아몬드</li>
									<li class="tit">트리니티</li>
								</ul>
								<ul>
									<li class="tit">등급<br class="mb_hidden">조건
									</li>
									<li>일반회원</li>
									<li>200만원 <br class="mb_hidden">이상구매
									</li>
									<li>500만원 <br class="mb_hidden">이상구매
									</li>
									<li>1000만원 <br class="mb_hidden">이상구매
									</li>
								</ul>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_txt btn_black"
									onclick="location.href='/shop/company/member_benefit'">
									<span>혜택 자세히보기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //회원 등급현황 레이어 -->

	<!-- 알림설정 레이어 -->
	<div class="layer push_layer" id="push_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">알림설정</div>
					<div class="layer_con">
						<ul>
							<li>
								<div class="btn switch">
									<strong class="tit">푸시알림</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch01"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch01">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
							</li>
							<li>
								<div class="btn switch">
									<strong class="tit">광고성 정보 수신 동의</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch02"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch02">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
							</li>
							<li>
								<div class="btn switch">
									<strong class="tit">야간 수신 동의</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch03"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch03">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //알림설정 레이어 -->
	<!-- 알림내역 레이어 -->
	<div class="layer push_lists_layer" id="push_lists_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">알림내역</div>
					<div class="layer_con">
						<ul>
							<li><strong class="tit">4월 이달의 와인</strong>
								<p class="info">봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.</p>
								<div class="img">
									<img
										src="/resources/asset/images/shop/product/mb_recom_lnb.jpg"
										alt="">
								</div>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
							<li><strong class="tit">아발론 브랜드 기획전</strong>
								<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
							<li><strong class="tit">아발론 브랜드 기획전</strong>
								<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //알림내역 레이어 -->

	<!-- 설정 레이어 -->
	<div class="layer set_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close btn_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">설정</div>
					<div class="layer_con">
						<strong class="tit">푸시설정</strong>
						<div class="set_con">
							<span>알림설정</span>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_alarm" class="btn_switch_check"
									onchange="push_ajax('push',this);">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<!-- <span class="txt left">ON</span> -->
										<label class="bar" for="btn_alarm">&nbsp;</label>
										<!-- <span class="txt right">OFF</span> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //설정 레이어 -->


	<input type="hidden" id="path_gb" value="MOBILE">

	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/slick.css">
	<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
	<script type="text/javascript">

    //배너 슬라이드
    $('.top_banner .top_banner_slide').slick({
        dots: false,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 8000,
        slidesToShow: 1,
    });
    $(window).scroll(function(){
        if(!$("#header").hasClass("fixed")){
            $('.top_banner .top_banner_slide').slick('refresh');
        }
    });

    $(".top_banner.time_out").hide();
    $(".top_banner.time_out").slideDown('300');
    setTimeout(function(){
        $(".top_banner.time_out").slideUp('300');
    }, 3000);
    
    function onEnterLogin() {
    	if (window.event.keyCode === 13) {
    		$("#loginBtn").trigger("click");
    	}
    }
    
    //모바일 gnb toggle menu
    $(".mb_gnb_area .menu_list li button").on("click", function(){
        $(this).next("ul").slideToggle();
        $(this).parent("li").siblings().find("ul").slideUp();
    });
    
    //테이스트 프로파일 타이틀 주석
    $(".ico_note").on("click", function(){
        $(this).toggleClass("on");
    });
    
    //선택한 sns 노출
    $(".sns_area li").on("click", function(){
        var selSns = $(this).find("span").attr("class");
        $(".sns_area .btn_sel span").attr("class", selSns);
        $(".sns_area").removeClass("on");
    });
    //선택한 store 노출
    $(".store_area li").on("click", function(){
        var selStore = $(this).find("span").text();
        $(".store_area .btn_sel span").text(selStore);
        $(".store_area").removeClass("on");
    });

    /*공유 및 URL 복사*/
	var img_url = "";
    if(img_url !== ''){
        img_url = 'https://am.witplus.com/uploads/product/';
    }
    function share_sns(e){
		RC_Method({page_type:'product_page', behavior: 'user_action', action: 'sharing'});
        var url = window.document.location.href;
        if(e == 'U'){
            var textarea = document.createElement("textarea");
            document.body.appendChild(textarea);
            textarea.value = url;
            textarea.select();
            document.execCommand("copy");
            document.body.removeChild(textarea);
            alert("URL이 복사되었습니다.");
        }else if(e == 'F'){
            window.open( 'http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url) );
        }else if(e == 'K'){
			
            Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '와인나라',
                    description: "",
                    imageUrl:'https://www.winenara.com/resources/asset/images/shop/default/pc_logo.png',
                    link: {
                        mobileWebUrl: location.href,
                        webUrl: location.href,
                    },
                },
                buttons: [
                    {
                    title: '와인나라',
                    link: {
                        mobileWebUrl: location.href,
                    },
                    },
                ]
            });
        }
    };
    
    // 검색어 다시 불러오기
    //$(function(){
		//$("#keyword").on("click", function() {
		$('#keyword').click(function(){
    		get_keyword_list_ajax();
		});

		$('#mb_search_btn').click(function(){
    		get_keyword_list_ajax();
		});


    //});

	function get_keyword_list_ajax(){
		var html = "";
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/product/get_keyword_list_ajax",
            data: { mode:'list' },
            success : function (res) {
            	if(typeof(res) == 'string'){	res = JSON.parse(res); }
                if(res.status == 'ok'){
    				var keyword_list = res.data.keyword_list;
    				if(keyword_list.length >0){
        				for (var i = 0; i <keyword_list.length; i++) {
        					html += '<li><span onclick="sch_item(';
        					html += "'"+keyword_list[i]['keyword']+"'";
        					html +=  ')" style="cursor:pointer;">'+keyword_list[i]['keyword']+'</span>';
        				  	html += '<button type="button" class="del_btn" onclick="del_item(';
                            html += "'"+keyword_list[i]['keyword']+"'";
                            html += ')"></button></li>';
        				}
        				$(".result_list").empty();
                        $(".result_list").html(html);
                   	}else{
                   		$(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                   	}
    			}else{
                    //alert(res.msg);
                    return;
                }
            },
            error: function (res) {
                console.log("최근 검색어 리스트에 오류가 발생했습니다.");
               // alert(res.responseText);
            }
        });
	}
    
    // 키워드 개별 삭제
    function del_item(keyword){
    
    	var html = "";
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
    		type: 'POST',
    		url: "/shop/product/update_keyword_ajax",
    		dataType: 'json',
    		data    : {keyword:keyword, mode:'single'},
    		success: function(res) {
    			if(typeof(res) == 'string'){	res = JSON.parse(res); }
    
    			if(res.status == 'ok'){
    
    				var keyword_list = res.data.keyword_list;
    				if(keyword_list.length >0){
        				for (var i = 0; i <keyword_list.length; i++) {
        					html += '<li><span onclick="sch_item(';
        					html += "'"+keyword_list[i]['keyword']+"'";
        					html +=  ')" style="cursor:pointer;">'+keyword_list[i]['keyword']+'</span>';
        				  	html += '<button type="button"  class="del_btn" onclick="del_item(';
                            html += "'"+keyword_list[i]['keyword']+"'";
                            html += ')"></button></li>';
        				}
        				$(".result_list").empty();
                        $(".result_list").html(html);
    				}else{
        				$(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                	}
    			}
    		},
    		error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
    	});
    }
    
    // 키워드 전체 삭제
    function all_del_item(){
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
    		type: 'POST',
    		url: "/shop/product/update_keyword_ajax",
    		dataType: 'json',
    		data    : {mode:'all'},
    		success: function(res) {
    			if(res.status == 'ok'){
    				$(".result_list").empty();
                    $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
    			}
    		},
    		error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
    	});
    }
    
    // 선택 키워드 검색
    function sch_item(keyword){
    	/*var form = document.searchForm;
    	form.keyword.value = keyword;
    	form.submit();
		*/
		location.href='/shop/product/search_product_lists?keyword='+keyword
    }

    $('.social_login .social_btn.naver').click(function(){
		Cookie.Set('join_gb', 'N', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);

        
        Cookie.Set('login_return_url_param', location.href, 1, true);
        

		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.kakao').click(function(){
		Cookie.Set('join_gb', 'K', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);

        
        Cookie.Set('login_return_url_param', location.href, 1, true);
        

		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.google').click(function(){
		Cookie.Set('join_gb', 'G', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);

        
        Cookie.Set('login_return_url_param', location.href, 1, true);
        

		location.href = '/shop/auth/oauth';
	});

    $('.social_login .social_btn.face').click(function(){
		Cookie.Set('join_gb', 'F', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
		Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
		Cookie.Set('error_url', location.href, 1, true);

        
        Cookie.Set('login_return_url_param', location.href, 1, true);
        

		location.href = '/shop/auth/oauth';
	});

    //PC 모바일 구분
    if (chkDevice.isPC()) {
        $("#path_gb").val('WEB');
    } else {
        $("#path_gb").val('MOBILE');
    }

    /**
     * 매장 선택
     * @param {[type]} store_code [description]
     */
    function setHeaderStore(store_code) {

        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/auth/store_setting_ajax",
            data: { "store_code" : store_code },
            success : function (res) {
                console.log(res);
				location.reload();
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });

    }


    /*
    * 바코드 스크립트
     */
    window.addEventListener("flutterInAppWebViewPlatformReady", function(event) {
        //호출코드 (호출가능시기확인 후 호출가능)
    });

    function jsOpenBarcode(){
        window.flutter_inappwebview.callHandler('scanBarcode');
    }

    //응답코드
    function resultBarcode(barcode){
        // console.log("barcode: ",barcode);
        var form = document.BarcodeForm;

        form.barcode.value = barcode;

        // form.submit();
        
        location.href='/shop/order/barcode_view?barcode='+barcode;
    }


    function openProfile() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/mypage/shopping/wine_profile_ajax",
            data: { },
            success : function (res) {
                $(".wine_profile_layer").html(res);
                commonUI.layer.open('wine_profile_layer');
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }

    function log_out(){
        Cookie.Set('logout_return_url', location.href, 1, true);
        location.href='/shop/auth/logout';
    }


    if( $("#btn_auto_login").size() > 0 ){
            }

    if( $("#btn_alarm").size() > 0 ){
            }

    function push_ajax(mode, target){
        var yn = "N";
        if(target.checked === true) { yn = 'Y'; }
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/mypage/push/push_setting_ajax",
            dataType:'json',
            data    : {"mode" : mode, "yn" : yn},
            success : function (res) {
                if(res.status == 'err'){
                    // alert(res.msg);
                } else {
                    //해당 주석 해제하면 최초 실행시에 click 트리거가 설정되어있어서 alert이 뜰 수 있음. 주의
                    // alert(res.msg);
                }
            },error: function (res) {
                alert(res.responseText);
            }
        });
    }

</script>
	<!-- contents -->
	<section id="contents" style="margin-top: 122px;">
		<div class="lnb member_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>회원가입</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/shop/member/join/law_agreement">약관동의 및 소셜인증</a></li>
					</ul>
				</div>
			</div>
			<div class="pc_lnb mb_hidden">
				<div class="page_tit">
					<h2>
						<span>회원가입</span>
					</h2>
					<ul>
						<li class="">1. 이용약관 동의</li>
						<li class="on">2. 회원정보 입력</li>
						<li class="">3. 회원가입 완료</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="wrap">
			<form action="/join" name="join_form" id="join_form" method="post"
				accept-charset="utf-8">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="content member join join_form_page">
					<div class="inner">
						<!--  <div class="connect_info">
							<p class="tit">인증된 소셜계정</p>
							<div class="connect">
								<img src="/resources/asset/images/shop/default/ico_kakao.png"
									alt="카카오 로고"> <span>카카오 ()</span> <input type="hidden"
									name="kakao_id" value="">
							</div>
						</div>-->
						<div class="connect_info" id="auth_div">
							<div class="form_box">
								<div class="">
									<button type="button" class="btn_txt btn_bgray" id="auth_btn"
										onclick="return auth_type_open();">본인인증</button>
									<p>
										정보통신만 이용 촉진 및 정보보호 등에 관한 법률 및 청소년 보호법의 규정에 의하여 <br
											class="mb_hidden">19세 미만의 청소년은 이용할 수 없습니다.
									</p>
								</div>
							</div>
						</div>

						<div class="form_area">
							<ul>
								<li class="tel_li">
									<div class="l_tit">
										<label for="user_name">휴대폰번호*</label>
									</div>
									<div class="form_box">
										<div class="tel_box">
											<input type="text" id="phone" name="phone"
												placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11"
												value="">
											<p class="phone input_info_txt_ok"></p>
											<p class="phone input_info_txt_err"></p>
										</div>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_nm">이름*</label>
									</div>
									<div class="form_box">
										<input type="text" id="user_nm" name="user_nm"
											placeholder="이름을 입력해주세요." value="">
										<p class="user_nm input_info_txt_ok"></p>
										<p class="user_nm input_info_txt_err"></p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="nickname">닉네임</label>
										<p class="input_info_txt">미입력 시 이름이 닉네임</p>

									</div>
									<div class="form_box">
										<input type="text" id="nickname" name="nickname"
											placeholder="닉네임을 입력해주세요." value="">
										<p class="input_info_txt">3글자 이상 10글자 이하, 영어 또는 숫자 또는 한글로
											구성, 초성은 불가</p>
										<p class="nickname input_info_txt_ok"></p>
										<p class="nickname input_info_txt_err"></p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_birth">생년월일*</label>
									</div>
									<div class="form_box">
										<input type="text" id="user_birth" name="birthday"
											placeholder="생년월일을 입력해주세요. (ex yyyymmdd)" maxlength="8"
											oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"
											value="">
										<p class="birthday input_info_txt_ok"></p>
										<p class="birthday input_info_txt_err"></p>
									</div>
								</li>
								<li class="gender_li">
									<div class="l_tit">
										<label for="user_gender" id="gender_label">성별*</label>
									</div>
									<div class="form_box">
										<div class="gender_box">
											<div class="box men">
												<input type="radio" name="gender" id="gender_men" value="M">
												<label for="gender_men">남성</label>
											</div>
											<div class="box women">
												<input type="radio" name="gender" id="gender_women"
													value="F" checked=""> <label for="gender_women">여성</label>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_email">이메일(아이디)*</label>
									</div>
									<div class="form_box">
										<input type="text" id="user_email" name="email"
											placeholder="이메일을 입력해주세요." value="">
										<p class="email input_info_txt_ok"></p>
										<p class="email input_info_txt_err"></p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_pass_01">비밀번호*</label>
									</div>
									<div class="form_box">
										<input type="password" id="user_pass_01" name="user_pass_01"
											placeholder="영문 + 숫자 + 특수문자 조합 8자 이상" autocomplete="off">
										<p class="input_info_txt" id="pw_chk">영문+숫자+특수문자 조합 8자
											이상(공백제외)</p>
										<p class="password input_info_txt_err" style="display: none">
											올바른 형식의 비밀번호를 입력해주세요.</p>
										<p class="password input_info_txt_ok" style="display: none">사용가능한
											비밀번호입니다.</p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_pass_02">비밀번호 확인*</label>
									</div>
									<div class="form_box">
										<input type="password" id="user_pass_02" name="user_pass_02"
											placeholder="비밀번호를 한번 더 입력해주세요." autocomplete="off">
										<p class="password2 input_info_txt_err"></p>
										<p class="password2 input_info_txt_ok"></p>
									</div>
								</li>
							</ul>
							<input type="hidden" id="auth_check" name="authCheck" value="YY" />
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black"
								onclick="submit_join();">회원가입</button>
							<p class="total input_info_txt_err" style="color:red; display:none"></p>
						</div>
					</div>

					<!-- 통합회원 조회 레이어 -->
					<!-- //통합회원 조회 레이어 -->
				</div>
			</form>
		</div>

		<!--<div id="layer"
			style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
			<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
				id="btnCloseLayer"
				style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
				onclick="closeDaumPostcode()" alt="닫기 버튼">
		</div>-->

		<div class="layer store_layer" id="self_auth_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">
							<span>Layer Close</span>
						</button>
						<div class="layer_con">
							<h1 style="font-size: 1.3em; font-weight: 500;">본인인증</h1>
							<div>

								<div class="form_area">
									<ul>
										<li>
											<div class="l_tit">
												<label for="user_email">휴대폰 번호</label>
											</div>
											<div class="form_box">
												<input type="text" id="auth_phone" name="to"
													placeholder="휴대폰 번호를 입력해주세요." value="" readOnly>
												<p class="auth_phone input_info_txt_ok"></p>
												<p class="auth_phone input_info_txt_err"></p>
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="user_email">인증 번호</label>

											</div>
											<div class="form_box">
												<input type="text" id="auth_random" name="randomNum"
													placeholder="인증 번호를 입력해주세요." value="" maxlength="6">
												<p class="input_info_txt">6자리, 5분 이내</p>
												<p class="auth_rand input_info_txt_ok"></p>
												<p class="auth_rand input_info_txt_err"></p>
											</div>
										</li>

									</ul>
								</div>

								<div class="btn_area col2">
									<button type="button" id="send_auth_msg" class="btn_txt btn_dgray" onclick="send_auth_msg();">인증 번호 요청</button>
									<button type="button" class="btn_txt btn_black" onclick="submit_auth_form();">인증 완료</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- page_script -->
		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		let emailchk = false;
		function checkEmail(email){
			
			console.log('checkEmail : ' , email);
			if(email == ''){
				$(".email.input_info_txt_err").text('올바른 형식을 입력해주세요.').css('display', 'block');
				 $(".email.input_info_txt_ok").css('display', 'none');
				 emailchk = false;
			}else{
				if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
					 $(".email.input_info_txt_err").text('올바른 형식을 입력해주세요.2').css('display', 'block');
					 $(".email.input_info_txt_ok").css('display', 'none');
					 emailchk = false;
				}else{
					$.ajax ({
						  url	: "/api/member/valid/email/"+ email, 
						  async: true,
						  type	: "GET",
						  contentType : "application/json",
						  success : function(data, status) {
								  if(data){
									  $(".email.input_info_txt_ok").text('사용가능한 이메일 입니다.').css('display', 'block');
									  $(".email.input_info_txt_err").css('display', 'none');
									  emailchk = true;
								  }else{
									 $(".email.input_info_txt_err").text('이미 가입된 이메일입니다.').css('display', 'block');
									 $(".email.input_info_txt_ok").css('display', 'none');
									 emailchk = false;
								  }
						  },
						  error	: function(status, error) {
							  console.log('이메일 유효성 서버 확인 실패');
							  emailchk = false;
						  }
						});
				}
				return emailchk;
			}
		}
		
		function checkPassword1(pwd){
			if(pwd==""){
            	$('.password.input_info_txt_ok').css('display', 'none');
                $('.password.input_info_txt_err').css('display', 'block');
				return false;
            }else{
                if(/(.)\1{3,}/.test(pwd)){
                    $('.password.input_info_txt_ok').css('display', 'none');
                    $('.password.input_info_txt_err').text('동일문자 3자 이상 연속 입력할 수 없습니다.').css('display', 'block');
                    return false;
                }else{
                    if(!/^.{8,}$/.test(pwd)){
                    	$('.password.input_info_txt_ok').css('display', 'none');
                    	$('.password.input_info_txt_err').css('display', 'block');
                        return false;
                    }else{
                        if(!/[a-zA-Z]+/.test(pwd)){
                        	$('.password.input_info_txt_ok').css('display', 'none');
                        	$('.password.input_info_txt_err').css('display', 'block');
                            return false;
                        }else{
                            if(!/[0-9]+/.test(pwd)){
                            	$('.password.input_info_txt_ok').css('display', 'none');
                            	$('.password.input_info_txt_err').css('display', 'block');
                                return false;
                            }else{
                                if(!/[^ㄱ-ㅎㅏ-ㅣ가-힣0-9a-zA-Z]+/.test(pwd)){
                                    $('.password.input_info_txt_ok').css('display', 'none');
                                    $('.password.input_info_txt_err').css('display', 'block');
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            $('.password.input_info_txt_ok').css('display', 'block');
            $('.password.input_info_txt_err').css('display', 'none');
            return true;
		}
		
		function checkPassword2(input, pwd1, pwd2){
			if(pwd2 == ''){
				$('.password2.input_info_txt_ok').css('display', 'none');
            	$('.password2.input_info_txt_err').text('비밀번호가 일치하지 않습니다.').css('display', 'block');
				return false;
			}else{
				if(pwd2 != pwd1){
					$('.password2.input_info_txt_ok').css('display', 'none');
	            	$('.password2.input_info_txt_err').text('비밀번호가 일치하지 않습니다.').css('display', 'block');
					return false;
				}
            }
			 $('.password2.input_info_txt_ok').text('비밀번호가 일치합니다.').css('display', 'block');
	         $('.password2.input_info_txt_err').css('display', 'none');
	         return true;
		}
		
		function checkPhone(phone){
			if(/^01([0|1|6|7|8|9])[0-9]{4}[0-9]{4}$/.test(phone)){
					$.ajax ({
						  url	: "/api/member/valid/phone/"+ phone, 
						  type	: "GET",
						  contentType : "application/json",
						  success : function(data, status) {
								console.log(data);  
						  
							  if(data){
								  $(".phone.input_info_txt_ok").text('사용가능한 휴대폰 번호입니다.').css('display', 'block');
								  $(".phone.input_info_txt_err").css('display', 'none');
								  return true;
							  }else{
								 $(".phone.input_info_txt_err").text('이미 존재하는 휴대폰 번호입니다.').css('display', 'block');
								 $(".phone.input_info_txt_ok").css('display', 'none');
								 return false;
							  }
						  },
						  error	: function(status, error) {
							  console.log('휴대폰번호 유효성 서버 확인 실패');
							  return false;
						  }
						});
			}else{
				$(".phone.input_info_txt_err").text('올바른 형식의 번호를 입력해주세요.').css('display', 'block');
				$(".phone.input_info_txt_ok").css('display', 'none');
				return false;
			}
			return true;
		}
		
		function checkUsername(input, username){
            if(!username){
                $(".user_nm.input_info_txt_err").text('이름을 입력해주세요.').css('display', 'block');
				$(".user_nm.input_info_txt_ok").css('display', 'none');
                return false;
            }else{
                if(/^[가-힣]+$/.test(username)){
                    if($(input).val().length < 2 || $(input).val().length > 8){
                        $(".user_nm.input_info_txt_err").text('올바른 형식의 번호를 입력해주세요.').css('display', 'block');
        				$(".user_nm.input_info_txt_ok").css('display', 'none');
                        return false;
                    }
                }else if(/^[a-zA-Z]+$/.test(username)){
                    if($(input).val().length < 8 ){
                        $(".user_nm.input_info_txt_err").text('정확한 이름을 입력해주세요.').css('display', 'block');
        				$(".user_nm.input_info_txt_ok").css('display', 'none');
                        return false;
                    }
                }else{
                	$(".user_nm.input_info_txt_err").text('정확한 이름을 입력해주세요.').css('display', 'block');
    				$(".user_nm.input_info_txt_ok").css('display', 'none');
                    return false;
                }
                
                $(".user_nm.input_info_txt_ok").text('올바른 이름 형식입니다.').css('display', 'block');
				$(".user_nm.input_info_txt_err").css('display', 'none');
                return true;
            }
		}
		
		function checkNickname(input, nickname){
            if(!nickname){
                $(".nickname.input_info_txt_err").text('닉네임을 입력해주세요.').css('display', 'block');
				$(".nickname.input_info_txt_ok").css('display', 'none');
                return false;
            }else{
                if(!/^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{3,10}$/.test(nickname)){
                    $(".nickname.input_info_txt_err").text('올바른 형식의 닉네임을 입력해주세요.').css('display', 'block');
    				$(".nickname.input_info_txt_ok").css('display', 'none');
                    return false;
                }
            }
            $(".nickname.input_info_txt_ok").text('올바른 형식입니다.').css('display', 'block');
			$(".nickname.input_info_txt_err").css('display', 'none');
			return true;
		}
		
		function checkBirthday(birthday){
			console.log('\t', birthday, '!');			
			if(birthday == ''){
                $(".birthday.input_info_txt_err").text('올바른 생년월일을 입력해주세요.').css('display', 'block');
    			$(".birthday.input_info_txt_ok").css('display', 'none');
                return false;
            }else{
				if(birthday.length != 8){
					$(".birthday.input_info_txt_err").text('올바른 생년월일을 입력해주세요.').css('display', 'block');
        			$(".birthday.input_info_txt_ok").css('display', 'none');
                    return false;            	
				}
                let birth = birthday;
                let year = birthday.substr(0,2);
                let year2 = birthday.substr(2,2);
                let month = birthday.substr(4,2);
                let day = birthday.substr(6,2);

                if(year == 19 || (year == 20 && year2 <= '04')){
                    if(month > 0 && month < 13 && day > 0 && day < 32){
                    	$(".birthday.input_info_txt_ok").text('올바른 형식입니다.').css('display', 'block');
            			$(".birthday.input_info_txt_err").css('display', 'none');
			            return true;
                    }else{
                    	$(".birthday.input_info_txt_err").text('미성년자는 가입할 수 없습니다.').css('display', 'block');
            			$(".birthday.input_info_txt_ok").css('display', 'none');
                        return false;
                    }
                }else{
                	$(".birthday.input_info_txt_err").text('올바른 생년월일을 입력해주세요.').css('display', 'block');
        			$(".birthday.input_info_txt_ok").css('display', 'none');
                    return false;
                }
            }
		}
		
		
		$("input[name='email']").on('click, mouseleave keyup', function () {
			let email = $("input[name='email']").val();
			checkEmail(email);
		});
		
		$("input[name='user_nm']").on('click, mouseleave keyup', function () {
			let username = $("input[name='user_nm']");
			checkUsername(username, username.val());
		});
		
		$("input[name='nickname']").on('click, mouseleave keyup', function () {
			let nickname = $("input[name='nickname']");
			checkNickname(nickname, nickname.val());
		});
		
		$("input[name='user_pass_01']").on('click, mouseleave keyup', function () {
			let pwd = $("input[name='user_pass_01']").val();
			checkPassword1(pwd);
		});
		
		$("input[name='user_pass_02']").on('click, mouseleave keyup', function () {
			let pwd1 = $("input[name='user_pass_01']").val();
			let pwd2 = $("input[name='user_pass_02']").val();
			checkPassword2(this, pwd1, pwd2);
		});
		
		$("input[name='phone']").on('click, mouseleave keyup', function () {
			if($("input[name='authCheck']").val() == 'YY')
				return true;
			
			let phone = $("input[name='phone']").val();
			checkPhone(phone);
		});
		
		$("input[name='birthday']").on('click, mouseleave keyup', function () {
			let birthday = $("input[name='birthday']").val();
			checkBirthday(birthday);
		});
		

	    function auth_type_open() {
	   		console.log("본인인증창 시작");
	   		let phone = $("input[name='phone']").val();
	   		let auth_check = $("input[name='authCheck']").val();
	   		if(phone == '' || phone.length != 11){
	   			$(".phone.input_info_txt_err").text('올바른 형식의 번호를 입력 후 본인인증이 가능합니다.').css('display', 'block');
				$(".phone.input_info_txt_ok").css('display', 'none');
				return false;
	   		}else if(auth_check == 'YY'){
	   			$(".phone.input_info_txt_ok").text('본인인증을 완료했습니다.').css('display', 'block');
				$(".phone.input_info_txt_err").css('display', 'none');
				return false;
	   		}
	   		
	   		$("#self_auth_layer").css('display', 'block');
	   		$("#auth_phone").val($("input[name='phone']").val());

	    	console.log("본인인증창 끝");
	    }
	    
	    function send_auth_msg(){
	    	console.log('문자 전송 요청');
	    	
	   		let dto = {
	   				randomNum : $("#auth_random").val(),
	   				to : $("#phone").val(),
	   				status : true,
	   				result: "인증문자전송"
	   		};
	   		
	   		$.ajax ({
				  url	: "/api/member/sms/join-send",
				  type	: "POST",
				  contentType : "application/json",
				  data: JSON.stringify(dto),
				  beforeSend : function(xhr){
		               let header = $("meta[name='_csrf_header']").attr("content");
		               let token = $("meta[name='_csrf']").attr("content");
		               xhr.setRequestHeader(header, token);
					},
				  success : function(data, status) {
						console.log(data); 
				  },
				  error	: function(status, error) {
					  console.log('문자 인증 에러');
					  return false;
				  }
				});
	    	$("#send_auth_msg").attr("disabled", true);
	    	console.log('문자 전송 끝');
	    }
	    
	    function submit_auth_form() { //submit_auth_form 
	   		console.log("문자 인증 시작");
	    	$("#send_auth_msg").attr("disabled", true);
	    
	   		if ($("#auth_random").val() == '' || $("#auth_random").val().length != 6){
	   			$(".auth_rand.input_info_txt_err").text('인증번호 형식에 맞지않습니다.').css('display', 'block');
				$(".auth_rand.input_info_txt_ok").css('display', 'none');
	   			return false;
	   		}
	
	   		let dto = {
	   				randomNum : $("#auth_random").val(),
	   				to : $("#auth_phone").val(),
	   				status : true,
	   				result: "인증문자전송"
	   		};
	   		
	   		console.log(dto);
	   		console.log(JSON.stringify(dto));
	   		$.ajax ({
				  url	: "/api/member/sms/join-certificate",
				  type	: "POST",
				  contentType : "application/json",
				  data: JSON.stringify(dto),
				  beforeSend : function(xhr){
		               let header = $("meta[name='_csrf_header']").attr("content");
		               let token = $("meta[name='_csrf']").attr("content");
		               xhr.setRequestHeader(header, token);
					},
				  success : function(data, status) {
						console.log(data); 
						if(data.status) {
					    	$("input[name='phone']").prop('readonly', true);
					    	$("input[name='authCheck']").val('YY');
					    	$(".phone.input_info_txt_ok").text('본인인증을 완료했습니다.').css('display', 'block');
							$(".phone.input_info_txt_err").css('display', 'none');
					    	$(".layer_close").click();
						}else{
					    	$(".auth_rand.input_info_txt_err").text(data.result).css('display', 'block');
							$(".auth_rand.input_info_txt_ok").css('display', 'none');
						}
				  },
				  error	: function(status, error) {
					  console.log('문자 인증 에러');
					  return false;
				  }
				});
	    	console.log("문자 인증 끝");
	    }
	    

    
    
    function auth_type_check2(){
        var auth_form = document.form_auth;
        init_orderid();

        if( auth_form.ordr_idxx.value == "" ){
            alert( "다시 시도해주세요." );
            return false;
        }else{
            if( ( navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1 ) == false ){ // 스마트폰이 아닌경우
            
                var return_gubun;
                var width  = 410;
                var height = 500;

                var leftpos = screen.width  / 2 - ( width  / 2 );
                var toppos  = screen.height / 2 - ( height / 2 );

                var winopts  = "width=" + width   + ", height=" + height + ", toolbar=no,status=no,statusbar=no,menubar=no,scrollbars=no,resizable=no";
                var position = ",left=" + leftpos + ", top="    + toppos;
                var AUTH_POP = window.open('/shop/member/join/kcpcert_proc','auth_popup', winopts + position);
                auth_form.target = "auth_popup";
            }
            auth_form.kcp_birth.value = $('#user_birth').val();
            auth_form.method = "post";
            
            auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
            auth_form.submit();
            return true;
        }
    }

    // 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
    function Mobile(){
	    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    }

    let adult_chk = false;
    function adult_auth(){
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        var site_cd = $('#site_cd').val();
        var ordr_idxx = $('#ordr_idxx').val();
        $('#up_hash').val(site_cd + ordr_idxx + "000000");
        if(Mobile()){
            var auth_form = document.form_auth;
            auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
            adult_chk = true;
        }
        $('#form_auth').submit();
    }

    function auth_data2( frm ){

        var auth_form = document.form_auth;

        if( frm.up_hash.value != auth_form.veri_up_hash.value ){
            alert("비정상적인 접근입니다."); 
            console.log('up_hash 변조 위험');
        }    

        const today = new Date(); 
        const birthDate = new Date(parseInt(frm.r_birth.value.substring(0,4)), parseInt(frm.r_birth.value.substring(4,6))-1, parseInt(frm.r_birth.value.substring(6,8)));
        let age = today.getFullYear() - birthDate.getFullYear();
        const m = today.getMonth() - birthDate.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }

        if(age < 19){
            alert('만 19세 이상만 가입이 가능합니다.');
            location.href = "/shop/main";
        }

        $('#phone').val(frm.r_phone.value);
        $('#user_birth').val(frm.r_birth.value);
        if(frm.r_gender_cd.value == '01'){
            $('.men').css('display','block');
            $('#gender_label').css('display','block');
            $('#gender_men').prop('checked',true);
        }else if(frm.r_gender_cd.value == '02'){
            $('.women').css('display','block');
            $('#gender_label').css('display','block');
            $('#gender_women').prop('checked',true);
        }else{
            $('#gender_label').css('display','none');
            $('.men').css('display','block');
            $('.women').css('display','block');
        }
        $('#user_nm').val(frm.r_user_name.value);
        adult_chk = true;
        $('#auth_div').hide();
    }
    
    function init_orderid(){
        var today = new Date();
        var year  = today.getFullYear();
        var month = today.getMonth()+ 1;
        var date  = today.getDate();
        var time  = today.getTime();

        if(parseInt(month) < 10){
            month = "0" + month;
        }

        var vOrderID = year + "" + month + "" + date + "" + time;
        document.form_auth.ordr_idxx.value = vOrderID;
    }

    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        element_layer.style.display = 'none';
    }

    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }

    function input_reset(input, append){ 
        var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
        $(input).closest('.form_box').removeClass('error success');
        $(input).closest(appendTo).find('p').remove();
    }

    function input_success(input, msg, appendTo){
		var msg = typeof msg == 'undefined' ? '' : msg;
		var msg = msg ? msg : '정상 입력입니다.';
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

		input_reset(input);

		$(input).closest('.form_box').addClass('success');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}

	function input_error(input, msg, appendTo){
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

		input_reset(input);

		$(input).closest('.form_box').addClass('error');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}

    function check_reset(id){
        $(id).css({'color':'#999'});
        $(id).removeClass('error success');
    }

    function check_success(id){
        check_reset(id);
        $(id).css({'color':'green'});
        $(id).addClass('success');
    }

    function check_error(id){
        check_reset(id);
        $(id).css({'color':'red'});
        $(id).addClass('error');
        $(id).focus();
    }

    var form_check = {
    	email: function(){
    		let email = $("input[name='email']").val();
    		return checkEmail(email);
    	},
    	phone: function(){
    		let phone = $("input[name='phone']").val();
    		console.log("form_check " + phone);
    		return checkPhone(phone);
		},
		user_nm : function(){
			let user_nm = $("input[name='user_nm']");
			return checkUsername(user_nm, user_nm.val());
        },
        nickname : function(){
        	let nickname = $("input[name='nickname']");
        	return checkNickname(nickname, nickname.val());
        },
        passwd:function(){
        	let pwd = $("input[name='user_pass_01']").val();
        	return checkPassword1(pwd);
        },
        passwd_repeat: function(){
        	let pwd1 = $("input[name='user_pass_01']").val();
			let pwd2 = $("input[name='user_pass_02']");
			return checkPassword2(pwd2, pwd1, pwd2.val());
		},
        birth_chk:function(){
        	let birthday = $("input[name='birthday']").val();
        	return checkBirthday(birthday);
        },auth_check: function(){
        	let auth_check = $("input[name='authCheck']").val();
        	console.log("AAAAAAAAAAAAAAAAA", auth_check);
        	if(auth_check === 'YY')
        		return true;
        	else 
        		return false;
        }
    }
    
    function submit_join(){
        
		var check = true;
        var adult_chk = true;

        console.log("이름", form_check.user_nm());
		if(!form_check.user_nm()){
			$(".total.input_info_txt_err").text("이름 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("닉네임", form_check.nickname());
		if(!form_check.nickname()){
			$(".total.input_info_txt_err").text("닉네임 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("생일", form_check.birth_chk());
		if(!form_check.birth_chk()){
			alert('생일 실패');
			$(".total.input_info_txt_err").text("생일 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("폰", form_check.phone());
		if(!form_check.phone()){
			$(".total.input_info_txt_err").text("폰 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("이메일", form_check.email(), $("input[name='email']").val());
		if(!form_check.email()){
			$(".total.input_info_txt_err").text("이메일 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("비번", form_check.passwd());
		if(!form_check.passwd()){
			$(".total.input_info_txt_err").text("비밀번호 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("비번확인", form_check.passwd_repeat());
		if(!form_check.passwd_repeat()){
			$(".total.input_info_txt_err").text("비밀번호 확인 형식이 틀립니다.").css('display', 'block');
			return false;
		}
		console.log("본인인증", form_check.auth_check());
		if(!form_check.auth_check()){
			$(".total.input_info_txt_err").text("본인인증을 해주세요.").css('display', 'block');
			return false;
		}

        $('#join_form').submit();
	}

</script>
		<!-- //page_script -->
	</section>
	<!-- //contents -->

	<script language="javascript">    
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            var main_scroll_Event = (function(){
                // console.log(1);
                var $body = $("body");
                var $quickMenu = $("#footer .quick_menu");

                function _downEvent(){
                    // console.log(2);
                    $quickMenu.fadeOut();
                }

                function _upEvent(){
                    // console.log(3);
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

                        if(yMove < -50){
                            //console.log('Up');
                            _upEvent();
                            return false;
                        }else if(yMove > 50){
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
        }else{
            $("body").off();
            $("#footer .quick_menu").off();
        }
    });
</script>



	<script type="text/JavaScript">
	var page = 'join_form';
	if( page == false){
		page = 'main';
	}
	
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
			RC_Method({
				sign_up_data: "",
				page_type : page, 
				behavior:"page_view"
			});
			*/
	}
</script>
	<!--백로그 API-->

	<!--lazy_loading-->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
	<script>
	const observer = lozad();
	observer.observe();
</script>
	<!--lazy_loading-->
</body>
</html>
</body>
</html>