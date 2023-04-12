
var order = {
	retmsg : true
}

/*-----------------------------
- 카트수량업데이트

order.QtyUpdate = function (cart_seq, qty){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	var msg = "";
	$.ajax({
		type : "POST",
		url : "../cart/cart_proc_ajax?ajax_mode=UPD_QTY",
		dataType : 'json',
		async : false,
		data :
		{
			"cart_seq" : cart_seq, "qty" : qty, "product_cd" : $("#product_cd"+cart_seq).val(), "opt_cd" : $("#opt_cd"+cart_seq).val()
		},
		success	: function (res) {
			if( $.trim(res.status) == "ok"){
                order.Calc(cart_seq, qty);
				order.TotalReSet(); //주문페이지 수량변경시 쿠폰사용리셋하기
				return;
            }else if( $.trim(res.status) == "err2"){
	        	if(res.data.length > 0){
	            	for(var i=0; i<res.data.length; i++){
	            		if(msg){
	            			msg += ", \n" + res.data[i].product_nm + " " + res.data[i].opt_nm2
	            		}else{
	            			msg = res.data[i].product_nm + " " + res.data[i].opt_nm2
	            		}
	            	}
	            	msg += "의 재고가 부족 합니다.";
	            	alert(msg);
	            	location.reload();
	        	}
            }else{
				alert(res.msg);
				location.reload();
            }
		},
		error: function (res) {
			alert(res.responseText);
		}
	});
}
-----------------------------*/

/*-----------------------------
// - 상품별 금액 계산

order.Calc = function (n, qty) {
	var price = $("#price" + n).val().onlyNum();

	$("#sum_product_price" + n).val(Functions.NumberFormat(price * qty));
	order.CalcInfo();
}
-----------------------------*/


/*-----------------------------
- 총금액계산
-----------------------------*/
order.CalcInfo = function () {
	var tot_price         = 0;	// 총결제금액
	
	var use_reserve	  	  = $("#use_reserve").val().onlyNum();

	if( $("#deposit_price_dd").size() > 0){
		var use_deposit	  	  = $("#use_deposit").val().onlyNum();
	} else {
		var use_deposit = 0;
	}


	var free_trans_yn = "N";
	var order_gb      = $("input[name='order_gb']").val();
	var delivery_gb   = "";
	var deliverypay   = 0;
	var tot_reserve   = 0;
	
	function swalert(text){
		Swal.fire({
		text: text,
		});
	}

	$(":hidden[id='cNo']").each(function(){
		var n = $(this).val();

		
		if($("#free_trans_yn" + n).val() == "Y" ){
		    free_trans_yn = "Y";
		}

		tot_price += $("#sum_product_price" + n).val().onlyNum(); //총결제금액
		tot_reserve += $("#reserve_price" + n).val().onlyNum();	//적립금 합계
	});

	//쿠폰 및 적립금 사용가능금액
	$("#buy_coupon_price").val();

	//상품원가합계액
	$("#order_origin_price").val(tot_price);
	$("#order_price_span").html(Functions.NumberFormat(tot_price)+"원");
	//$("#order_price_dd").html(Functions.NumberFormat(tot_price)+"원");
	
	//최종 할인합계액
	tot_use_discount = use_reserve;

	//최종 할인적용가
	tot_price = tot_price - tot_price;

	

	if(order_gb != 'D'){
		deliverypay = 0;
	}

	//배송비 및 적립금 예치금 적용
	tot_price = use_reserve;

	//배송비 세팅
	$("#trans_price_span").html( "+ "+Functions.NumberFormat(deliverypay)+"원");
	$("#trans_price").val(deliverypay);

	//할인합계액
	$("#discount_span").html("-"+ Functions.NumberFormat(tot_use_discount)+"원");

	//적립금사용액
	//$("#reserve_price_dd").html("- "+Functions.NumberFormat(use_reserve)+"원");


	if( $("#deposit_price_dd").size() > 0){
		//예치금사용액
		$("#deposit_price_dd").html("- "+Functions.NumberFormat(use_deposit)+"원");
	}

    // 총결제금액
    $("#order_price").val(tot_price);
	// $("#finish_price_span").html(Functions.NumberFormat(tot_price)+"원");

	//총적립금
	$("#finish_reserve_span").html(Functions.NumberFormat(tot_reserve)+"원");
}



