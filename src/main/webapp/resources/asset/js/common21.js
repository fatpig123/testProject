


// JavaScript Document
//------------------------------------------------------------------------------
// 달력 : jquery-ui-1.11.4.min.js > datepicker
//------------------------------------------------------------------------------
$(function(){
	var date = new Date();
	$( ".nlDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true // 전월, 익월 표시
	});

	$( ".btDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		yearRange: 'c-100:c',
		showOtherMonths: true // 전월, 익월 표시
	});

	$( ".prevDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		//yearRange: 'c-100:c',
		maxDate:0,
		showOtherMonths: true // 전월, 익월 표시
	});

	$( ".nextDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		minDate:0,
		showOtherMonths: true // 전월, 익월 표시
	});

	$( ".fmDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$(this).next().datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$(this).prev().datepicker( "option", "maxDate", selectedDate );
		}
	});

	$( ".fmDate0" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$(this).next().next().next().datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate0" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$(this).prev().prev().prev().datepicker( "option", "maxDate", selectedDate );
		}
	});
	
	$( ".fmDate1" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".toDate1" ).datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate1" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".fmDate1" ).datepicker( "option", "maxDate", selectedDate );
		}
	});

	$( ".fmDate2" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".toDate2" ).datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate2" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".fmDate2" ).datepicker( "option", "maxDate", selectedDate );
		}
	});

	$( ".fmDate3" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".toDate3" ).datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate3" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".fmDate3" ).datepicker( "option", "maxDate", selectedDate );
		}
	});

	$( ".fmDate4" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".toDate3" ).datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate4" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".fmDate3" ).datepicker( "option", "maxDate", selectedDate );
		}
	});

	$( ".fmDate5" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".toDate3" ).datepicker( "option", "minDate", selectedDate );
		}
	});

	$( ".toDate5" ).datepicker({
		regional:'ko',
		dateFormat:"yy-mm-dd",
		changeMonth: true,
		changeYear: true,
		showOtherMonths: true, // 전월, 익월 표시
		onClose: function( selectedDate ) {
			$( ".fmDate3" ).datepicker( "option", "maxDate", selectedDate );
		}
	});
});


//------------------------------------------------------------------------------
// validate 체크
//------------------------------------------------------------------------------
$(document).ready(function() {
	$(document).on('keyup','.IsNumeric',function(e){
		var strId = $(this).attr("id");
		var strValue = $(this).val();
		
		if (IsNumeric(strValue) == false) {
			alert("숫자만 입력 가능합니다.");
			$('#'+strId).val('');
			$('#'+strId).focus();
			return;
		}
	});

	$(document).on('keyup','.IsAlphaNumeric',function(e){
		var strId = $(this).attr("id");
		var strValue = $(this).val();
		
		if (IsAlphaNumeric(strValue) == false) {
			alert("영숫자만 입력 가능합니다.");
			$('#'+strId).val('');
			$('#'+strId).focus();
			return;
		}
	});

	$(document).on('keyup','.IsMoney',function(e){
		var strId = $(this).attr("id");
		var strValue = CommaDel($(this).val());
		
		if (IsNumeric(strValue) == false) {
			alert("숫자만 입력 가능합니다.");
			$('#'+strId).val('');
			$('#'+strId).focus();
			return;
		}
		$(this).val(Comma(strValue));
	});

	$(document).on('change','.IsImageFile',function(e){
		var strId = $(this).attr("id");
		var strValue = $(this).val();
		
		var ImageExtList = "jpg|jpeg|gif|bmp|png";
		
		if (IsImageFile(strValue) == false) {
			alert(ImageExtList.replace(/\|\b/gi,', ',"") +"등 이미지 파일 형식만 등록 가능합니다.");
			$('#'+strId).val('');
			$('#'+strId).focus();
			return;
		}
	});
});

