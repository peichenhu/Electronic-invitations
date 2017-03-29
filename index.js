/**
 * Created by Pich on 2016/10/22.
 */

$(document).ready(function() {
    //ip6  375-603
    var sceneWidth = $(window).width();
    var sceneHeight = $(window).height();
    var ratio = sceneWidth/sceneHeight;

    if(ratio > (375/603)){
        sceneWidth = sceneHeight * (375/603);
    }else {
        sceneHeight = sceneWidth * (603/375 );
    }

    $("body").css({width : sceneWidth, height : sceneHeight});

    $(".swiper-container,.swiper-slide,#loading").css({width : sceneWidth, height : sceneHeight, overflow: "hidden"});

    window.onload = function() {
        $.html5Loader({
            filesToLoad:    './h5load.json', // this could be a JSON or simply a javascript object
            onBeforeLoad:       function () {},
            onComplete:         function () {

                oAudio.play();
                tm1.seek(0).pause();
                $("#loading").fadeOut();
                tm1.restart();
            },
            onElementLoaded:    function ( obj, elm) { },
            onUpdate:           function ( percentage ) {
                console.log(percentage)
            }
        });
        var i;

        var mainSwiper = new Swiper( '.swiper-container', {
            direction: 'vertical',
            loop:false,
            longSwipesRatio : 0.1,
            speed:200,
            nextButton:'.slideDown',
            pagination: '.swiper-pagination',
            onSlideChangeEnd: function(swiper){
                tm1.seek(0).pause();
                tm2.seek(0).pause();
                tm3.seek(0).pause();
                tm4.seek(0).pause();
                tm5.seek(0).pause();
                tm6.seek(0).pause();
                tm7.seek(0).pause();
                i = mainSwiper.activeIndex + 1;
                if(i == 1){ tm1.restart()}
                if(i == 2){ tm2.restart()}
                if(i == 3){ tm3.restart()}
                if(i == 4){ tm4.restart()}
                if(i == 5){ tm5.restart()}
                if(i == 6){ tm6.restart()}
                if(i == 7){ tm7.restart()}
            },
            onTouchMove: function(swiper){
            }
        });

        var cellSwiper = new Swiper('.page_5',{
            direction : 'horizontal',
            loop:true,
            speed:200,
            autoplay: 3000,
            longSwipesRatio : 0.1,
            prevButton:'.slide_l',
            nextButton:'.slide_r',
        });
        {

            var tm1 = new TimelineMax()
                .fromTo(".page_1 .picture>img", 3, {marginTop: 0}, {marginTop: -60}, 0)
                .fromTo(".page_1 .frame", 3, {autoAlpha: 0, scale: 0}, {autoAlpha: 1, scale: 1, ease: Back.easeOut}, 0)
                .fromTo(".page_1 .hearts>img", 3, {autoAlpha: 0, scale: 0}, {
                    autoAlpha: 1,
                    scale: 1,
                    ease: Back.easeOut
                }, 0)
                .fromTo(".page_1 #name", 2, {autoAlpha: 0, marginLeft: -100}, {
                    autoAlpha: 1,
                    marginLeft: 0,
                    ease: Back.easeOut
                }, 1)
                .fromTo(".page_1 #marry", 2, {autoAlpha: 0, marginRight: -100}, {
                    autoAlpha: 1,
                    marginRight: 0,
                    ease: Back.easeOut
                }, 1)
                .fromTo(".page_1 .hearts li>img", 2, {autoAlpha: 0.3, scale: 1}, {
                    autoAlpha: 1,
                    scale: 1.2,
                    yoyo: true,
                    repeat: -1,
                    ease: Power2.easeOut
                }, 0);

            var tm2 = new TimelineMax()
                .from(".page_2 .head_frame", 4, {autoAlpha: 0, yPercent: 20, ease: Back.easeOut}, 0)
                .from(".page_2 .linebar_1", 4, {autoAlpha: 0, yPercent: 100, ease: Back.easeOut}, 0)
                .from(".page_2 .linebar_2", 4, {autoAlpha: 0, yPercent: -100, ease: Back.easeOut}, 0)
                .from(".page_2 .flower", 4, {yPercent: 20, ease: Back.easeOut}, 0)
                .from(".page_2 .info p", 2, {autoAlpha: 0, yPercent: -50, ease: Back.easeOut}, "-=2")
                .to(".page_2 .hearts_1 ,.hearts_2", 2, {
                    scale: 1.5,
                    autoAlpha: 0.8,
                    yoyo: true,
                    repeat: -1,
                    ease: Power2.easeOut
                }, "-=2");

            var tm3 = new TimelineMax()
                .from(".page_3 .bg", 3, {scale: 1.3}, 0)
                .from(".page_3 .info", 3, {scale: 0}, 0);

            var tm4 = new TimelineMax()
                .from(".page_4 .top_pic", 3, {xPercent: -100, ease: Power3.easeOut}, 0)
                .from(".page_4 .bottom_pic", 3, {xPercent: 100, ease: Power3.easeOut}, 0)
                .from(".page_4 .smallBar_1", 3, {width: 0, ease: Back.easeOut}, 0)
                .from(".page_4 .smallBar_2", 3, {width: 0, ease: Back.easeOut}, 0)
                .from(".page_4 .info_t1", 3, {top: '30%', left: '20%'}, 0)
                .from(".page_4 .info_t2", 3, {top: '30%', right: '20%'}, 0);

            var tm5 = new TimelineMax()
                .from(".page_5 .info", 2, {autoAlpha: 0.5, yoyo: true, repeat: -1}, 0);

            var tm6 = new TimelineMax()/*transformOrigin:100% 100% 0*/
                .from(".p6_s1", 1, {top: -100, ease: Bounce.easeOut}, 0)
                .from(".p6_bless", 2, {top: -100, ease: Bounce.easeOut}, 0)
                .from(".p6-info", 2, {top: -100, ease: Bounce.easeOut}, 0)
                .from(".p6_love", 0.8, {autoAlpha: 0, scale: 4, ease: Bounce.easeOut});

            var tm7 = new TimelineMax()
                .from(".p7_s1", 2, {autoAlpha: 0, yPercent: 10}, 0)
                .from("textarea", 2, {autoAlpha: 0, yPercent: 50}, 0)
                .from(".submit", 2, {autoAlpha: 0, yPercent: 100}, 0)
                .from(".call_g", 2, {autoAlpha: 0, yPercent: 100}, 0)
                .from(".call_b", 2, {autoAlpha: 0, yPercent: 100}, 0)
                .from("input", 2, {autoAlpha: 0, yPercent: 100}, 0);

        }
        $(".map").click(function () {
            $("#markBox").toggle();
        })

        //handleFrom
        var name,tel,num,position,text;
        var oName,oTel,oNum,oPosition,oRight;
        var f_name = $('.f_name'),f_phone = $('.f_phone'),f_num = $('.f_num'),f_position = $('.f_position'),f_text = $('.f_text');
        // 表单
        function check() {
            name  = f_name.val();
            oName = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
            tel   = f_phone.val();
            oTel = /^1(3|4|5|7|8)\d{9}$/;
            num = f_num.val();
            oNum =/^[0-9]*$/;
            position   = f_position.val();
            oPosition = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
            text = f_text.val();
            // oText = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
            oRight=0;
            if( oName.test(name) && name!=""            ){ oSuccess(f_name    ); oRight++ }else { oWaring(f_name) }
            if(oTel.test(tel) && tel!=""                ){ oSuccess(f_phone   ); oRight++ }else { oWaring( f_phone ) }
            if(oNum.test(num) && num != ""              ){ oSuccess(f_num     ); oRight++ }else { oWaring(f_num) }
            if(oPosition.test(position) && position !=""){ oSuccess(f_position); oRight++ }else { oWaring(f_position) }
            if(text != ""                               ){ oSuccess(f_text    ); oRight++ }else { oWaring(f_text)}
        }

        function oWaring(obj) { obj.css({'border-color': 'red'}) }
        function oSuccess(obj) { obj.css({'border-color': 'aquamarine'}) }

        $(".submit").click(function () {
            check();
            if(oRight === 5){
                    $.ajax({
                        type: "post",
                        url: "./root/insertApi.php",
                        data: {"f_name":name,"f_phone":tel,"f_num":num,"f_position":position,"f_text":text},
                        success: function (json) {
                            console.log(json)
                            alert("您的信息我们已经收到！")
                            $(".submit").unbind();
                        },
                        error: function (json) {
                            alert('您的信息被外星人劫持，请重新提交吧！')
                        }
                    });
                $(".submit").css({'background-color': 'aquamarine' })
            }
        });
        var bless = false;
        $(".bless").click(function () {
            if (bless == false){
                $.ajax({
                    type: "post",
                    url: "./root/blessApi.php",
                    data: {test:true},
                    success:function (json) {
                        console.log(json);
                        alert("您是第"+json.allRank+"位为我们点赞的亲友！"+"\n"+json.message);
                        bless = true;
                    },
                    error: function (json) {
                        console.log(json)
                        alert("真抱歉，您的操作竟然失败了，请刷新页面再来一次吧！")
                    }
                });
            }else {
                alert("谢谢您，您已经为我们点过赞了！")
            }
        });
        // 音乐
        var isPlay = true;
        var oAudio = $("#oAudio")[0];
        $(".music").click(function () {
            if (isPlay == true  ){
                oAudio.pause();
                isPlay = false ;
                $(".music").removeClass('rotation')}
            else{
                oAudio.play();
                isPlay = true ;
                $(".music").addClass('rotation')
            }
        })
    }
});