/*-----------------------------
- 주문서계산기 셋팅
-----------------------------*/
order.initOrder = function (){

	//최종금액 셋팅
	order.CalcInfo();

	if( sesId=="" ){
		$("#coupon_div").hide();
		$("#deposit_div").hide();
		$("#reserve_div").hide();

	}else{
		order.reserveReset();
		order.changeReAddr();
	}

	//적립금 처리
	$("#use_reserve").blur(function (){

		if( parseInt($("#coupon_sale").val()) > 0 ){
            alert("쿠폰과 마일리지는 동시 사용할 수 없습니다");
            $("#use_reserve").val(0);
        } else {
			var order_origin_price = $("#order_origin_price").val().onlyNum();		// 순수상품금액
			var coupon_sale = 0; 					// 쿠폰 할인액

			

			var this_val = $(this).val().onlyNum(); 								// 입력된 현재금액
			var max_use_reserve = order_origin_price;
			if( $(this).val() == "" ){
				order.ReserveReSet();
				return;
			}

			if(this_val > $("#mb_reserve").val()){
				swalert('보유하고 계신 적립금은 ' + Functions.NumberFormat($("#mb_reserve").val()) + '원 입니다.');
				order.ReserveReSet();
				return;
			}

			if(this_val < 1000){
				swalert('마일리지는 1000P부터 사용가능합니다.');
				order.ReserveReSet();
				return;
			}
			/**
			if(this_val > max_use_reserve){
				alert("최대 사용가능한 적립금은 " + Functions.NumberFormat(max_use_reserve) + " 원 입니다.");
				order.ReserveReSet();
				order.CalcInfo();	//최종금액 셋팅
				return;
			}
			**/
			/**
			if(parseFloat(this_val) % 10 > 0){
				$(this).val(Functions.NumberFormat(parseFloat(this_val) - (parseFloat(this_val) % 10)));
				if($(this).val() == 0) $(this).val(0);
			}
			**/

			//순수한 적립금 사용가능액
			var tot_sale_price = this_val;

			//주문금액 체크
			/**
			if(parseInt(order_origin_price) < parseInt(tot_sale_price)){
				alert("총 구매금액 보다 큰 금액이 입력되었습니다.");
				order.ReserveReSet();
				order.CalcInfo();	//최종금액 셋팅
				return;
			}
			**/
			//적립금 둘째자리만 표기
			$(this).val(Functions.NumberFormat(this_val));
		}

		order.CalcInfo();	//최종금액 셋팅

	});

	//기프트카드 처리
	$("#use_giftcard").blur(function (){

		var order_origin_price = $("#order_origin_price").val().onlyNum();		// 순수상품금액
		var coupon_sale = 0; 					// 쿠폰 할인액

		if( $("#deposit_price_dd").size() > 0){
			var use_deposit = 0; 					// 예치금 할인금액
		} else {
			var use_deposit = 0;
		}

		var this_val = $(this).val().onlyNum(); 								// 입력된 현재금액
		var max_use_giftcard = order_origin_price - coupon_sale - use_deposit - use_reserve;
		if( $(this).val() == "" ){
			order.GiftcardReSet();
			return;
		}

		if(this_val > $("#mb_giftcard").val()){
			alert("보유하고 계신 적립금은 " + Functions.NumberFormat($("#mb_giftcard").val()) + " 원 입니다.");
			order.GiftcardReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}

		if(this_val > max_use_giftcard){
			alert("최대 사용가능한 적립금은 " + Functions.NumberFormat(max_use_reserve) + " 원 입니다.");
			order.GiftcardReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}
		/**
		if(parseFloat(this_val) % 10 > 0){
			$(this).val(Functions.NumberFormat(parseFloat(this_val) - (parseFloat(this_val) % 10)));
			if($(this).val() == 0) $(this).val(0);
		}
		**/

		//순수한 적립금 사용가능액
		var tot_sale_price = this_val + coupon_sale + use_deposit + use_reserve ;

		//주문금액 체크
		if(parseInt(order_origin_price) < parseInt(tot_sale_price)){
			alert("총 구매금액 보다 큰 금액이 입력되었습니다.");
			order.GiftcardReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}

		//적립금 둘째자리만 표기
		$(this).val(Functions.NumberFormat(this_val));

		order.CalcInfo();	//최종금액 셋팅

	});

	//예치금 처리
	$("#use_deposit").blur(function (){

		var order_origin_price = $("#order_origin_price").val().onlyNum();		// 순수상품금액
		var coupon_sale = 0; 					// 쿠폰 할인액
		var use_reserve = $("#use_reserve").val().onlyNum(); 					// 쿠폰 할인액
		var this_val = $(this).val().onlyNum(); 								// 입력된 현재금액
		var max_use_deposit = order_origin_price - coupon_sale - use_reserve;
		if( $(this).val() == "" ){
			order.depositReSet();
			return;
		}

		if(this_val > $("#mb_deposit").val()){
			alert("보유하고 계신 예치금은 " + Functions.NumberFormat($("#mb_deposit").val()) + " 원 입니다.");
			order.depositReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}

		if(this_val > max_use_deposit){
			alert("최대 사용가능한 예치금은 " + Functions.NumberFormat(max_use_deposit) + " 원 입니다.");
			order.depositReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}
		/**
		if(parseFloat(this_val) % 10 > 0){
			$(this).val(Functions.NumberFormat(parseFloat(this_val) - (parseFloat(this_val) % 10)));
			if($(this).val() == 0) $(this).val(0);
		}
		**/

		//순수한 적립금 사용가능액
		var tot_sale_price = this_val + coupon_sale + use_reserve + use_giftcard;

		//주문금액 체크
		if(parseInt(order_origin_price) < parseInt(tot_sale_price)){
			alert("총 구매금액 보다 큰 금액이 입력되었습니다.");
			order.depositReSet();
			order.CalcInfo();	//최종금액 셋팅
			return;
		}

		//적립금 둘째자리만 표기
		$(this).val(Functions.NumberFormat(this_val));

		order.CalcInfo();	//최종금액 셋팅

	});

	//적립금 클릭시 전체 삭제
	$("#use_reserve, #use_deposit").click(function(){
		$(this).val("");
	});

	

	//기프트카드 전체 적용
	$("#all_use_giftcard").on("change",function(e){

		if($(this).is(":checked")){
			var order_origin_price = $("#order_origin_price").val().onlyNum();
			var coupon_sale = 0;
			var use_reserve = 0;

			if( $("#deposit_price_dd").size() > 0){
				var use_deposit = $("#use_deposit").val().onlyNum();
			} else {
				var use_deposit = 0;
			}
			
			var mb_giftcard = $("#mb_giftcard").val().onlyNum();

			if(use_giftcard >= order_origin_price){
				$("#use_giftcard").val(Functions.NumberFormat(order_origin_price - coupon_sale - use_deposit - use_reserve));
			}else{
				if(coupon_sale+mb_giftcard+use_deposit+use_reserve < order_origin_price ){
					$("#use_giftcard").val(Functions.NumberFormat(mb_giftcard));
				}else{
					$("#use_giftcard").val(Functions.NumberFormat(order_origin_price-coupon_sale-use_deposit - use_reserve));
				}
			}
		}else{
			$("#giftcard_price_dd").val("- 0원");
			$("#use_giftcard").val(0);
		}

		order.CalcInfo();	//최종금액 셋팅
	});

	//예치금 전체 적용
	$("#all_use_deposit").on("change",function(e){

		if($(this).is(":checked")){
			var order_origin_price = $("#order_origin_price").val().onlyNum();
			var coupon_sale = $("#coupon_sale").val().onlyNum();
			var mb_deposit = $("#mb_deposit").val().onlyNum();
			var use_reserve = $("#use_reserve").val().onlyNum();
			var use_giftcard = $("#use_giftcard").val().onlyNum();

			if(mb_deposit >= order_origin_price){
				$("#use_deposit").val(Functions.NumberFormat(order_origin_price - coupon_sale - use_reserve - use_giftcard));
			}else{
				if(coupon_sale+mb_deposit+use_reserve+use_giftcard < order_origin_price ){
					$("#use_deposit").val(Functions.NumberFormat(mb_deposit));
				}else{
					$("#use_deposit").val(Functions.NumberFormat(order_origin_price-coupon_sale-use_reserve - use_giftcard));
				}
			}
		}else{
			$("#use_deposit").val(0);
		}

		order.CalcInfo();	//최종금액 셋팅
	});
}