//------------------------------------------------------------------------------
// 공통 자바스크립트 함수
//------------------------------------------------------------------------------
$(document).ready(function() {
	$('.SMSBtyeCount').keyup(function() {
		var byteTxt = $(this).val();
		if (CheckKByteCnt(byteTxt) > 80) {
 			alert("80자 이상 입력할수 없습니다."); 
		}
		$(this).next().text(CheckKByteCnt(byteTxt));
	});

	$('#SUMMARY').keyup(function() {
		var byteTxt1 = $(this).val();
		var byteTxt2 = $(this).val();
		if (CheckKByteCnt(byteTxt1) > 400) {
 			alert("400자 이상 입력할수 없습니다.");
			byteTxt2 = CheckKByteStr(byteTxt1,200);
 		}
		$(this).val(byteTxt2);
		$('#myText').text(CheckKByteCnt(byteTxt2));
 	});

	$(document).on('keypress','#tmpHASH_TAG',function(e){
		var tagList = "";
		//var thisTag = regExp($(this).val());
		var thisTag = $(this).val();
		if (event.keyCode == 13) {
			tagList = '<li><a href="#tag" class="tagItem">#'+ thisTag +'</a> <img src="/02_images/ico-del.png" class="tagDelete" alt="삭제" /></li>';
			$('#hashList').append(tagList);			
			$(this).val('');
		}

		var tagList = "";
		$('.tagItem').each(function(){
			tagList += $(this).text();
		});
		$('#HASH_TAG').val(tagList);
	});

	$(document).on('click','.tagItem',function(){
		if ($(this).parent().hasClass("current")) {
			$('.tagItem').parent().removeClass('current');
		} else {
			$('.tagItem').parent().removeClass('current');
			$(this).parent().addClass('current');
		}
	});

	$(document).on('keyup','.tagItem',function(e){
		if ($(this).parent().hasClass("current") && (e.keyCode == 46 || e.keyCode == 8)) {
			$(this).parent().remove();

			var tagList = "";		
			$('.tagItem').each(function(){
				tagList += $(this).text();
			});
			$('#HASH_TAG').val(tagList);
		}
	});

	$(document).on('click','.tagDelete',function(e){
		$(this).parent().remove();

		var tagList = "";		
		$('.tagItem').each(function(){
			tagList += $(this).text();
		});
		$('#HASH_TAG').val(tagList);
	});

	$(document).on('click','.searchTag',function(){
		if ($(this).parent().hasClass("current")) {
			$('.searchTag').parent().removeClass('current');
		} else {
			$('.searchTag').parent().removeClass('current');
			$(this).parent().addClass('current');
		}
	});

});

//------------------------------------------------------------------------------
// Base64 인코딩/디코딩
//------------------------------------------------------------------------------
var Base64 = {
    // private property
    _keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
 
    // public method for encoding
    encode : function (input) {
        var output = "";
        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
        var i = 0;
 
        input = Base64._utf8_encode(input);
 
        while (i < input.length) {
 
            chr1 = input.charCodeAt(i++);
            chr2 = input.charCodeAt(i++);
            chr3 = input.charCodeAt(i++);
 
            enc1 = chr1 >> 2;
            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
            enc4 = chr3 & 63;
 
            if (isNaN(chr2)) {
                enc3 = enc4 = 64;
            } else if (isNaN(chr3)) {
                enc4 = 64;
            }
 
            output = output +
            this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
            this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
         }
 
        return output;
    },
 
    // public method for decoding
    decode : function (input) {
        var output = "";
        var chr1, chr2, chr3;
        var enc1, enc2, enc3, enc4;
        var i = 0;
 
        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
 
        while (i < input.length) {
 
            enc1 = this._keyStr.indexOf(input.charAt(i++));
            enc2 = this._keyStr.indexOf(input.charAt(i++));
            enc3 = this._keyStr.indexOf(input.charAt(i++));
            enc4 = this._keyStr.indexOf(input.charAt(i++));
 
            chr1 = (enc1 << 2) | (enc2 >> 4);
            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
            chr3 = ((enc3 & 3) << 6) | enc4;
 
            output = output + String.fromCharCode(chr1);
 
            if (enc3 != 64) {
                output = output + String.fromCharCode(chr2);
            }
            if (enc4 != 64) {
                output = output + String.fromCharCode(chr3);
            }
         }
         output = Base64._utf8_decode(output);
 
        return output;
 
    },
 
    // private method for UTF-8 encoding
    _utf8_encode : function (string) {
        string = string.replace(/\r\n/g,"\n");
        var utftext = "";
 
        for (var n = 0; n < string.length; n++) {
 
            var c = string.charCodeAt(n);
 
            if (c < 128) {
                utftext += String.fromCharCode(c);
            } else if((c > 127) && (c < 2048)) {
                utftext += String.fromCharCode((c >> 6) | 192);
                utftext += String.fromCharCode((c & 63) | 128);
            } else {
                utftext += String.fromCharCode((c >> 12) | 224);
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                utftext += String.fromCharCode((c & 63) | 128);
            }
         }
         return utftext;
    },
 
    // private method for UTF-8 decoding
    _utf8_decode : function (utftext) {
        var string = "";
        var i = 0;
        var c = c1 = c2 = 0;
 
        while ( i < utftext.length ) {
 
            c = utftext.charCodeAt(i);
 
            if (c < 128) {
                string += String.fromCharCode(c);
                i++;
            } else if((c > 191) && (c < 224)) {
                c2 = utftext.charCodeAt(i+1);
                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                i += 2;
            } else {
                c2 = utftext.charCodeAt(i+1);
                c3 = utftext.charCodeAt(i+2);
                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                i += 3;
            }
        }
        return string;
    }
}


