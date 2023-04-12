
//정렬 (order by)
function sortedList() {
  let val = $("#js_select").val();
  let html = "";
  
  function getNationImg(wine_nation_kor) {
		//wine_nation_kor = $("#wine_nation_kor").text(); 	
			//alert(wine_nation_kor);
			if (wine_nation_kor === "이탈리아") {
				return( '/resources/asset/images/shop/default/icon_rec_flag_italia.png');
			} else if (wine_nation_kor === "프랑스"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_france.png');
			} else if (wine_nation_kor === "스페인"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_spain.png');
			}else if (wine_nation_kor === "독일"){
				return ('/resources/asset/images/shop/default/icon_rec_flag_germ.png');
			}else if (wine_nation_kor === "미국"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_usa.png');
			}else if (wine_nation_kor === "칠레"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_chile.png');
			}else if (wine_nation_kor === "아르헨티나"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_argentina.png');
			}else if (wine_nation_kor === "호주"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_aus.png');
			}else if (wine_nation_kor === "남아프리카"){
				return( '/resources/asset/images/shop/default/south-africa.jpg');
			}else if (wine_nation_kor === "포르투갈"){
				return( '/resources/asset/images/shop/default/portugal.png');
			}else if (wine_nation_kor === "뉴질랜드"){
				return( '/resources/asset/images/shop/default/newzealand.png');
			}else if (wine_nation_kor === "오스트리아"){
				return( '/resources/asset/images/shop/default/austria.png');
			}else if (wine_nation_kor === "캐나다"){
				return( '/resources/asset/images/shop/default/canada.png');
			}else if (wine_nation_kor === "크로아티아"){
				return( '/resources/asset/images/shop/default/croatia.png');
			}else if (wine_nation_kor === "조지아"){
				return( '/resources/asset/images/shop/default/georgia.png');
			}else if (wine_nation_kor === "불가리아"){
				return( '/resources/asset/images/shop/default/bulgaria.png');
			}else if (wine_nation_kor === "슬로베니아"){
				return( '/resources/asset/images/shop/default/slovenia.png');
			}else if (wine_nation_kor === "우루과이"){
				return( '/resources/asset/images/shop/default/uruguai.png');
			}else if (wine_nation_kor === "그리스"){
				return( '/resources/asset/images/shop/default/greece.png');
			}else if (wine_nation_kor === "루마니아"){
				return( '/resources/asset/images/shop/default/rumania.png');
			}else if (wine_nation_kor === "이스라엘"){
				return( '/resources/asset/images/shop/default/israel.png');
			}else if (wine_nation_kor === "레바논"){
				return( '/resources/asset/images/shop/default/lebanon.png');
			}else if (wine_nation_kor === "몰도바"){
				return( '/resources/asset/images/shop/default/moldova.png');
			}else if (wine_nation_kor === "일본"){
				return( '/resources/asset/images/shop/default/japan.png');
			}else if (wine_nation_kor === "중국"){
				return( '/resources/asset/images/shop/default/china.png');
			}else if (wine_nation_kor === "대한민국"){
				return( '/resources/asset/images/shop/default/korea.png');
			}else if (wine_nation_kor === "헝가리"){
				return( '/resources/asset/images/shop/default/hungary.png');
			}else if (wine_nation_kor === "영국"){
				return( '/resources/asset/images/shop/default/uk.png');
			}
		}
		
		function getColorByWineType(w_type){
		//w_type = $("#wineType").val();
		//alert(w_type);
		if (w_type === "레드") {
			return("background: #ffd8d8; padding: 9px; margin-bottom:0px");
		} else if (w_type==="로제"){
			return("background: #FFDEC6; padding: 9px; margin-bottom:0px");
		} else if(w_type==="화이트"){
			return("background: #f3f5ff; padding: 9px; margin-bottom:0px");
		}else if(w_type==="고도주"){
			return("background: #f3f5ff; padding: 9px; margin-bottom:0px");
		}else if(w_type==="주정강화"){
			return("background: #d7edff; padding: 9px; margin-bottom:0px");
		}else if(w_type==="스파클링"){
			return("background: #d8e6ff; padding: 9px; margin-bottom:0px");
		}
	}
		
  $.ajax({
    url: "/product/sortedAdded",
    type: "GET",
    async: false,
    data: {
      w_price1: w_price1,
      w_price2: w_price2,
      w_type: w_type,
      wr_nation_kor: wr_nation_kor,
      wv_variety_kor: wv_variety_kor,
      w_sweetness: w_sweetness,
      w_acidity: w_acidity,
      w_body: w_body,
      w_tannin: w_tannin,
      sort: val,
      startIdx: startIdx,
      endIdx: endIdx,
    }, 
    beforeSend: function (xhr) {
      let header = $("meta[name='_csrf_header']").attr("content");
      let token = $("meta[name='_csrf']").attr("content");
      xhr.setRequestHeader(header, token);
    },
    success: function (data) {
      //alert("sortedList 함수 실행");

      for (let i = 0; i < data.length; i++) {
						html += "<li>"
						html += "<div class='item'>"
						html += "<div class='main_img'>"
						html += "<a href=/product/item?w_id="
								+ data[i].w_id
								+ " class='prd_img table_box'><picture>"
						html += "<img src='" + data[i].w_img + "'loading='lazy'> </picture></a>"
						html += "<p class='vivino'>평균 평점<em style='color:#bd0808;'> "
								+ data[i].avg_db_rating
								+ " </em></p>"
						html += "<div class='label_wrap'>"
						html += "</div>"
						html += "</div>"
						html += "<div class='info'>"
						html += "<div class='more_info'>"
						html += "<p class='prd_name'>"
						html += "<a href='/product/item?w_id=" + data[i].w_id + "'>"
						html += "<span class='list-wine-name'>" + data[i].w_name_kor
								+ "</span>"
						html += "<span class='en list-wine-name-eng'>"
								+ data[i].w_name + "</span></a>"
						html += "</p>"
						html += "</div>"
						html += "<div class='cate_label' style='display:flex; align-items: center;'>"
						
						html += "<span style='background: #E0D8EA; padding: 9px; display:none;' id='wine_nation_kor'>"
								+ data[i].wr_nation_kor + "</span>"
								
						var flagNation=getNationImg(data[i].wr_nation_kor);
						
						html += "<img style='margin-top: 0px;' id='wine_nation_image' src='"+ flagNation +"'>"
						
						var typeColor=getColorByWineType(data[i].w_type);
						
						html += "<span style='" + typeColor + "'>"
							+ data[i].w_type + " 와인" + "</span>"
						html += "<p class='price' style='font-size: 13px; margin-left: 7px; font-weight: bold;'>"
						html += "<ins style='text-decoration-line:none;'>"
							+ comma(data[i].w_price)
							+ "원</ins>"
						html += "</p>"
						html += "</div>"
						html += "</div>"
						html += "<div class='price_area' style='text-align: right; font-weight: bold;'>"
						html += "</div>"
						html += "</div>"
						html += "</div>"
						html += "</li>"
					}
		if( parseInt($('#appendSuper').val()) == 1 ){
			$("#product_ul").html(html);
			$('#appendSuper').val(0);
			console.log('append');
		}
		else{
      $("#product_ul").append(html);
			console.log('html');
      }
      startIdx+=6;
      endIdx+=6;
    },
    error: function (request, status, error) {
      alert(
        "code:" +
          request.status +
          "\n" +
          "message:" +
          request.responseText +
          "\n" +
          "error:" +
          error
      );
    },
  });
}