/*-----------------------------
- 적립금 사용유무
-----------------------------*/
order.reserveReset = function(){
	var mb_reserve = $("#mb_reserve").val().onlyNum();
	var order_origin_price =  $("#order_origin_price").val().onlyNum();
	if( order_origin_price >= 1000  ){
		$("#use_reserve").attr("readonly", false );
	}else{
		$("#use_reserve").attr("readonly", true );
		$("#all_use_reserve").prop("checked",false).attr("readonly", true ).attr("disabled", true );
	}
}


/*-----------------------------
- 적용된 적립금만  리셋
-----------------------------*/
order.ReserveReSet = function(){
	$("#reserve_price_dd").val("- 0원");
	$("#use_reserve").val(0);
	$("#all_use_reserve").prop("checked",false);
}

/*-----------------------------
- 적용된 기프트카드만  리셋
-----------------------------*/
order.GiftcardReSet = function(){
	$("#giftcard_price_dd").val("- 0원");
	$("#use_giftcard").val(0);
	$("#all_use_giftcard").prop("checked",false);
}

/*-----------------------------
- 적용된 예치금만  리셋
-----------------------------*/
order.depositReSet = function(){
	$("#use_deposit").val(0);
	$("#all_use_deposit").prop("checked",false);
}


/*-----------------------------
- 쿠폰 팝업 오픈
-----------------------------*/
order.openCoupon = function(){
	order.CalcInfo();	//기본금액 셋팅
	coupon_init();
}