//------------------------------------------------------------------------------
// 공통 자바스크립트 함수 모듈
//------------------------------------------------------------------------------
function setCookie(name,value,expires) { document.cookie=name + "=" + escape(value) + ((expires == null)? "" : (" ; expires=" + expires.toGMTString())) + "; path=/; domain=www.wine21.com"; }
function getCookie(name) { var arg = name + "="; var alen = arg.length; var clen = document.cookie.length; var i = 0; while(i< clen) { var j = i + alen; if(document.cookie.substring(i,j)==arg){ var end = document.cookie.indexOf(";",j); if(end == -1) end = document.cookie.length; return unescape(document.cookie.substring(j,end)); } i=document.cookie.indexOf(" ",i)+1; if (i==0) break; } return null; }

// 브라우저 체크 함수
function userAgent() {
	if ((/msie/i).test(navigator.userAgent)) return "ie";
	if ((/msie 6/i).test(navigator.userAgent)) return "ie6";
	if ((/msie 7/i).test(navigator.userAgent)) return "ie7";
	if ((/msie 8/i).test(navigator.userAgent)) return "ie8";
	if ((/msie 9/i).test(navigator.userAgent)) return "ie9";
	if ((/firefox/i).test(navigator.userAgent)) return "firefox";
	if ((/applewebkit/i).test(navigator.userAgent)) return "apple"; //safari. chrome
	if ((/opera/i).test(navigator.userAgent)) return "opera";
	if ((/(ipod|iphone|ipad)/i).test(navigator.userAgent)) return 	"ios";
	if ((/(ipad)/i).test(navigator.userAgent)) return "ipad";
	if ((/android/i).test(navigator.userAgent)) return "android";
}

function setPng24(obj) { 
    obj.width=obj.height=1; 
    obj.className=obj.className.replace(/\bpng24\b/i,''); 
    obj.style.filter = 
    "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');" 
    obj.src='';  
    return ''; 
}

function htmltodbFun(str) {
	var sting = str
	
	sting = sting.replace("<","&lt;");
	sting = sting.replace(">","&gt;");
	sting = sting.replace("'","&#39;");
	sting = sting.replace("'","&#34;");
	sting = sting.replace("|","#chr124");
	sting = sting.replace("--","#45;&#45;");
	
	return sting;
}

function dbtohtmlFun(str) {
	var sting = str
	
	sting = sting.replace("&lt;", "<");
	sting = sting.replace("&gt;", ">");
	sting = sting.replace("&#39;", "'");
	sting = sting.replace("&#34;", "'");
	sting = sting.replace("#chr124","|");
	sting = sting.replace("#45;&#45;", "--");
	
	return sting;
}

