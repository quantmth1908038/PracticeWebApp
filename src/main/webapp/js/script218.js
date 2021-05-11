jQuery(document).ready(function(){


    $(".control_tab li").on("click",function () {

        $(this).siblings('.active').removeClass('active');
        $(this).addClass('active');
        var href = $(this).find('a').attr("href");
        if(href){
            $(href).addClass("active");
            $(href).siblings('.tab.active').removeClass('active');
            return false;
        }else {

            return false;
        }
    });


    $(".accordion>li").click(function(){
        var check = $(this).hasClass("active");
        $(".accordion>li.active").removeClass("active");
        if(!check) {

            $(this).addClass("active");

        } else {

            $(this).removeClass("active");
        }
    })

    $("nav#menu").mmenu({

        "navbars": [
            {
                content		: [ 'prev', 'close' ]
            },
        ]
    });



    $('#backTop').hide();
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('#backTop').fadeIn(100);
        } else {
            $('#backTop').fadeOut();
        }
    });
    $('#backTop').click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 800);
        return false;
    });

    /*menu*/
    // var topH = 100;

    // $(window).scroll(function () {
    // 	if ($(this).scrollTop() > topH) {
    // 		$('.box_menu').addClass("fixed");
    // 	} else {
    // 		$('.box_menu').removeClass("fixed");
    // 	}
    // });

    var menuH = $(".box_menu").height() - 5;
    $(".header");

    $(".clickShow").click(function(){
        $("#comment").addClass("showComment");
    });
    $(".clickHide").click(function(){
        $("#comment").removeClass("showComment");
    });
    /*menu mobile*/
    $("#menuMobile h1").click(function(){
        $(this).next("ul").slideToggle(300)
            .siblings("ul:visible").slideUp(300);
        $(this).toggleClass("active");
        $(this).siblings("h1").removeClass("active");
    });
    $("#menuMobile h2").click(function(){
        $(this).next("ul").slideToggle(300)
            .siblings("ul:visible").slideUp(300);
        $(this).toggleClass("active");
        $(this).siblings("h2").removeClass("active");
    });
    $("#popSlide h6").click(function(){
        $("#popSlide").toggleClass("active");
        $("#popSlide h6").toggleClass("active");
    });


    var owl_post = $('.slider_article').owlCarousel({
        loop:true,
        margin:15,
        items:3,
        nav:false,
        responsive:{
            0:{
                items:1
            },
            480:{
                items:2
            },
            1000:{
                items:3
            }
        }
    })

    $('.placeNav_4.prev').click(function() {
        owl_post.trigger('next.owl.carousel');
        return false;
    })

    $('.placeNav_4.next').click(function() {
        owl_post.trigger('prev.owl.carousel', [300]);
        return false;
    })


    /*
    var ua = navigator.userAgent,
    event = (ua.match(/iPad/i)) ? 'touchstart' : 'click';
    */
    $('[data-image]').each(function() {
        var bg = 'url('+$(this).attr('data-image')+")";
        $(this).css({'background-image': bg});
    });
});
jQuery(document).ready(function(e){
    e(document).on("click",".plus, .minus",function(){
        var t=e(this).closest(".quantity").find(".qty"),n=parseFloat(t.val()),r=parseFloat(t.attr("max")),i=parseFloat(t.attr("min")),s=t.attr("step");
        if(!n||n==""||n=="NaN")n=0;
        if(r==""||r=="NaN")r="";if(i==""||i=="NaN")i=0;
        if(s=="any"||s==""||s==undefined||parseFloat(s)=="NaN")s=1;
        e(this).is(".plus")?r&&(r==n||n>r)?t.val(r):t.val(n+parseFloat(s)):i&&(i==n||n<i)?t.val(i):n>0&&t.val(n-parseFloat(s));
        t.trigger("change")
    });
});
this.sitemapstyler = function(){
    var sitemap = document.getElementById("sitemap")
    if(sitemap){
        this.listItem = function(li){
            if(li.getElementsByTagName("ul").length > 0){
                var ul = li.getElementsByTagName("ul")[0];
                ul.style.display = "none";
                var span = document.createElement("span");
                span.className = "collapsed";
                span.onclick = function(){
                    ul.style.display = (ul.style.display == "none") ? "block" : "none";
                    this.className = (ul.style.display == "none") ? "collapsed" : "expanded";
                };
                li.appendChild(span);
            };
        };
        var items = sitemap.getElementsByTagName("li");
        for(var i=0;i<items.length;i++){
            listItem(items[i]);
        };
    };
};
window.onload = sitemapstyler;