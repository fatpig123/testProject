var startIdx = 1;
var endIdx = 6;

window.addEventListener('scroll', function() {
  // 스크롤이 하단에 도달했으면
  if (window.scrollY + window.innerHeight >= document.body.offsetHeight) {
	   console.log("스크롤 실행되나??");
	   sortedList();
	   }
	});

function addWineListInfinity() {
	let val = $("#js_select").val();
	let html = "";
	
	$.ajax({
				url : "/product/sortedAdded",
				type : "GET",
				data : {
					"w_price1": w_price1,
					"w_price2": w_price2,
					"w_type": w_type,
					"wr_nation_kor": wr_nation_kor,
					"wv_variety_kor": wv_variety_kor,
					"w_sweetness": w_sweetness,
					"w_acidity": w_acidity,
					"w_body": w_body,
					"w_tannin": w_tannin,
					"sort" : val,
					"startIdx" : startIdx,
					"endIdx" : endIdx
				},
				beforeSend : function(xhr) {
					let header = $("meta[name='_csrf_header']")
							.attr("content");
					let token = $("meta[name='_csrf']").attr(
							"content");
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
						html += "<p class='vivino'>평균 평점<em> "
								+ data[i].avg_db_rating
								+ " </em></p>"
						html += "<div class='label_wrap'>"
						/* html+="<span class='icon new'>NEW</span>" */
						html += "</div>"
						html += "</div>"
						html += "<div class='info'>"
						html += "<div class='more_info'>"
						html += "<p class='prd_name'>"
						html += "<a href='/product/item?w_id=" + data[i].w_id + "'>";
						html += "<span class='list-wine-name'>" + data[i].w_name_kor
							 + "</span>"
						html += "<span class='en list-wine-name-eng'>"
								+ data[i].w_name + "</span></a>"
						html += "</p>"
						html += "</div>"
						html += "<div class='cate_label' style='display:flex;'>"
						html += "<div style='margin-top: 5px; margin-left: 5px;'>"
					         + "<img id='wine_nation_image' src='/resources/asset/images/shop/default/icon_rec_flag_italia.png'>"
					         + "</div>"
						html += "<span style='background: #F6EC9C; padding: 9px; '>"
								+ data[i].w_type + " 와인" + "</span>"
						html += "<span style='background: #E0D8EA; padding: 9px;' id='wine_nation_kor'>"
								+ data[i].wr_nation_kor + "</span>"
						
						html += "</div>"
						html += "</div>"
						html += "<div class='price_area' style='text-align: right; font-weight: bold;'>"
						html += "<p class='price'>"
						html += "<ins style='text-decoration-line:none;'><strong>"
								+ comma(data[i].w_price)
								+ "</strong>원</ins>"
						html += "</p>"
						html += "</div>"
						html += "</div>"
						html += "</div>"
						html += "</li>"
						
						changeNationImg();
						
					}
						$('#product_ul').append(html);
						startIdx+=6;
						endIdx+=6;
				},

				error : function(request, status, error) {
					alert("code:" + request.status + "\n"
							+ "message:" + request.responseText
							+ "\n" + "error:" + error);
				}
			});
}

	function changeNationImg(){
	wine_nation_kor = $("#wine_nation_kor").text(); 	
		//alert(wine_nation_kor);
		if (wine_nation_kor === "이탈리아") {
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_italia.png');
		} else if (wine_nation_kor === "프랑스"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_france.png');
		} else if (wine_nation_kor === "스페인"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_spain.png');
		}else if (wine_nation_kor === "독일"){
			$('#wine_nation_image').att95oceansr('src', '/resources/asset/images/shop/default/icon_rec_flag_germ.png');
		}else if (wine_nation_kor === "미국"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_usa.png');
		}else if (wine_nation_kor === "칠레"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_chile.png');
		}else if (wine_nation_kor === "아르헨티나"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_argentina.png');
		}else if (wine_nation_kor === "호주"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/icon_rec_flag_aus.png');
		}else if (wine_nation_kor === "남아프리카"){
			$('#wine_nation_image').attr('src', '/resources/asset/images/shop/default/south-africa.jpg');
		}
		
	}
															