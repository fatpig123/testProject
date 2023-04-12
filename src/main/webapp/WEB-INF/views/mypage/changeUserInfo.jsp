<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">

<body>
	<form action="https://www.winenara.com/shop/login" id="LoginPostFrm"
		onkeydown="javascript:onEnterLogin();" method="post"
		accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token"
			value="dfe7eac03dc2412085ed681b04c6aa6d">
		<div class="layer login_layer" id="login_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<h2 class="layer_tit">회원서비스</h2>
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">닫기</button>
						<div class="layer_con">
							<div class="login_tab">
								<p class="check">
									<span>기존회원</span>
								</p>
								<p>
									<span><a href="/shop/member/join/law_agreement">신규회원가입</a></span>
								</p>
							</div>
							<div class="social_login">
								<h2 class="social_tit">소셜아이디로 로그인</h2>
								<ul>
									<li><a href="#none" class="social_btn naver">네이버</a></li>
									<li><a href="#none" class="social_btn kakao">카카오</a></li>
									<li><a href="#none" class="social_btn google">구글</a></li>
									<!-- <li><a href="#none" class="social_btn apple">애플</a></li> -->
								</ul>
							</div>
							<div class="form_area">
								<ul>
									<li>
										<div class="form_box">
											<input type="text" id="login_user_id" name="login_user_id"
												value="" placeholder="아이디를 입력하세요">
										</div>
									</li>
									<li>
										<div class="form_box">
											<input type="password" id="login_passwd" name="login_passwd"
												placeholder="비밀번호를 입력하세요">
										</div>
									</li>
								</ul>
							</div>
							<input type="hidden" id="login_return_url_param"
								name="login_return_url_param">
							<div class="save_box">
								<div class="checkbox">
									<input type="checkbox" name="login_auto" id="login_auto"
										value="Y" checked=""> <label for="login_auto">로그인유지</label>
								</div>
								<div class="checkbox">
									<input type="checkbox" name="id_save" id="id_save" value="Y">
									<label for="id_save">아이디저장</label>
								</div>
								<p class="input_info_txt">※ 공공장소에서는 꺼주세요.</p>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_txt btn_black" id="loginBtn">
									<span>로그인</span>
								</button>
							</div>
							<div class="login_sub_btn">
								<a href="/shop/member/forgoten/forgoten_id" class="btn">아이디
									찾기</a> <a href="/shop/member/forgoten/forgoten_pw" class="btn">비밀번호
									재발급</a>
							</div>
							<div class="non_member_order">
								<a href="javascropt:void(0)"
									onclick="commonUI.layer.close(); commonUI.layer.open('buy_process_layer');"
									class="btn_txt">비회원 주문하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

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
						<strong class="tit">계정정보</strong>
						<div class="set_con">
							<span>qndjd711</span>
							<button type="button" class="btn_txt line32"
								onclick="location.href='/shop/auth/logout'">로그아웃</button>
						</div>
						<a href="/shop/mypage/account/change_password"
							class="set_con pw_ch_con"> <span>비밀번호 변경</span>
						</a> <strong class="tit">푸시설정</strong>
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
    
    $(document).ready(function(){
    	$("#loginBtn").on("click",function(){
    		if(!$("#login_user_id").val()){
        		alert("아이디를 입력하여 주세요.");
        		$("#login_user_id").focus();
        		return false;
        	}
    
        	if(!$("#login_passwd").val()){
        		alert("비밀번호를 입력하여 주세요.");
        		$("#login_passwd").focus();
        		return false;
        	}
            Cookie.Set('login_return_url_param', location.href, 1, true);

        	Csrf.Set(_CSRF_NAME_); //토큰 초기화
        	$.ajax({
        		type: 'POST',
        		url: "/shop/auth/login_check",
        		dataType: 'json',
        		data    : $("#LoginPostFrm").serialize(),
        		success: function(res) {
                    console.log(res);
        			if(res.status == 'Y'){
        				console.log(JSON.stringify(res.data));
        				// alert(res.msg);
        				location.href = res.url;
        			}else if(res.status == "N"){
        				alert(res.msg);
        				if(res.pass_err_cnt >= 5){
        					recaptcha_load();
        				}
        			}else if(res.status === 'AUTH_DENIED'){
        				alert(res.msg);
        				location.href = res.url;
        			}else if(res.status === 'OUT_YN'){
        				alert(res.msg);
        				return false;
        			}else if(res.status === 'TOKEN_ERROR'){
        				alert(res.msg);
        				return false;
        			}else if(res.status == 'D'){
                        $('#dormant_last_login_date').text(res.last_login_date);
                        $('#dormant_dormant_date').text(res.dormant_date);
                        if(confirm(res.msg)){
                            // location.href = res.url;
                            $('#dormant_layer').show();
                        }
                    }else {
        				alert(res.msg);
        			}
        		}
        	});
    
    	});
    });
    
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
		<div class="lnb mypage_lnb lnb_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>회원정보수정</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/mypage/orderList">픽업내역</a></li>
						<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
						<li><a href="/mypage/tabling">테이블링 내역</a></li>
						<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
						<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
						<li><a href="/decanting/bookList">나의 디켄팅북</a></li>
						<li><a href="/decanting/followList">나의 H-믈리</a></li>
					</ul>
				</div>
			</div>


			<!-- <div class="mb_hidden">
        <div class="my_lnb_info">
            <div class="my">
                <img src="/resources/asset/images/shop/default/ico_user_vip.png" alt="">
                <div class="txt">
                    <p><strong class="name">노희진</strong>님 안녕하세요!</p>
                    <button type="button" class="btn_txt btn_grade" onclick="commonUI.layer.open('grade_layer')">등급현황</button>
                </div>
            </div>
            <div class="my_info">
                <a href="/shop/mypage/shopping/order_lists"><span class="new">N</span><p class="info order_info"><em>주문내역</em>0</p></a>
                <a href="/shop/mypage/note/coupon_lists"><span class="new">N</span><p class="info coupon_info"><em>쿠폰</em>1</p></a>
                <a href="/shop/mypage/note/mileage_lists"><span class="new">N</span><p class="info cash_info"><em>마일리지</em>2,000</p></a>
                <a href="/shop/mypage/note/giftcard_lists"><span class="new">N</span><p class="info gift_info"><em>기프트카드</em>10,000</p></a>
            </div>
        </div>
    </div> -->
			<div class="mypage_link mb_hidden">
				<ul class="depth_01">
					<li><a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
							<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
							<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
							<li><a href="/shop/cart/cart_lists">장바구니</a></li>
							<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
                    <li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
						</ul></li>
					<li><a href="#none">쇼핑수첩</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
							<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
							<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
							<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
						</ul></li>
					<li><a href="#none">나의 활동</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
							<!-- <li ><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
							<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
						</ul></li>
					<li><a href="#none">개인정보</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
							<li class="on"><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
							<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
							<li><a href="/shop/mypage/account/change_password">비밀번호
									변경</a></li>
							<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<script>
