
var product = {
	retmsg : true
}


/*-----------------------------
- 상품 수량 plus, minus
-----------------------------*/
product.countUpd = function (gubun, opt_cd) {
    if(document.CartForm.option_yn.value == 'Y'){
        opt_cd = document.CountForm.option_cd.value;
        gubun = document.CountForm.gubun.value;
    }

	if(document.CartForm.option_yn.value == "Y" && opt_cd != "") {
        var cnt       = parseInt($("#count_"+opt_cd).text());
        var opt_price = parseInt($("#opt_sale_price_"+opt_cd).val());

        if(gubun == 'minus') {
            if(cnt < 2){
                alert("최소 구매수량은 1개 입니다.");
                return false;
            } else {
                cnt = cnt-1;

                $("#count_"+opt_cd).text(cnt);

                $("input[name='opt_qty[]']").each(function(idx) { //폼값에 넣기
                    if(opt_cd == $(this).attr("data-opt")){
                        $(this).val(cnt);
                    }
                });
            }
        } else if(gubun == 'plus'){
            cnt = cnt+1;

            $("#count_"+opt_cd).text(cnt);

            $("input[name='opt_qty[]']").each(function(idx) {  //폼값에 넣기
                if(opt_cd == $(this).attr("data-opt")){
                    $(this).val(cnt);
                }
            });
        }

        $("#opt_price_txt_"+opt_cd).text(Functions.NumberFormat(cnt*opt_price)+"원");
    } else if (document.CartForm.option_yn.value == "N") {
        var cnt = parseInt($("#product_count").text());

        if(gubun == 'minus'){
            if(cnt < 2){
                alert("최소 구매수량은 1개 입니다.");
                return false;
            } else {
                cnt = cnt-1;

                $("#product_count").text(cnt);

                $("input[name='qty']").val(cnt);
            }
        } else if(gubun == 'plus'){
            cnt = cnt+1;

            $("#product_count").text(cnt);

            $("input[name='qty']").val(cnt);
        }
    }

    product.Calc();
}

/*-----------------------------
- 총금액계산
-----------------------------*/
product.Calc = function () {
	var cnt         = 0;
    var sale_price  = 0;
    var total_price = 0;

    //옵션이 있을 경우 계산
    if(document.CartForm.option_yn.value == "Y"){
        $("#select_option > li").each(function(idx) {
            cnt = parseInt($(this).children('.amount').children('.count').text());
            sale_price = parseInt($(this).children('input').val());

            total_price += cnt * sale_price;
        });

    //옵션이 없을 경우 계산
    } else {
        cnt = parseInt($("#product_count").text());
        sale_price = parseInt($("#product_sale_price").val());
        
        total_price = cnt * sale_price;
    }

    $(".total_price").text(Functions.NumberFormat(total_price)+"원");
    $("#total_usd").text("(USD "+(total_price*$("#exchangeUSD").val()).toFixed(2)+")");

}


/*-----------------------------
- 장바구니 담기 (상품상세)
-----------------------------*/
product.cartProduct = function(products, set) {
    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : "/shop/cart/insert_cart_ajax",
        dataType : 'json',
        data: {'products' : products, 'iscurr' : 'F'},
        success : function (res) {
            if( $.trim(res.status) == "ok"){
                if(res.national_msg != "" && res.national_msg != null){
                    alert(res.national_msg);
                }
				console.log(set);
				if( set == 'G') {
					if(confirm("장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?")){
						location.href = res.url;
					}
				}else{
					 $(".cart_txt").slideDown('300');
					 setTimeout(function() {
					  $(".cart_txt").slideUp('300');
					}, 2000);
				}
              //  }
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
- 장바구니 담기 (상품리스트)
-----------------------------*/
product.cartProductList = function(opt_cnt, product_cd) {
    var now_url = location.href;
    console.log(now_url);

    if( now_url.indexOf("/mypage/info/") > -1){
        var url = "../../../order/cart/insert_cart_ajax";
        var url2 = "../../../order/cart/cart_lists";
    } else if( now_url.indexOf("/main") > -1){
        // console.log(now_url+":"+now_url.indexOf("/main"));
        // console.log(now_url+":"+now_url.indexOf("/main/main"));
        if( now_url.indexOf("/main/main") > -1){
            var url = "../order/cart/insert_cart_ajax";
            var url2 = "../order/cart/cart_lists";
        } else {
            var url = "./order/cart/insert_cart_ajax";
            var url2 = "./order/cart/cart_lists";
        }
    } else {
        var url = "../../order/cart/insert_cart_ajax";
        var url2 = "../../order/cart/cart_lists";
    }

    var form = document.CartForm;
    form.product_cd.value = product_cd;
    form.option_yn.value = 'N';

    if(opt_cnt == 1){   //옵션이 한개일 경우
        if( $("#"+product_cd+"_option").val() == "옵션명" ) {
            alert("옵션을 선택해주세요.");
            return false;
        }

        form.option_yn.value = 'Y';
        $("input[name='opt_cd[]']").val($("#"+product_cd+"_option").attr("opt-cd"));
    }

    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : url,
        dataType : 'json',
        data: $("#CartForm").serialize(),
        success : function (res) {
            if( $.trim(res.status) == "ok"){
                if(res.national_msg != "" && res.national_msg != null){
                    alert(res.national_msg);
                }
                if(confirm("장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?")){
                    location.href = url2;
                }
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
- 바로구매 하기
-----------------------------*/
product.buyProduct = function(products) {
   Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
       type: "POST",
       url : "/shop/cart/insert_cart_ajax",
       dataType : 'json',
       data: {'products' : products, 'iscurr' : 'T'},
       success : function (res) {
	       if(res.national_msg != "" && res.national_msg != null){
		       alert(res.national_msg);
	       }
	       if( $.trim(res.status) == "ok"){
		       location.href = "/shop/order/order_write";
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
- 상품 찜하기
-----------------------------*/
product.likeProduct = function(product_cd) {
    var now_url = location.href;
	console.log($("#session_id").val());

	if($("#session_id").val()){
		if($('.wish_'+product_cd).hasClass('on')){
			$(".wish_"+product_cd).removeClass("on");
	        var ajax_mode = "DEL";
		}else{
			$(".wish_"+product_cd).addClass("on");
	        var ajax_mode = "ADD";
		}
	
	    if( now_url.indexOf("/main") > -1){
	        if( now_url.indexOf("/main/main") > -1){
	            var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
	        } else {
	            var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
	        }
	    } else if( now_url.indexOf("/mypage") > -1){
	        var url = "../note/wish_proc_ajax?ajax_mode="+ajax_mode;
	    } else {
	        var url = "../mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
	    }
	    
	    Csrf.Set(_CSRF_NAME_); //토큰 초기화
	    $.ajax({
	        type: "POST",
	        url : url,
	        dataType : 'json',
	        data: { product_cd : product_cd },
	        success : function (res) {
				if (typeof(res)=="string")	{
					res = JSON.parse(res);
				}
	            if( $.trim(res.status) == "ok"){
					$('#header_like_cnt').text(res.data['like_cnt']);
	                //alert(res.msg);
	                return;
	            }else{
	                //alert(res.msg);
	                return;
	            }
	            return;
	        },
	        error: function (res) {
				if (typeof(res)=="string")	{
					res = JSON.parse(res);
				}
	            alert(res.responseText);
	        }
	    });
	}else{
		commonUI.layer.open('login_layer')
	}
}