// 공백 체크 함수
function IsEmpty(keyword) {
	var st_num, key_len;
	st_num = keyword.indexOf(" ");	
	
	while (st_num != -1) {
		keyword = keyword.replace(" ", "");
		st_num  = keyword.indexOf(" ");
	}
	key_len=keyword.length;
	return key_len;
}

// 스트링 체크 함수
function checkstr(pstr, pvalid, han) {
	var valid = pvalid;
	var tmp;
	var flag = true;
	
	for (var i = 0; i < pstr.length; i++) {
		flag = true;
		tmp = "" + pstr.substring(i, i+1);
		if (han != 1) {
			if (valid.indexOf(tmp) == "-1") {
				return false;
			}
		} else {
			ch = escape(pstr.charAt(i));        //ISO-Latin-1 문자셋으로 변경
			if (valid.indexOf(tmp) == "-1" && strCharByte(ch) != 2) {
				return false;
			}
		}
	}
	return true;
}

// 숫자 체크 함수
function IsNumeric(str) {
	if (str.length > 0) {
		for (i=0; i < str.length ;i++){
			if ((str.substr(i,1) < '0' || str.substr(i,1) > '9')) {
				return false;
			}
		}
	}
	return true;
}

// 영어 및 숫자 체크 함수
function IsAlphaNumeric(checkStr) {
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_@.";
	for (i = 0; i < checkStr.length; i++) {
		ch = checkStr.charAt(i);
		for (j = 0; j < checkOK.length; j++)
			if (ch == checkOK.charAt(j))
			break;
			if (j == checkOK.length){
				return false;
				break;
			}
	}
	return true;
}

// 숫자 포함 여부 함수
function IsNumberCount(checkStr) {
	var n = 0;
	var reVal = false;
	var checkOK = "0123456789";
	for (i = 0; i < checkStr.length; i++) {
		ch = checkStr.charAt(i);
		for (j = 0; j < checkOK.length; j++) {
			if (ch == checkOK.charAt(j))
				n = n + 1;
		}
	}
	if(n > 0) reVal = true;

	return reVal;
}

// 문자 포함 여부 함수
function IsAlphaCount(checkStr) {
	var n = 0;
	var reVal = false;
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	for (i = 0; i < checkStr.length; i++) {
		ch = checkStr.charAt(i);
		for (j = 0; j < checkOK.length; j++) {
			if (ch == checkOK.charAt(j))
				n = n + 1;
		}
	}
	if(n > 0) reVal = true;

	return reVal;
}

// 업로드 이미지체크 함수 (GIF/JPG/JPEG/BMP/PNG)
function IsImageFile(filename) {
	var ImageExtList = "jpg|jpeg|gif|bmp|png";
	
	var arrFileExt = filename.split(".");
	var strFileExt = arrFileExt[arrFileExt.length-1];
	
	if(ImageExtList.indexOf(strFileExt.toLowerCase()) != -1) {
		return true;
	}
	return false;
}

// 한글 문자수 함수
function CheckKByteCnt(str) {
	var byteNum = 0; 
	for (i=0; i<str.length; i++) { 
		byteNum+=(str.charCodeAt(i)>127)?2:1; 
	}
	//return Math.round(byteNum/2);
	return byteNum;
}

function CheckKByteStr(str, cnt) {
	var byteNum = 0; 
	var byteTxt = "";
	for (i=0; i<str.length; i++) { 
		byteNum+=(str.charCodeAt(i)>127)?2:1; 
		if (byteNum < (cnt*2)+1) { 
			byteTxt+=str.charAt(i); 
		}
	}
	return byteTxt;
}

// 특수문자 제거 함수
function replaceAll(str1, str2, ste3){
	var v_ret = null;
	var v_regExp = new RegExp(str2, "g");
	v_ret = str1.replace(v_regExp, ste3);
	return v_ret;
}

// 특수문자 제거 함수
function regExp (str){
	var reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
	//특수문자 검증
	if(reg.test(str)){	//특수문자 제거후 리턴
		return str.replace(reg, "");
	} else {	//특수문자가 없으므로 본래 문자 리턴
		return str;
	}
}