/*-----------------------------
- 쿠폰 금액계산
-----------------------------*/
order.CouponApply = function(c_mem_seq,c_gb){

    var buy_coupon_price = $("#buy_coupon_price").val().onlyNum(); 	//최소 제한금액 기준
	var trans_price = $("#trans_price").val();// 배송비

	if (trans_price == "0" && c_gb == "2"){
		alert("현재 배송비가 없습니다.");
		return;
	}

	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url : "order_coupon_apply_ajax?ajax_mode=COUPON_APPLY",
		dataType : 'json',
		async : false,
		data: { "coupon_member_seq": c_mem_seq, "buy_coupon_price":buy_coupon_price},
		success	: function (res) {
			if( res.status == "ok"){
				var order_origin_price = $("#order_origin_price").val().onlyNum();
				var use_reserve  = document.orderForm.use_reserve.value.onlyNum();
				if( $("#deposit_price_dd").size() > 0){
					var use_deposit  = document.orderForm.use_deposit.value.onlyNum();
				} else {
					var use_deposit  = 0;
				}
				var use_giftcard = document.orderForm.use_giftcard.value.onlyNum();

				if (parseInt(order_origin_price) > parseInt(use_reserve)+parseInt(use_deposit)+parseInt(use_giftcard)){
                	$("#coupon_span").html("- "+Functions.NumberFormat(res.discount_price)+"원");	//쿠폰할인금액 세팅
	                $("#coupon_sale").val(Functions.NumberFormat(res.discount_price));				//쿠폰할인금액 세팅
					$("#coupon_member_seq").val(c_mem_seq);						//쿠폰사용자번호
					$("#coupon_gb").val(c_gb);
					$("#use_coupon_nm").val(res.coupon_nm+" (-"+Functions.NumberFormat(res.discount_price)+"원)");
				} else {
					alert("이미 구매금액이 0원입니다.");
				}
				order.SumCouponSet();
			}else{
				alert(res.msg);
				return;
			}
			return;
		},
		error: function (res) {
			alert(res.responseText);
		}
	});
}


/*-----------------------------
- 쿠폰 적용하기
-----------------------------*/
order.SumCouponSet = function(){
	order.CalcInfo();	//기본금액 셋팅
	commonUI.layer.close();
}


/*-----------------------------
- 적용된 쿠폰만  리셋
-----------------------------*/
order.CouponReSet = function(){

	$("#coupon_span").html("- 0원");
	$("#coupon_sale").val(0);
	$("#coupon_member_seq").val("");
	$("#coupon_gb").val("");
	$("#use_coupon_nm").val("");

	order.CalcInfo();
}

/*-----------------------------
- 할인전체 리셋
-----------------------------*/
order.TotalReSet = function(){

	$("#coupon_span").html("- 0원");
	$("#coupon_sale").val(0);
	$("#coupon_member_seq").val("");
	$("#coupon_gb").val("");

	order.CalcInfo();
}

