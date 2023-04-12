/* *********** */
/* Last Updata : 2021.11.02.
/* *********** */

/*
 * global variable : commonUI
 */

var commonUI = commonUI || {};

(function(_c){
	/**
     * Mobile Resize
     * @namespace isMobile
     * @example
     * commonUI.isMobile;
     */
    _c.isMobile = (function(){
        var isMobile = false;
        var screenSize = parseInt($(this).width());
        if( 1024 > screenSize){
            isMobile = true;
        }

        $(window).bind('resize', function(){
            var reSize = parseInt($(this).width());
            if( 1024 > reSize && commonUI.isMobile == false){
                commonUI.isMobile = true;
                console.log("mb");
            }else if(1024 <= reSize && commonUI.isMobile == true){
                commonUI.isMobile = false;
                console.log("pc");
            }
        });

        return isMobile;
    })();

    /**
     * layer Event
     * @namespace layer
     * @example
     * commonUI.layer.open(target) = layer open;
     * commonUI.layer.close() = layer close;
     */
    _c.layer = (function(){
        var open, close, _target = undefined;

        open = function(target){

            if( target == undefined ){
                _target = $(".layer");
            }else{
                _target = $("." + target);
            }
            _target.fadeIn();

            if(target == "set_layer"){
                $(".set_layer .layer_area").after('<div class="set_layer_close_event"></div>');

                $(".set_layer_close_event").on("click", function(){
                    commonUI.layer.close();
                });
            }

            $(document).keydown(function(event){
                if(event.keyCode == '27'){
                    commonUI.layer.close();
                }
            });
        }

        close = function(){

            if( _target == undefined ){
                _target = $(".layer");
            }

            _target.fadeOut();

            if($(".set_layer_close_event").length){
                $(".set_layer_close_event").remove();
            }
        }

        return {
            open : open,
            close : close
        }
    })();

    /**
     * header Search Event
     * @namespace header
     * @example
     * commonUI.header.Search.clickFn() = header Search open/close;
     * commonUI.header.Mypage.clickFn() = header Search open/close;
     */
     _c.header = (function(){
        var Search, Mypage;

        Search = (function(){
            var clickFn;

            clickFn = function(){
                $('#header .mb_search_btn button, #header .pc_search_btn, #header .pc_search_btn button, .search_layer, #header .fixed_search_btn').toggleClass('on');
                $('.search_layer #keyword').focus();
            }

            return {
                clickFn : clickFn
            }
        })();

        Mypage = (function(){
            var clickFn;

            clickFn = function(){
                $('#header .right_menu li.mypage button').toggleClass('on')
            }

            return {
                clickFn : clickFn
            }
        })();

        return {
            Search : Search,
            Mypage : Mypage
        }
    })();

    /**
     * footer Event
     * @namespace footer
     * @example
     * commonUI.footer.open() = footer open;
     * commonUI.footer.close() = footer close;
     * commonUI.footer.topMove() = top Move close;
     */
    _c.footer = (function(){
        var open, close, topMove;

        open = function(){
            $('#footer .hidden_info').addClass('on');
            $('html, body').animate({scrollTop : $(document).height()}, 100);
        }

        close = function(){
            $('#footer .hidden_info').removeClass('on');
        }

        topMove = function(){
            $('html, body').animate({scrollTop : 0}, 1000);
        }

        return {
            open : open,
            close : close,
            topMove : topMove
        }
    })();

    /**
     * Tab Module
     * @namespace tabModule
     * @example
     * default auto Apply Class Name = js_tab
     * new commonUI.tabModule(target) = New Toggle Event Apply;
     */
     _c.tabModule = (function(){
        var tab = function(target){
            this.$tabWrap = $(target);
            this.$tabBtn = this.$tabWrap.find(">.js_tabBtn li button");
            this.$tabCon = this.$tabWrap.find(">.js_tabCon");
            this.eventBinding();
        };

        tab.prototype = {
            eventBinding : function(){
                var self = this;
                this.$tabBtn.on("click", function(){
                    self.activeEvent(this);
                });
            },
            activeEvent : function(tg){
                var $tg = $(tg).parent(),
                    tgIdx = $tg.index();
                this.$tabBtn.parent().removeClass("on");
                this.$tabCon.removeClass("on");
                $tg.addClass("on");
                this.$tabCon.eq(tgIdx).addClass("on");
            }
        }
        return tab;
    })();

    /**
     * btnSwitch Module
     * @namespace btnSwitch
     * @example
     * default auto Apply Class Name = js_tab
     * new commonUI.tabModule(target) = New Toggle Event Apply;
     */
     _c.btnSwitch = (function(){
        var btnSwitch = function(select, options){
            this.$btn_switch = $(select);
            this.$showTxt =  this.$btn_switch.find('.show');
            this.$hideTxt = this.$btn_switch.find('.hide');
            this.$btn = this.$btn_switch.find('.btn');
            this.options = options;
            this.leftValue = 2;
            this.show = false;

            this.eventBinding();
        };

        btnSwitch.prototype = {
            defaults : {
                leftValue : '55'
            },

            eventBinding : function(){
                var that = this;
                var $input = this.$btn.find('input')[0];

                this.options = $.extend({}, that.defaults, that.options);

                /* event bind */
                $input.addEventListener('click', function(){
                    if(that.show){
                        that.hideEvent();
                    }else{
                        that.showEvent();
                    }
                });

                /* default show */
                if(this.$btn_switch.hasClass("show")){
                    that.showEvent();
                }
            },

            showEvent : function(){
                this.$btn.find('input')[0].value = "Y";
                console.log(this.$btn.find('input')[0]);
                this.show = true;
                this.leftValue = this.options.leftValue;
                this.$showTxt.fadeIn();
                this.$hideTxt.fadeOut();
                this.$btn_switch.addClass('show');
                this.moveEvent();
            },

            hideEvent : function(){
                this.$btn.find('input')[0].value = "N";
                console.log(this.$btn.find('input')[0]);
                this.show = false;
                this.leftValue = 5;
                this.$showTxt.fadeOut();
                this.$hideTxt.fadeIn();
                this.$btn_switch.removeClass('show');
                this.moveEvent();
            },

            moveEvent : function(){
                var that = this;
                $(this.$btn).stop().animate({'left' : that.leftValue}, 500);
            }
        }

        return btnSwitch;
    })();

    /**
     * toggleSelect Event
     * @namespace toggleSelect
     * @example
     * default auto Apply Class Name = js_toggle
     * new commonUI.toggleSelect(target) = New Toggle Event Apply;
     */
     _c.toggleSelect = (function(){

        var apply = function(target){

            this.$t = $(target);
            this.$b = $(".js_title_btn", this.$t);
            this.$i = $('input', this.$t);
            this.$u = $('ul', this.$t);
            this.$c = $(".js_change_btn", this.$t);
            this.$bg = $(".bg", this.$t);
            this.eventBinding();
        };

        apply.prototype = {
            eventBinding : function(){
                var self = this;

                this.$b.on('click', function(){ self._titClickEvent() });
                this.$c.on('click', function(){ self._changeClickEvent(this) });
                this.$bg.on('click', function(){ self.$b.removeClass('on'); });

                this.$c.each(function(idx){
                    if($(this).find('span').html() == self.$b.find('span').html()){
                        $(this).parent().addClass('check');
                    }
                })
            },
            _titClickEvent : function(){
                this.$b.toggleClass('on');
            },
            _changeClickEvent : function(target){
                this.$b.removeClass('on');
                this.$i.attr('value', $(target).find('span').html());
                this.$b.find('span').html($(target).find('span').html());
                this.$b.addClass("active");
                this.$u.find('li').removeClass('check');
                $(target).parent().addClass('check');
            }
        }

        return apply;
     })();

    /**
     * default Event Binding
     * @namespace defaultEventBinding
     * @example
     * commonUI.defaultEventBinding();
     */
     _c.defaultEventBinding = function(){

        /* Tab Default Apply */
        $('.js_tab').each(function () {
            new commonUI.tabModule(this);
        });

        /* Toggle Default Apply */
        $('.js_toggle').each(function () {
            new commonUI.toggleSelect(this);
        });
    }
     
    /**
     * Header Search Box Event
     * @namespace search_box
     * @example
     * default auto Apply Class Name = search_box
     */
    _c.search_box = function(){
	    $("html").click(function(e){
            if($(e.target).hasClass("srch_close_event") || $(e.target).hasClass("del_btn")){	// 2022-04-19 최근 검색어 삭제 시 검색어창 유지하기 위해 추가수정
                $('#header .search_result').show();
            }else{
                $('#header .search_result').hide();
            }
        });
    };

    $(document).ready(function(){
        //이미지 우클릭 방지
        $(window.document).on("contextmenu", function(){
            if(event.target.nodeName == "IMG"){
                return false;
            }
        });

/*        function conPd(){
            var hdH = $("header").outerHeight();
            $("#contents").css({"margin-top":hdH});
        }*/
        $(window).on('load resize', function(){
            if($(window).width() < 1023){
                // console.log("mb");
                //conPd();
            }else{
                // console.log("pc");
                //conPd();
            }
        });

        commonUI.defaultEventBinding();
        commonUI.search_box();

        

        $(window).scroll(function(){
            var $header = $("header"),
                scrlTop = $(window).scrollTop(),
                hdHeight = $header.outerHeight();

            if(scrlTop >= hdHeight){
                $header.addClass("fixed");
            }
            else{
                $header.removeClass("fixed");
                //conPd();
            }
        });
    });

})(commonUI);