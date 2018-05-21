/**
 * Created by HASEE on 2018/5/20.
 */
!function() {
    // 登录切换
    var timer = '';
    $(".login-switch span").click(function() {
        var index = $(this).index();
        $(this).hide().siblings('span').show();
        $(".content-body >div").eq(index).hide().siblings('div').show();
        if (index == 0) {
            timer = setInterval(scanCodeLogin, 2000);
        } else {
            clearInterval(timer);
        }
    });
    // 扫码登录

    function scanCodeLogin() {
        var param = getUrlParam('bkul');
        param = encodeURI(param);
        $.ajax({
            url : "checkQrCodeKeyLoginResult",
            type : "POST",
            data : {
                bkul : param
            },
            dataType : 'json',
            success : function(res) {
                if (res.code == 200) { // 登录成功
                    window.location.href = res.data.redirect;
                    clearInterval(timer);
                } else if (res.code == 201) {
                    $(".code-img >img").hide();
                    $(".login-success").show();
                    $(".open-tip").hide();
                } else if (res.code == 501 || res.code == 502) { // 刷新二维码
                    $(".login-code").hide();
                    $(".refresh-code").show();
                    $(".open-tip").html('二维码失效,点击刷新').addClass('error-tip');
                    refreshCode();
                }
            }
        })
    }

    // 刷新二维码
    function refreshCode() {
        $(".refresh-code").click(
            function() {
                var timeStamp = new Date().getTime();
                $(this).hide();
                var imgSrc = 'checkCode/imgQrCode?time='
                    + timeStamp;
                $(".login-code").attr('src', imgSrc);
                $(".login-code").show();
            })
    }
    // 出现扫码提示
    function scanCodeTip() {
        $(".login-code").hover(function() {
            $(".scancode-tip").show();
        }, function() {
            $(".scancode-tip").hide();
        })
    }
    scanCodeTip()
    // 获取url中的参数
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); // 构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg); // 匹配目标参数
        if (r != null)
            return unescape(r[2]);
        return null; // 返回参数值
    }
}()