/*-----------------------------
- 배송지구분에 따른 변경
-----------------------------*/
order.changeReAddr = function (){

	var addr_gb = $(":radio[name='addr_gb']:checked").val();
	this.resetReAddr();

}

/*-----------------------------
- 배송지관리 통한 배송지선택
-----------------------------*/
order.changeDelivery = function (no){
	this.resetReAddr();

	re_name  = $("#addr_nm_"+no).val();
	re_zip   = $("#addr_zip_"+no).val();
	re_addr1 = $("#addr1_"+no).val();
	re_addr2 = $("#addr2_"+no).val();
	if($("#addr_hp_"+no).val()){
		re_hp1    = $("#addr_hp_"+no).val().split("-")[0];
		re_hp2    = $("#addr_hp_"+no).val().split("-")[1];
		re_hp3    = $("#addr_hp_"+no).val().split("-")[2];
	}

	$("#re_name").val(re_name);
	$("#re_zip").val(re_zip);
	$("#re_addr1").val(re_addr1);
	$("#re_addr2").val(re_addr2);
	$("#re_hp1").val(re_hp1);
	$("#re_hp2").val(re_hp2);
	$("#re_hp3").val(re_hp3);

	commonUI.layer.close();

}

order.changePrevDelivery = function(no) {
	this.resetReAddr();

	re_zip   = $("#prev_re_zip_"+no).val();
	re_addr1 = $("#prev_re_addr1_"+no).val();
	re_addr2 = $("#prev_re_addr2_"+no).val();

	$("#re_zip").val(re_zip);
	$("#re_addr1").val(re_addr1);
	$("#re_addr2").val(re_addr2);
}
/*-----------------------------
- 주문자 정보와동일 이벤트
-----------------------------*/
order.setReAddr = function (){

	if($("#copy_mem_info").is(":checked")){
		if($("input[name='order_gb']").val() == 'P'){
			$("#receipt_name").val($("#or_name").val());
			$("#receipt_tel").val($("#or_hp").val());

			form_check.re_name(orderForm.re_name);
			form_check.re_hp(orderForm.re_hp);
		} else if($("input[name='order_gb']").val() == 'D'){
			$("#re_name").val($("#or_name").val());
			$("#re_zip").val($("#home_zip").val());
			$("#re_addr1").val($("#home_addr1").val());
			$("#re_addr2").val($("#home_addr2").val());
			$("#re_hp").val($("#or_hp").val());

			$("#addr_default").prop("checked", true);

			form_check.re_name(orderForm.re_name);
			form_check.re_hp(orderForm.re_hp);
		}
	}else{
		order.resetReAddr();
	}
}


/*-----------------------------
- 배송지정보 리셋
-----------------------------*/
order.resetReAddr = function (){

	$("#add_trans_yn").val("N");
	$("#add_trans_price").val("0");

	$("#re_name").val("");
	$("#re_zip").val("");
	$("#re_addr1").val("");
	$("#re_addr2").val("");
	$("#re_hp").val("");
}


order.setOrderType = function(gb){
	$("#order_gb").val(gb);
	$("#otype_cd_10, #otype_cd_60").parent().parent().show();

	//선물하기는 무통장,가상계좌 제외
	if(gb == "G"){
		$("#otype_cd_10, #otype_cd_60").parent().parent().hide();
		$('[name="otype_cd"]:radio').prop("checked", false);
	}

}

/*-----------------------------
- 최근배송지
-----------------------------*/
order.recentReAddr = function (){
	this.resetReAddr();

	re_name  = $("#prev_name").val();
	re_zip   = $("#prev_zip").val();
	re_addr1 = $("#prev_addr1").val();
	re_addr2 = $("#prev_addr2").val();
	if($("#prev_hp").val()){
		re_hp1   = $("#prev_hp").val().split("-")[0];
		re_hp2   = $("#prev_hp").val().split("-")[1];
		re_hp3   = $("#prev_hp").val().split("-")[2];
	}

	$("#re_name").val(re_name);
	$("#re_zip").val(re_zip);
	$("#re_addr1").val(re_addr1);
	$("#re_addr2").val(re_addr2);
	$("#re_hp1").val(re_hp1);
	$("#re_hp2").val(re_hp2);
	$("#re_hp3").val(re_hp3);
}