// 업로드 파일체크 함수 (PHP/P/HTML/HTM/EXE)
function CheckFiles(fileis) {
	var filename = fileis;

	if (!IsEmpty(filename)) {		// 파일 선택을 안한경우
	   return true;
	} else {						// 파일선택을 한 경우
		var ext = filename.split(".");
		var extension = ext[ext.length-1];
		if (extension.toUpperCase() == "PHP" || extension.toUpperCase() == "ASP" || extension.toUpperCase() == "HTML" || extension.toUpperCase() == "HTM" || extension.toUpperCase() == "EXE"){
			return true;
		}else{
			return false;
		}
	}
}

// 숫자에 콤마 찍어주는 함수
function Comma(checkStr) {
	checkStr = '' + checkStr;
	
	//--- 소수점 첫째자리에서 반올림해주는 기능 ---//
	numberTmp = checkStr.split(".");
	if(numberTmp[1]) {
		var c = numberTmp[1].substring(0,1);
		if(c >= 0 && c < 5)
			checkStr = eval(numberTmp[0]);
		else
			checkStr = eval(numberTmp[0]) + 1;
	}
	checkStr = ''+ checkStr +'';
	
	//--- Comma찍어주는 기능 ---//
	if (checkStr.length > 3) {
		var mod = checkStr.length % 3;
		var output = (mod > 0 ? (checkStr.substring(0,mod)) : '');
		for (i=0 ; i < Math.floor(checkStr.length / 3); i++) {
			if ((mod == 0) && (i == 0)) {
				output += checkStr.substring(mod+ 3 * i, mod + 3 * i + 3);
			} else {
				output+= ',' + checkStr.substring(mod + 3 * i, mod + 3 * i + 3);
			}
		}
		return (output);
	} else {
		return checkStr;
	}
}

// 숫자에 콤마를 없애주는 함수
function CommaDel(checkStr) {
	NumValue = "";
	NumArray = checkStr.split(",");
	aa = NumArray.length;
	if(aa > 1) {
		for(ii=0; ii < aa; ii++) {
			if(NumArray[ii] == '')
				break;
			else
				NumValue += NumArray[ii];
		}
	} else {
		NumValue = checkStr;
	}
	return(NumValue);
}

// 특정문자를 없애주는 함수
function StringDel(checkStr1, checkStr2) {
	StrValue = "";
	StrArray = checkStr1.split(checkStr2);
	aa = StrArray.length;
	if(aa > 1) {
		for(ii=0; ii < aa; ii++) {
			if(StrArray[ii] == '')
				break;
			else
				StrValue += StrArray[ii];
		}
	} else {
		StrValue = checkStr1;
	}
	return(StrValue);
}

// 금액 확인 함수
function CheckMoney(FormName, FieldName) {
	FormName = eval("document."+ FormName);
	with(FormName) {
		FieldName1 = eval(FieldName);
		FieldName2 = FieldName1.value;
		FieldValue1 = FieldName2.substring(0,1);
		if (FieldValue1=="-") FieldValue2 = FieldName2.substring(1);
		else FieldValue2 = FieldName2;
		//alert(FieldValue2);
		FieldValue3 = CommaDel(FieldValue2);
		if(!IsDigitStr(FieldValue3)) {
			alert("숫자만 입력 가능합니다.");
			FieldName1.value = ""
			FieldName1.focus();
			return;		
		}
		FieldValue4 = Comma(FieldValue3)
		if (FieldValue1=="-") FieldValue = FieldValue1 + FieldValue4;
		else FieldValue = FieldValue4;
		FieldName3 = eval(FieldName);
		FieldName3.value = FieldValue;
	}
}

// 해당 문자열보다 작으면 0 추가 함수
function AddZero(str1, str2) {
	var tmpValue = "";
	var strValue = "";
	
	var tmpStr1 = str1.toString();
	var tmpStr2 = str2.toString();
	
	var strStr1No = tmpStr1.length;
	var strStr2No = tmpStr2.length;
	
	var strLastNo = parseInt(strStr1No) - parseInt(strStr2No);
	
	if (strStr1No <= strStr2No) {
		strValue = tmpStr2;
	} else {
		tmpValue = "";
		for(i=1; i <= strLastNo; i++) {
			tmpValue += "0";
		}
		strValue = tmpValue + tmpStr2;
	}
	return(strValue);
}
function StrPadLeft(num, len, pad) {
	return Array(len-String(num).length+1).join(pad||'0')+num;
}

