
var gift = {
	retmsg : true
}

gift.setOrderGb = function (gb){

	$("#order_gb_N, #order_gb_G").parent().removeClass("on");
	$("#order_gb_" + gb).parent().addClass("on");

	if(gb == "G"){
		$(".gift_way").addClass("on");
		gift.setGiftGb('K');

	}else{
		$(".gift_way").removeClass("on");
		$(".sms_on, .kakao_on").hide();
	}

	$("#order_gb").val(gb);
}
gift.setGiftGb = function (gb){

	$("#gift_gb_K, #gift_gb_S").parent().removeClass("on");
	$("#gift_gb_" + gb).parent().addClass("on");

	if(gb == "S"){
		$(".sms_on, .kakao_on").show();
	}else{
		$(".sms_on").hide();
		$(".kakao_on").show();
	}

	$("#gift_gb").val(gb);
}

var form_check = {


	product_cd : function(input){
        if(!$(input).val()){
            input_error(input, '기프트카드를 선택해주세요.');
            return false;
        }

		input_success(input);
		return true;
    },
    re_name : function(input){
        if(!$(input).val()){
            input_error(input, '이름을 입력해주세요.');
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
	},
    re_hp_check: function(input){
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
	},
	gift_msg : function(input){
        if(!$(input).val()){
            input_error(input, '메시지를 입력해주세요.');
            return false;
        }

		input_success(input);
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

gift.orderSubmit = function(){

	var orderForm = document.orderForm;
	var order_gb  = $("input[name='order_gb']").val();
	var gift_gb  = $("input[name='gift_gb']").val();

	var check = true;

	if (!form_check.product_cd(orderForm.product_cd)) {
		check = false;
		alert("기프트카드를 선택해주세요.");
		orderForm.product_cd.focus();
		return;
	}

	if( order_gb == 'G'){

		if(gift_gb == "K"){

			if (!form_check.re_name(orderForm.re_name)) {
				check = false;
				alert("받는 사람을 입력해주세요.");
				orderForm.re_name.focus();
				return;
			}
			if (!form_check.gift_msg(orderForm.gift_msg)) {
				check = false;
				alert("메시지를 입력해주세요.");
				orderForm.gift_msg.focus();
				return;
			}
		}else{
			if (!form_check.re_name(orderForm.re_name)) {
				check = false;
				alert("받는 사람을 입력해주세요.");
				orderForm.re_name.focus();
				return;
			}

			if (!form_check.re_hp(orderForm.re_hp)) {
				check = false;
				alert("휴대폰번호를 입력해주세요.");
				orderForm.re_hp.focus();
				return;
			}

			if (!form_check.re_hp_check(orderForm.re_hp_check)) {
				check = false;
				alert("확인 휴대폰번호를 입력해주세요.");
				orderForm.re_hp_check.focus();
				return;
			}

			if (!form_check.gift_msg(orderForm.gift_msg)) {
				check = false;
				alert("메시지를 입력해주세요.");
				orderForm.gift_msg.focus();
				return;
			}
		}
	}

	if (!check) {
		return false;
	}

	var otype_cd = $(':radio[name="otype_cd"]:checked').val();

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
					gift.pg_open(res.ocode, otype_cd);
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

gift.pg_open = function(ocode, otype_cd){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    var path_gb = $("#path_gb").val();
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



//-----------------------------------------------------------------------------
// 숫자 이외에는 다 뺀다.
//
// @return : 숫자
//-----------------------------------------------------------------------------
String.prototype.onlyNum = function() {
	var num = this.trim();
	return parseInt(this.trim().replace(/[^0-9]/g,""));
}

