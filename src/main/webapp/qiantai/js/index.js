/**
 * Created by HASEE on 2018/5/15.
 */
$(function(){
    /*$('.cont_left .n').mouseenter(function(){
     $(this).each(function(i){
     $('.cont_left .s1').css('background-position','0px '+-38*i+'px')
     })
     })*/
    /*杩欎唬鐮佸啓鐨勬垜鑷繁閮界湅涓嶄笅鍘汇€傘€備絾鎴戝張涓嶇煡閬撴€庝箞鍐�*/

    $('.c2>table td:nth-child(1)').css('width','27%')
    $('.c2>table td:nth-child(2)').css('width','30%')
    $('.c2>table td:nth-child(3)').css('width','20%').css('text-align','center')
    $('.c2>table td:nth-child(4)').css('width','23%')

    $n1=$('.cont_left .n1')
    $n2=$('.cont_left .n2')
    $n3=$('.cont_left .n3')
    $n4=$('.cont_left .n4')
    $n5=$('.cont_left .n5')
    $n6=$('.cont_left .n6')
    $s1=$('.cont_left .s1')

    $n1.mouseenter(function(){
        $s1.css('background-position','0px 0px')
        $('.l1').css('display','block').siblings().css('display','none')
    })

    $n2.mouseenter(function(){
        $s1.css('background-position','0px -38px')
        $('.l2').css('display','block').siblings().css('display','none')
    })

    $n3.mouseenter(function(){
        $s1.css('background-position','0px -76px')
        $('.l3').css('display','block').siblings().css('display','none')
    })

    $n4.mouseenter(function(){
        $s1.css('background-position','0px -114px')
        $('.l4').css('display','block').siblings().css('display','none')
    })

    $n5.mouseenter(function(){
        $s1.css('background-position','0px -152px')
        $('.l5').css('display','block').siblings().css('display','none')
    })

    $n6.mouseenter(function(){
        $s1.css('background-position','0px -190px')
        $('.l6').css('display','block').siblings().css('display','none')
    })


    $('.c2 tr').mouseenter(function(){
        $(this).css('color','#fea13f')
    }).mouseout(function(){
        $(this).css('color','#fff')
    })

    $('.detailcontent td').mouseenter(function(){
        $(this).css('color','#fea13f')
    }).mouseout(function(){
        $(this).css('color','#000')
    })

    $('.close').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','none')
        $('.wincontent .c').css('display','none')
    })
    $('.detailcontent td').css('color','#000')
    // 鎺у埗鍖哄煙
    $('.s2 .l1 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b1 .c').eq(a).css('display','block')
    })
    $('.s2 .l1 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b1 .c').eq(a+4).css('display','block')
    })

    $('.s2 .l2 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b2 .c').eq(a).css('display','block')
    })
    $('.s2 .l2 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b2 .c').eq(a+4).css('display','block')
    })

    $('.s2 .l3 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b3 .c').eq(a).css('display','block')
    })
    $('.s2 .l3 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b3 .c').eq(a+4).css('display','block')
    })

    $('.s2 .l4 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b4 .c').eq(a).css('display','block')
    })
    $('.s2 .l4 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b4 .c').eq(a+4).css('display','block')
    })

    $('.s2 .l5 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b5 .c').eq(a).css('display','block')
    })

    $('.s2 .l5 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b5 .c').eq(a+4).css('display','block')
    })

    $('.s2 .l6 .a1 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b6 .c').eq(a).css('display','block')
    })

    $('.s2 .l6 .a2 .comm').click(function(){
        var a=$(this).index()
        $('.wincontent').css('display','block')
        $('.wincontent .b6 .c').eq(a+4).css('display','block')
    })

    $('.c2 tr,.detailcontent td,.btn').click(function(){
        $('.finalwin').css('display','block')
        $('.wincontent .c').css('display','none')
    })

    $('.finalwin .close').click(function(){
        $('.wincontent .c').css('display','none')
        $('.finalwin').css('display','none')
    })

    /*	$('.wincontent .b1 .c').css('background-image',function(index,element){
     return 'url(img/1.'+ 1 +'.jpg)'
     })*/
    //鍔犺浇姘村嵃
    $('.wincontent .b1 .c').each(function(index){
        var num=$(this).index()
        $('.preload').append(function(){
            return '<div class="1 imgload"></div>'
        })

        $(this).css('background-image',function(){
            return 'url(img/1.'+ parseInt(index+1) +'.jpg)'
        })
    })
    //preload
    $('.1').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/1.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.wincontent .b2 .c').each(function(index){
        var num=$(this).index(index)
        $('.preload').append(function(){
            return '<div class="2 imgload"></div>'
        })
        $(this).css('background-image',function(){
            return 'url(img/2.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.2').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/2.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.wincontent .b3 .c').each(function(index){
        var num=$(this).index()
        $('.preload').append(function(){
            return '<div class="3 imgload"></div>'
        })
        $(this).css('background-image',function(){
            return 'url(img/3.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.3').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/3.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.wincontent .b4 .c').each(function(index){
        var num=$(this).index()
        $('.preload').append(function(){
            return '<div class="4 imgload"></div>'
        })
        $(this).css('background-image',function(){
            return 'url(img/4.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.4').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/4.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.wincontent .b5 .c').each(function(index){
        var num=$(this).index()
        $('.preload').append(function(){
            return '<div class="5 imgload"></div>'
        })
        $(this).css('background-image',function(){
            return 'url(img/5.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.5').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/5.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.wincontent .b6 .c').each(function(index){
        var num=$(this).index()
        $('.preload').append(function(){
            return '<div class="6 imgload"></div>'
        })
        $(this).css('background-image',function(){
            return 'url(img/6.'+ parseInt(index+1) +'.jpg)'
        })
    })

    $('.6').each(function(index){
        $(this).css('background-image',function(){
            return 'url(img/6.'+ parseInt(index+1) +'.jpg)'
        })
    })
})