// 메일 확인 함수
function CheckEmail(checkStr) {
	var checkflag = true;
	var retvalue;
	
	if(window.RegExp){
		var tempstring = "a"
		var exam = new RegExp(tempstring)
		if(tempstring.match(exam)){
			var ret1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");

			var ret2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,3}|[0-9]{1,3})(\\]?)$");
			retvalue=(!ret1.test(checkStr) && ret2.test(checkStr))
		}else{
			checkflag = false;	
		}
	}else{
		checkflag = false;
	}
	if(!checkflag){
		retvalue=((checkStr != "") && (checkStr.indexOf("@"))>0 && (checkStr.indexOf(".")>0));		
	}
	return retvalue
}

// 유효한 날짜인지 점검하는 함수
function CheckDate(pMonth, pDay, pYear){
    var ofd = new Date;
    ofd.setDate(1);

    pMonth = "" + pMonth;
    pDay = "" + pDay;
    pYear = "" + pYear;
    var Year = parseInt(rmleadzero(pYear));
    var Month = rmleadzero(pMonth);
    var Day = rmleadzero(pDay);

    if (isNaN(Year)) Year = 2000;
    if (Year <= 100) Year = Year + 1900;

    ofd.setYear(parseInt(Year));
    ofd.setMonth(parseInt(Month)-1);
    ofd.setDate(parseInt(Day));

    var vy = ofd.getFullYear();
    var vm = ofd.getMonth()+1;
    var vd = ofd.getDate();
    
    if (vy <= 200) vy = vy + 1900;

    fdate = Year+"/"+Month+"/"+Day;
    vdate = vy+"/"+vm+"/"+vd;
    if (fdate != vdate){
        return false;
    }
    return true;
}

// 기준 날짜와의 차이 구하기 함수
function CheckNextDate(v, t) {
	var str = new Array();
	var b = v.split("-");
	var c = new Date(b[0],b[1]-1,b[2]);
	var d = c.valueOf()+1000*60*60*24*t;
	var e = new Date(d);
		
	Year = e.getFullYear();
	Month = e.getMonth()+1;
	if (Month<10) Month = "0"+ Month;
	Day = e.getDate();
	if (Day<10) Day = "0"+ Day;
	SDate = Year +"-"+ Month +"-"+ Day;
			
	return SDate;
}

// 날짜값에서 -.등을 없엔 14자리 함수
function CheckDateFormat1(date) {
	var newDate = new Date(date);
	
	Year   = newDate.getFullYear(), 
	Month  = newDate.getMonth()+1;
	Day    = newDate.getDate();
	Hours  = newDate.getHours();
	Minutes = newDate.getMinutes();
	Seconds = newDate.getSeconds();
	
	if (Month<10) Month = "0"+ Month;
	if (Day<10) Day = "0"+ Day;
	if (Hours<10) Hours = "0"+ Hours;
	if (Minutes<10) Minutes = "0"+ Minutes;
	if (Seconds<10) Seconds = "0"+ Seconds;
	strDate = Year +"-"+ Month +"-"+ Day +"-"+ Hours +"-"+ Minutes +"-"+ Seconds;
	
	return strDate;
}

// 파일 사이즈 체크 : byte
function CheckFileSize(path, type) {
	var img = new Image();
	img.dynsrc = path;
	var size = img.fileSize;

	var resize;
	if (type =="k") {
		resize = size / 1024;
	} else if (type == "m") {
		resize = size / 1024 / 1024;
	} else {
		resize = size;
	}

	return resize;
}

// 파일 확장자 체크
function CheckFileExtension(inp) {
	var lastidx = -1;
	lastidx = inp.lastIndexOf('.');
	var extension = inp.substring(lastidx+1, inp.length);

	return extension;
}