/*-----------------------------
- 추가배송비 조회
-----------------------------*/
order.addTransCheck = function(){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url : "order_proc_ajax?ajax_mode=ADD_TRANS",
		dataType : 'json',
		async: false,
		data:
		{
			"zipcode":$("#re_zip").val()
		},
		success	: function (res) {
			if( $.trim(res.status) == "ok"){
				$("#add_trans_yn").val("Y");
				$("#add_trans_price").val(res.add_price);
	        }else{
	        	$("#add_trans_yn").val("N");
	        	$("#add_trans_price").val(0);
	        }
			order.CalcInfo();	//최종금액 셋팅
		},
		error: function (res) {
			alert(res.responseText);
		}
	});

}

/*-----------------------------
- 주문하기
-----------------------------*/

var form_check = {
    or_name : function(input){
        if(!$(input).val()){
            input_error(input, '이름을 입력해주세요.');
            return false;
        }else{
            if($(input).val().length < 2 || $(input).val().length > 12){
				input_error(input, '정확한 이름을 입력해주세요.');
				return false;
			}
		input_reset(input);
		return true;
        }
    },
    or_email: function(input){
		if($(input).val() == ''){
			input_error(input, '이메일을 입력해주세요.');
			return false;
		}else
			if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(input).val())){
				input_error(input, '이메일 주소를 다시 확인해주세요.');
				return false;
			}

		input_reset(input);
		return true;
	},
    or_hp: function(input){
		if($(input).val() == ''){
			input_error(input, '연락처를 입력해주세요.');
			return false;
		}else{
			if(!/^01([0|1|6|7|8|9])?([0-9]{8,9})$/.test($(input).val())){
				input_error(input, '휴대폰번호 양식이 정확하지 않습니다.');
				return false;
			}
        }
		input_reset(input);
		return true;
	},
	re_name : function(input){
        if(!$(input).val()){
            input_error(input, '수령자명을 입력해주세요.');
            return false;
        }else{
            if($(input).val().length < 2 || $(input).val().length > 12){
				input_error(input, '정확한 이름을 입력해주세요.');
				return false;
			}
		input_success(input);
		return true;
        }
    },
    re_hp: function(input){
		if($(input).val() == ''){
			input_error(input, '연락처를 입력해주세요.');
			return false;
		}else{
			if(!/^01([0|1|6|7|8|9])?([0-9]{8,9})$/.test($(input).val())){
				input_error(input, '휴대폰번호 양식이 정확하지 않습니다.');
				return false;
			}
        }
		input_success(input, '');
		return true;
	}
};


function input_reset(input, appendTo) {
	var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

	$(input).closest('.form_box').removeClass('error success');
	$(input).closest(appendTo).find('p').remove();
}

function input_success(input, msg, appendTo) {
	var msg = typeof msg == 'undefined' ? '' : msg;
	var msg = msg ? msg : 'Good!';
	var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

	input_reset(input);

	$(input).closest('.form_box').addClass('success');
	$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
}

function input_error(input, msg, appendTo) {
	var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

	input_reset(input);

	$(input).closest('.form_box').addClass('error');
	$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
}