$(".mypage_lnb .common_lnb").remove();

function myPublic(){
	var follower_yn = $("#follower_yn").val();
	
	if( follower_yn === 'Y'){
		follower_yn = 'N';
	}else{
		follower_yn = 'Y';
	}

	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'					: "FYN",
			'follower_yn'			: follower_yn
		},
		success : function(result){
			location.reload();
		},
		error : function(a, b, c){
			alert('변경중 에러가 발생했습니다.');
		}
	});
}
</script>
		<div class="content mypage accont member_modify_page">
			<form
				action="https://www.winenara.com/shop/mypage/account/member_modify_proc"
				name="modify_form" id="modify_form" method="post"
				accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="dfe7eac03dc2412085ed681b04c6aa6d">
				<div class="inner">
					<h2 class="page_tit">회원정보수정</h2>
					<div class="form_area">
						<ul>
							<li>
								<div class="l_tit">
									<label for="user_name">이름</label>
								</div>
								<div class="form_box">
									<!-- <div class="form_box error">
                        <div class="form_box success"> -->
									<input type="text" id="user_name" value="노희진" placeholder=""
										disabled="">
									<p class="input_info_txt"></p>
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="user_id">아이디</label>
								</div>
								<div class="form_box">
									<!-- <div class="form_box error">
                        <div class="form_box success"> -->
									<input type="text" id="user_id" value="qndjd711" placeholder=""
										disabled="">
									<p class="input_info_txt"></p>
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="user_birth">생년월일</label>
								</div>
								<div class="form_box">
									<!-- <div class="form_box error">
                        <div class="form_box success"> -->
									<input type="text" id="user_birth" value="1995-07-11"
										placeholder="" disabled="">
									<p class="input_info_txt"></p>
								</div>
							</li>
							<li class="gender_li">
								<div class="l_tit">
									<label for="user_gender">성별</label>
								</div>
								<div class="form_box">
									<input type="text" id="user_gender" value="여자" disabled="">
								</div>
							</li>
							<li class="tel_li">
								<div class="l_tit">
									<label for="user_name">휴대폰번호</label>
								</div> <!-- <div class="form_box">
                            <div class="tel_box">
                                                                <input type="text" id="phone" name="phone" value="01029775433" placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'); change_hp();">
                                <button type="button" class="btn_txt btn_dgray tel_code change_hp" style="display:none;" id="phone_code_send">인증번호 발송</button>
                            </div>
                            <div class="code_box code_box_2 change_hp" style="display:none;">
                                <input type="text" id="phone_code" name="" placeholder="인증번호 입력">
                                <button type="button" class="btn_txt btn_black code_btn" id="phone_code_check">인증</button>
                                <p class="code_time" id="time" style="display:none;"></p>
                            </div>
                        </div> -->
								<div class="form_box">
									<div class="tel_box">
										<input type="text" id="phone" name="phone" value="01029775433"
											placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11"
											oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'); change_hp();">
										<button type="button"
											class="btn_txt btn_black tel_code change_hp code_btn"
											style="display: none;" id=""
											onclick="return auth_type_check();">본인인증</button>
									</div>
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="email">이메일</label>
								</div>
								<div class="form_box">
									<!-- <div class="form_box error">
                        <div class="form_box success"> -->
									<input type="text" id="email" name="email"
										value="rohhj7@hanmail.net" placeholder="">
									<p class="input_info_txt"></p>
								</div>
							</li>
							<li class="add_li">
								<div class="l_tit">
									<label for="home_zip">주소</label>
								</div>
								<div class="form_box">
									<div class="add_box_01">
										<input type="text" id="home_zip" name="home_zip" value="03087"
											placeholder="" readonly="">
										<button type="button" class="btn_txt btn_dgray" id="addr_open">우편번호찾기</button>
									</div>
									<div class="add_box_02">
										<input type="text" id="home_addr1" name="home_addr1"
											value="서울 종로구 동숭길 3"> <input type="text"
											id="home_addr2" name="home_addr2" value="1011-1">
									</div>
								</div>
							</li>
							<li class="chk_li">
								<div class="l_tit">
									<label for="">이메일 수신여부</label>
								</div>
								<div class="form_box">
									<div class="checkbox">
										<input type="radio" id="email_no" name="mailing_yn" value="N"
											checked=""> <label for="email_no">미동의</label>
									</div>
									<div class="checkbox">
										<input type="radio" id="email_yes" name="mailing_yn" value="Y">
										<label for="email_yes">동의</label>
									</div>
								</div>
							</li>
							<li class="chk_li">
								<div class="l_tit">
									<label for="">SMS 수신여부</label>
								</div>
								<div class="form_box">
									<div class="checkbox">
										<input type="radio" id="sms_no" name="sms_yn" value="N"
											checked=""> <label for="sms_no">미동의</label>
									</div>
									<div class="checkbox">
										<input type="radio" id="sms_yes" name="sms_yn" value="Y">
										<label for="sms_yes">동의</label>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="btn_area col2">
						<button type="button" class="btn_txt" onclick="history.back('-1')">취소</button>
						<button type="button" class="btn_txt btn_black"
							onclick="submit_join()">회원정보수정</button>
					</div>
				</div>
			</form>
		</div>

		<input type="hidden" value="01029775433" id="before_phone">
		<div id="layer"
			style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
			<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
				id="btnCloseLayer"
				style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
				onclick="closeDaumPostcode()" alt="닫기 버튼">
		</div>
		<form action="/shop/member/join/KCP/kcpcert_proc" name="form_auth"
			id="form_auth">
			<input type="hidden" name="site_cd" id="site_cd" value="AI3K5">
			<input type="hidden" name="ordr_idxx" id="ordr_idxx"> <input
				type="hidden" name="req_tx" id="req_tx" value="cert"> <input
				type="hidden" name="cert_method" id="cert_method" value="01">
			<input type="hidden" name="cert_otp_use" id="cert_otp_use" value="Y">
			<input type="hidden" name="action" id="action"
				value="https://cert.kcp.co.kr/kcp_cert/cert_view.jsp"> <input
				type="hidden" name="Ret_URL" id="Ret_URL"
				value="https://www.winenara.com/shop/member/join/kcpcert_response_ajax">
			<input type="hidden" name="cert_enc_use_ext" id="cert_enc_use_ext"
				value="Y"> <input type="hidden" name="kcp_birth"
				id="kcp_birth"> <input type="hidden" name="veri_up_hash"
				id="veri_up_hash"> <input type="hidden" name="param_opt_1"
				id="param_opt_1" value="pctnj01c4aehpgt065ea4hmmouc4cdqt"> <input
				type="hidden" name="param_opt_2" id="param_opt_2" value="">
			<input type="hidden" name="param_opt_3" id="param_opt_3"
				value="join_form_page">
		</form>

		<!-- page_script -->
		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
    function auth_type_check(){
        var auth_form = document.form_auth;
        init_orderid();

        if( auth_form.ordr_idxx.value == "" ){
            alert( "요청번호는 필수 입니다." );
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
            }
            // auth_form.kcp_birth.value = $('#user_birth').val().replace('-','');
            auth_form.method = "post";
            auth_form.target = "auth_popup";
            auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
            auth_form.submit();
            return true;
        }
    }

    // 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
    function Mobile(){
	    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    }


    function adult_auth(){
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        var site_cd = $('#site_cd').val()
        var ordr_idxx = $('#ordr_idxx').val();
        $('#up_hash').val(site_cd + ordr_idxx + "000000");
        if(Mobile()){
            var auth_form = document.form_auth;
            auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
            adult_chk = true;
        }
        $('#form_auth').submit();
    }

    var adult_chk = false;
    
    function auth_data( frm ){

        if(Mobile()){
            location.reload();
        }

        var auth_form     = document.form_auth;

        if( frm.up_hash.value != auth_form.veri_up_hash.value ){
            alert("비정상적인 접근입니다."); 
            console.log('up_hash 변조 위험');
        }   
        adult_chk = true;
        $('#auth_div').hide();
    }
    
    /* 예제 */
    // window.onload=function(){                
    //     init_orderid();
    // }
    
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


    var timer = null;
	var isRunning = false;
	var phone_code_time_chk = false;
	var time_chk = true;
	function startTimer(count, display){
		time_chk = true;
		var min, sec;
		timer = setInterval(function(){
			min = parseInt(count / 60, 10);
			sec = parseInt(count % 60, 10);
			min = min < 10 ? "0"+min : min;
			sec = sec < 10 ? "0"+sec : sec;
			display.html(" " + min + ":" + sec);

			//타이머 끝
			if(--count < 0){ 
				clearInterval(timer);
				alert('인증 유효시간 초과');
				display.html('인증 유효시간 초과');
                $('#phone_code_check').hide();
				isRunning = false;
				time_chk = false;
			}
		}, 1000);
		isRunning = true;
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

    var form_check = {
        phone: function(input){
			if($(input).val() == ''){
				alert('연락처를 입력해주세요.');
                $(input).focus();
				return false;
			}else{
				if(!/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/.test($(input).val())){
					alert('휴대폰번호 양식이 정확하지 않습니다.');
                    $(input).focus();
					return false;
				}
            }
			return true;
		},
        phone_code_send:function(button){
            if(!form_check.phone(modify_form.phone)){
                return false;
            }
            Csrf.Set(_CSRF_NAME_);
            $.ajax({
                url: '/shop/member/join/phone_code_send_ajax',
                type: 'POST',
                data: {'phone': $(modify_form.phone).val()},
                dataType: 'json',
                beforeSend: function(){
                    $(button).prop('disabled', true);
                },
                error: function(){
                    alert('인증번호 발송 중 오류가 발생했습니다.');
                },
                success: function(result){
                    if(result.send){
                        alert('등록한 휴대폰 번호로 발송된 인증번호를 입력해주세요.');
                        $('#phone_code_check').show();
                        $('#time').css('display','block');
                        var display = $('#time');
                        var leftSec = 180;
                        if(isRunning){
                            clearInterval(timer);
                            display.html("");
                            startTimer(leftSec, display);
                        }else{
                            startTimer(leftSec, display);
                        }
                    }else{
                        alert('인증번호 발송 중 오류가 발생했습니다.');
                    }
                },
                complete: function(){
                    $(button).prop('disabled', false);
                }
            });
        },
        phone_code : function(input){
            if($(input).val() == ''){
                alert('인증번호를 확인해 주시기 바랍니다.');
                $(input).focus();
				return false;
            }
            return true;
        },
        phone_code_check: function(button){
			if(!form_check.phone_code(modify_form.phone_code)){
				return false;
			}
			$.ajax({
                url: '/shop/member/join/phone_code_check_ajax',
                type: 'GET',
                data: {
                    'phone': $(modify_form.phone).val(),
                    'phone_code': $(modify_form.phone_code).val()
                },
                dataType: 'json',
                beforeSend: function(){
                    form_check.phone_code_checked = 'W';
                    $(button).prop('disabled', true);
                },
                error: function(){
                    alert('인증번호 확인 중 오류가 발생했습니다.');
                },
                success: function(result){
                    if(result.checked){
                        form_check.phone_code_checked = 'Y';
                        alert('인증되었습니다.');
                        if(time_chk){
                            phone_code_time_chk = true;
                        }else{
                            phone_code_time_chk = false;
                        }
                        
                        clearInterval(timer);
                    }else{
                        form_check.phone_code_checked = 'N';
                        alert('잘못된 인증번호입니다.');
                    }
                },
                complete: function(){
                    $(button).prop('disabled', false);
                }
            });
		},
        phone_code_checked: 'N',
        email: function(input){
			if($(input).val() == ''){
				alert('이메일을 입력해주세요.');
				return false;
			}else
				if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(input).val())){
					alert('이메일 주소를 다시 확인해주세요.');
					return false;
				}
			return true;
		},
        addr_open:function(button){
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        // console.log('extraAddr : ' + extraAddr);
                        // document.getElementById("sample2_extraAddress").value = extraAddr;
                    
                    } else {
                        // document.getElementById("sample2_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('home_zip').value = data.zonecode;
                    document.getElementById("home_addr1").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("home_addr2").focus();

                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    element_layer.style.display = 'none';
                },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
            }).embed(element_layer);

            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
    }

    $('#addr_open').click(function(){
        form_check.addr_open(this);
    })

    $('#phone_code_send').click(function(){
		form_check.phone_code_send(this);
	});

    $('#phone_code_check').click(function(){
		form_check.phone_code_check(this);
	});

    function change_hp(){
        $('.change_hp').css("display","block");
    }

    function submit_join(){
        
		var check = true;

        if($('#before_phone').val() !== $('#phone').val()){

            if(!form_check.phone(modify_form.phone)){
                check = false;
            }

            // if(!form_check.phone_code(modify_form.phone_code)){
            //     check = false;
            // }

            // if(form_check.phone_code_checked != 'Y'){
            //     check = false;
            //     if(form_check.phone_code_checked == 'W'){
            //         alert('연락처 인증 중 입니다. 잠시 후에 다시 시도해주세요.');
            //     }else{
            //         alert('연락처 인증이 완료되지 않았습니다.');
            //     }
            // }

            if(!adult_chk){
                alert('연락처 인증이 완료되지 않았습니다.');
                check = false;
            }
        }

		if(!form_check.email(modify_form.email)){
			check = false;
		}

		if(!check){
			return false;
		}
        if (!time_chk){
            alert('휴대폰 인증시간 초과, 다시 인증해주세요.');
            return false;
        }else{
            Csrf.Set(_CSRF_NAME_);
            $('#modify_form').submit();
        }
		
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
	var page = 'member_modify';
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