function ImagePreViewIt(thisObj, preViewer, preImage) {
	if(!/(\.gif|\.jpg|\.jpeg|\.png|\.swf)$/i.test(thisObj.value)) {
		alert("이미지 형식의 파일을 선택하십시오");
		return;
	}
	
	document.getElementById(preImage).style.display = "none";
	preViewer = (typeof(preViewer) == "object") ? preViewer : document.getElementById(preViewer);
	var ua = window.navigator.userAgent;
	
	if (ua.indexOf("MSIE") > -1) {
		var img_path = "";
		if (thisObj.value.indexOf("\\fakepath\\") < 0) {
			img_path = thisObj.value;
		} else {
			thisObj.select();
			
			var selectionRange = document.selection.createRange();
			img_path = selectionRange.text.toString();
			thisObj.blur();
		}
		preViewer.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='fi" + "le://" + img_path + "', sizingMethod='scale')";
	} else {
		preViewer.innerHTML = "";
		
		var W = preViewer.offsetWidth;
		var H = preViewer.offsetHeight;
		var tmpImage = document.createElement("img");
		preViewer.appendChild(tmpImage);
		
		tmpImage.onerror = function () {
			return preViewer.innerHTML = "";
		}
		tmpImage.onload = function () {
			if (this.width > W) {
				this.height = this.height / (this.width / W);
				this.width = W;
			}
			if (this.height > H) {
				this.width = this.width / (this.height / H);
				this.height = H;
			}
		}
		if (ua.indexOf("Firefox/3") > -1) {
			var picData = thisObj.files.item(0).getAsDataURL();
			tmpImage.src = picData;
		} else {
			tmpImage.src = "file://" + thisObj.value;
		}
	}
}

// 다음 도로명 주소 함수
function execDaumPostcode(str) {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if(data.buildingName !== '' && data.apartment === 'Y'){
			   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if(extraRoadAddr !== ''){
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if(fullRoadAddr !== ''){
				fullRoadAddr += extraRoadAddr;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById(str+'POST').value = data.zonecode; //5자리 새우편번호 사용
			document.getElementById(str+'ADDR_DORO').value = fullRoadAddr;
			document.getElementById(str+'ADDR_JIBUN').value = data.jibunAddress;

			document.getElementById(str+'ADDR_DETAIL').focus();
		}
	}).open();
}

function execDaumPostcode2(str) {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if(data.buildingName !== '' && data.apartment === 'Y'){
			   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if(extraRoadAddr !== ''){
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if(fullRoadAddr !== ''){
				fullRoadAddr += extraRoadAddr;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById(str).value = fullRoadAddr;
		}
	}).open();
}

// 이미지 미리보기
function setTitleImageThumbnail(event) {
	var reader = new FileReader();

	reader.onload = function(event) {
		$('#image_container').html('');
		$('#image_container').show();

		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		document.querySelector("div#image_container").appendChild(img);
	};

	reader.readAsDataURL(event.target.files[0]);
}
function downloadQR(WINE_IDX) {
	var url = 'https://qr.wine21.com/WineDetailQRImage?SIZE=512&WINE_IDX=' + WINE_IDX;
	var link = document.createElement("a");
    link.setAttribute('target', "_blank");
    link.setAttribute('download', '');
    link.href = url;
    document.body.appendChild(link);
    link.click();
    link.remove();

	var map = {};
	map['WINE_IDX'] = WINE_IDX;
	var url = '/10_main/proc/ajax_add_qr_count.php';
	var data = MakeFormData(url, map);
	requestPage(url, 'post', data, undefined, undefined);
}

function downloadQRBundle(WINE_IDX) {
	var url = 'https://qr.wine21.com/WineDetailMultiQRImage?SIZE=512&WINE_IDX=' + WINE_IDX;
	var link = document.createElement("a");
    link.setAttribute('target', "_blank");
    link.setAttribute('download', '');
    link.href = url;
    document.body.appendChild(link);
    link.click();
    link.remove();

	var map = {};
	map['WINE_IDX'] = WINE_IDX;
	var url = '/10_main/proc/ajax_add_qr_count.php';
	var data = MakeFormData(url, map);
	requestPage(url, 'post', data, undefined, undefined);
}