order.orderSubmit = function(){

	var orderForm = document.orderForm;
	var order_gb  = $("input[name='order_gb']").val();
	var ticket_yn = $("#ticket_yn").val();

	var check = true;

	if ( $("#auth_div").size() > 0 && !adult_chk ) {
		check = false;
		alert("성인인증을 해주세요.");
		return;
	}

	if (!form_check.or_name(orderForm.or_name)) {
		check = false;
		alert("주문하신 분을 입력해주세요.");
		orderForm.or_name.focus();
		return;
	}
	if (!form_check.or_email(orderForm.or_email)) {
		check = false;
		alert("이메일을 입력해주세요.");
		orderForm.or_email.focus();
		return;
	}
	if (!form_check.or_hp(orderForm.or_hp)) {
		check = false;
		alert("연락처를 입력해주세요.");
		orderForm.or_hp.focus();
		return;
	}

	if (!form_check.re_name(orderForm.re_name)) {
		check = false;
		alert("받는 사람을 입력해주세요.");
		orderForm.re_name.focus();
		return;
	}
	if (!form_check.re_hp(orderForm.re_hp)) {
		check = false;
		alert("연락처를 입력해주세요.");
		orderForm.re_hp.focus();
		return;
	}

	if( order_gb == 'P'){
		//직접픽업
		if( $("input[name='pickup_date']:checked").val() == undefined || $("input[name='pickup_date']:checked").val() == ''){
			check = false;
			alert("수령일을 선택해주세요.");
			return;
		}
		if( $("#pickup_store_cd").val() == ''){
			check = false;
			alert("수령장소를 선택해주세요.");
			return;
		}
	} else if( order_gb == 'V'){
		//매장방문

	} else if( order_gb == 'D' && ticket_yn == 'N'){
		//택배배송
		if( $("#re_zip").val() == ''){
			check = false;
			alert("우편번호를 입력해주세요.");
			return;
		}
		if( $("#re_addr1").val() == ''){
			check = false;
			alert("주소를 입력해주세요.");
			return;
		}
		if( $("#re_addr2").val() == ''){
			check = false;
			alert("상세주소를 입력해주세요.");
			return;
		}
	}
	
	// if (!$("#buy_use").is(":checked")){
	// 	alert("구매진행에 동의를 해주세요.");
	// 	return;
	// }

	if (!check) {
		return false;
	}

    var order_price = $("#order_price").val();
	var otype_cd = $(':radio[name="otype_cd"]:checked').val();

	if(order_gb != 'V'){
    	if ((otype_cd == "" || typeof otype_cd=='undefined') && order_price > 0  ){
	        alert("결제 수단을 선택해 주세요.");
	        return;
	    }
	}


	var cart_seqs = "";
	// var order_gb = $("#order_gb").val();
	$(":hidden[id='cNo']").each(function(){
		if (cart_seqs == ""){
			cart_seqs = $(this).val();
		}else{
			cart_seqs = cart_seqs +","+ $(this).val();
		}
	});

	$("#cart_seqs").val(cart_seqs);

	if( confirm("작성하신 정보로 주문하시겠습니까?") ){
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "order_proc_ajax?ajax_mode=ORDER_WRITE",
			dataType : 'json',
			async: false,
			data 	: $("#orderForm").serialize(),
			success	: function (res) {
				if( $.trim(res.status) == "ok"){

					if(order_price == 0 || otype_cd == "95" || order_gb == 'V'){
						location.href='order_ok?ocode='+res.ocode;
					}else{
						order.pg_open(res.ocode, otype_cd);
					}

		        }else{
		        	alert(res.msg);
		        }
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
}

order.pg_open = function(ocode, otype_cd){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    var path_gb = $("#path_gb").val();

    if (otype_cd == "70" || otype_cd == "60"){
		$.ajax ({
			type		: "post",
			url			: "kcp_account_ajax",
			data		: {"ocode" : ocode},
			dataType	: "text",
			async		: false,
			success		: function (res) {
	            if (res.indexOf("error") <= 0){
					$("#kcpReturn").html("").html(res);

					if (path_gb =="WEB"){
						jsf__pay(document.order_info)
					}else{
						kcp_AJAX();
					}
				}else{
				    alert("주문서 작성중 오류가 발생했습니다.");
				    location.reload();
				}
			},
			error	: function (rslt) {
				alert("에러가 발생하였습니다.\n\n지속적인 에러 발생시 고객센터로 문의하여 주세요\n\n" + rslt.responseText);
				return false;
			}
		});
    } else {
		$.ajax ({
			type		: "post",
			url			: "kcp_account_ajax",
			data		: {"ocode" : ocode},
			dataType	: "text",
			async		: false,
			success		: function (res) {
	            if (res.indexOf("error") <= 0){
					$("#kcpReturn").html("").html(res);

					if (path_gb =="WEB"){
						jsf__pay(document.order_info)
					}else{
						kcp_AJAX();
					}
				}else{
				    alert("주문서 작성중 오류가 발생했습니다.");
				    location.reload();
				}
			},
			error	: function (rslt) {
				alert("에러가 발생하였습니다.\n\n지속적인 에러 발생시 고객센터로 문의하여 주세요\n\n" + rslt.responseText);
				return false;
			}
		});
	}
}




//-----------------------------------------------------------------------------
// 숫자 이외에는 다 뺀다.
//
// @return : 숫자
//-----------------------------------------------------------------------------
String.prototype.onlyNum = function() {
	var num = this.trim();
	return parseInt(this.trim().replace(/[^0-9]/g,""));
}

