/**
 * Created by HASEE on 2018/5/20.
 */
/**
 * Created by hepf on 2016/8/19.
 */
window.captcha = new function () {
    function getCodeSequence() {
        return [10, 17, 14, 8, 1, 9, 4, 2, 3, 12, 19, 15, 11, 13, 6, 0, 5, 7, 16, 18, 35, 26, 37, 34, 22, 30, 29, 33, 23, 27, 24, 31, 39, 32, 38, 21, 20, 36, 28, 25];
    }
    function getCss(elm) {
        return {
            left: $(elm).offset().left - captchaLeft,
            top: $(elm).offset().top - captchaTop,
            width: $(elm).width(),
            height: $(elm).height()
        }
    }
    var nowTime, startTime, coordW, coordH, space, validate,
        wordCount = 3,
        _this = this,
        collectCaptchaData = {},
        cache = {},
        $captchaImgSprites = $("#captcha-img-sprites"),
        $captcha = $("#captcha"),
        $captchaBody = $("#captcha-body"),
        $refresh = $("#captcha-reload"),
        $infoTip = $("#captcha-info"),
        $submitCode = $("#captcha-submitCode"),
        captchaLeft = $captcha.offset().left,
        captchaTop = $captcha.offset().top,
        spritesLeft = $captchaImgSprites.offset().left,
        spritesTop = $captchaImgSprites.offset().top,
        spritesWidth = $captchaImgSprites.width(),
        spritesHeight = $captchaImgSprites.height();

    nowTime = Date.now || function () {
            return +new Date
        },
        startTime = nowTime(),
        this.dataInit = function () {
            $submitCode = $("#captcha-submitCode"),
                captchaLeft = $captcha.offset().left,
                captchaTop = $captcha.offset().top,
                spritesLeft = $captchaImgSprites.offset().left,
                spritesTop = $captchaImgSprites.offset().top,
                spritesWidth = $captchaImgSprites.width(),
                spritesHeight = $captchaImgSprites.height();
            startTime = nowTime(),
                collectCaptchaData = {
                    triggerData: cache.pos,
                    triggerButton: cache.pos,
                    refreshCount: 0,
                    refreshButton: getCss($refresh),
                    submitCodeButton: getCss($submitCode),
                    mousemoveData: [],
                    mouseLeftClickData: [],
                    mouseLeftDownData: [],
                    mouseLeftUpData: [],
                    mouseRightClickData: [],
                    mouseRightDownData: [],
                    mouseRightUpData: [],
                    valuableClickData: [],
                    mouseClickMaxCount: 20,
                    mouseClickCount: 0,
                    validateCount: 0,
                    startTime: startTime,
                    keydownData: [],
                    captchaImage: {
                        top: spritesTop,
                        left: spritesLeft,
                        width: spritesWidth,
                        height: spritesHeight
                    }
                }
        },
        this.dataRefrush = function () {
            startTime = nowTime(),
                collectCaptchaData = {
                    triggerData: cache.pos,
                    triggerButton: cache.pos,
                    refreshCount: collectCaptchaData.refreshCount + 1,
                    refreshButton: getCss($refresh),
                    submitCodeButton: getCss($submitCode),
                    mousemoveData: [],
                    mouseLeftClickData: [],
                    mouseLeftDownData: [],
                    mouseLeftUpData: [],
                    mouseRightClickData: [],
                    mouseRightDownData: [],
                    mouseRightUpData: [],
                    valuableClickData: [],
                    mouseClickMaxCount: 20,
                    mouseClickCount: 0,
                    validateCount: 0,
                    startTime: startTime,
                    keydownData: [],
                    captchaImage: {
                        top: spritesTop,
                        left: spritesLeft,
                        width: spritesWidth,
                        height: spritesHeight
                    }
                }
        },
        startTime = nowTime(),
        this.datacaptchaError = function () {
            startTime = nowTime(),
                collectCaptchaData = {
                    triggerData: cache.pos,
                    triggerButton: cache.pos,
                    refreshCount: 0,
                    refreshButton: getCss($refresh),
                    submitCodeButton: getCss($submitCode),
                    mousemoveData: [],
                    mouseLeftClickData: [cache.submitCode],
                    mouseLeftDownData: [],
                    mouseLeftUpData: [],
                    mouseRightClickData: [],
                    mouseRightDownData: [],
                    mouseRightUpData: [],
                    valuableClickData: [],
                    mouseClickMaxCount: 20,
                    mouseClickCount: 0,
                    validateCount: collectCaptchaData.validateCount + 1,
                    startTime: startTime,
                    keydownData: [],
                    captchaImage: {
                        top: spritesTop,
                        left: spritesLeft,
                        width: spritesWidth,
                        height: spritesHeight
                    }
                }
        },
        this.getImage = function () {
            var src = "/chk/getCap?t" + +new Date;
            _this.bulidSprites(src);
        },
        this.bulidSprites = function (src) {
            var i, len, num, sequence = getCodeSequence(),
                sprites = '<div class="captcha-group">',
                x = 14,
                y = 85, col = 20;
            for (i = 0, len = sequence.length; len > i; i++) num = i >= col ? 1 : 0,
                sprites += "<i data-num=" + i + ' style="background: url(' + src + ") -" + sequence[i] % col * x + "px -" + num * y + "px; top:" + num * y + "px; left:" + i % col * x + 'px;"></i>';
            sprites += "</div>",
                $("#captcha-img-sprites").html(sprites),
                $("#captcha-sm-img").html(sprites)
        },
        coordW = 20,
        coordH = 24,
        space = 20,
        validate = false,
        this.submitCodeEnable = function () {
            $submitCode.removeClass("btn-disabled"),
                this.InitBtnValue(),
                validate = true
        },
        this.submitCodeDisable = function () {
            $submitCode.addClass("btn-disabled"),
                validate = false;
        },
        this.cleanCoordinate = function () {
            $(".captcha-coordinate").remove()
        },
        this.tipInfos = function () {
            $infoTip.html("点击刷新")
        },
        this.tipSelect = function () {
            $infoTip.html("点击刷新")
        },
        this.tipError = function () {
            //$infoTip.html('<b class="captcha-error">验证失败</b>')
            $("#checkCodeCapt").attr("value", "验证失败").css("color", "red");
        },
        this.pageEvents = function (callBack) {
            $captcha.bind("contextmenu",
                function (e) {
                    collectCaptchaData.mouseRightClickData.length < collectCaptchaData.mouseClickMaxCount && collectCaptchaData.mouseRightClickData.push({
                        t: nowTime(),
                        x: e.pageX,
                        y: e.pageY
                    })
                }),
                $captchaImgSprites.bind("click",
                    function (e) {
                        var x, y, t, n, i, len, obj;
                        if (x = e.pageX - captchaLeft, y = e.pageY - captchaTop, t = nowTime(), n = collectCaptchaData.valuableClickData.length + 1, collectCaptchaData.mouseClickCount += 1, collectCaptchaData.mouseLeftClickData.length < collectCaptchaData.mouseClickMaxCount + 1 && collectCaptchaData.mouseLeftClickData.push({
                                t: t,
                                x: x,
                                y: y
                            }), collectCaptchaData.valuableClickData.length >= wordCount) return false;
                        for (i = 0, len = collectCaptchaData.valuableClickData.length; len > i; i++) if (obj = collectCaptchaData.valuableClickData[i], Math.abs(obj.x - x) < space && Math.abs(obj.y - y) < space) return false;
                        _this.tipSelect(),
                            $('<b class="captcha-coordinate">' + n + "</b>").css({
                                left: e.pageX - spritesLeft - .5 * coordW,
                                top: e.pageY - spritesTop - .5 * coordH
                            }).bind("click",
                                function (e) {
                                    e.stopPropagation();
                                    var num = $(this).html() - 1;
                                    return $(".captcha-coordinate").slice(num).remove(),
                                        collectCaptchaData.valuableClickData = collectCaptchaData.valuableClickData.slice(0, num),
                                    0 === num && (_this.tipInfos(), _this.submitCodeDisable()),
                                        false
                                }).appendTo($captchaBody),
                            collectCaptchaData.valuableClickData.push({
                                t: t,
                                x: x,
                                y: y
                            }),
                        collectCaptchaData.valuableClickData.length > 0 && _this.submitCodeEnable()
                    }).bind("mousedown",
                    function (e) {
                        if (collectCaptchaData.mouseLeftDownData.length < collectCaptchaData.mouseClickMaxCount) {
                            var x = e.pageX - captchaLeft,
                                y = e.pageY - captchaTop,
                                t = nowTime();
                            collectCaptchaData.mouseLeftDownData.push({
                                t: t,
                                x: x,
                                y: y
                            })
                        }
                    }).bind("mouseup",
                    function (e) {
                        if (collectCaptchaData.mouseLeftUpData.length < collectCaptchaData.mouseClickMaxCount) {
                            var x = e.pageX - captchaLeft,
                                y = e.pageY - captchaTop,
                                t = nowTime();
                            collectCaptchaData.mouseLeftUpData.push({
                                t: t,
                                x: x,
                                y: y
                            })
                        }
                    }).bind("mousemove",
                    function (e) {
                        if (collectCaptchaData.mousemoveData.length < collectCaptchaData.mouseClickMaxCount && nowTime() - startTime >= 1e3) {
                            var x = e.pageX - captchaLeft,
                                y = e.pageY - captchaTop,
                                t = nowTime();
                            startTime = t,
                                collectCaptchaData.mousemoveData.push({
                                    t: t,
                                    x: x,
                                    y: y
                                })
                        }
                    }),
                $(document).bind("keyup",
                    function (e) {
                        collectCaptchaData.keydownData.length < collectCaptchaData.mouseClickMaxCount && collectCaptchaData.keydownData.push({
                            t: nowTime(),
                            k: e.keyCode
                        })
                    }),
                $refresh.bind("click",
                    function (e) {
                        var x = e.pageX - captchaLeft,
                            y = e.pageY - captchaTop,
                            t = nowTime();
                        _this.refresh(),
                            collectCaptchaData.mouseLeftClickData.push({
                                t: t,
                                x: x,
                                y: y
                            })
                    }),
                $infoTip.bind("click",
                    function (e) {
                        var x = e.pageX - captchaLeft,
                            y = e.pageY - captchaTop,
                            t = nowTime();
                        _this.refresh(),
                            collectCaptchaData.mouseLeftClickData.push({
                                t: t,
                                x: x,
                                y: y
                            })
                    }),
                $submitCode.bind("click",
                    function (e) {
                        var x = e.pageX - captchaLeft,
                            y = e.pageY - captchaTop,
                            t = nowTime();
                        collectCaptchaData.mouseClickCount += 1,
                            cache.submitCode = {
                                t: t,
                                x: x,
                                y: y
                            },
                        collectCaptchaData.mouseLeftUpData.length < collectCaptchaData.mouseClickMaxCount && (collectCaptchaData.mouseLeftDownData.push({
                            t: t,
                            x: x,
                            y: y
                        }), collectCaptchaData.mouseLeftUpData.push({
                            t: t,
                            x: x,
                            y: y
                        })),
                        collectCaptchaData.mouseLeftClickData.length < collectCaptchaData.mouseClickMaxCount + 1 && collectCaptchaData.mouseLeftClickData.push({
                            t: t,
                            x: x,
                            y: y
                        }),
                            _this.submitCode(callBack)
                    })
        },
        this.initialize = function (callBack) {
            $("#captcha").bind("click", function () {
                return false
            }),
                //    $(window).bind("beforeunload", function () {

                //    }),
                this.tipInfos(),
                this.getImage(),
                this.dataInit(),
                this.pageEvents(callBack)
        },
        this.refresh = function () {
            this.tipInfos(),
                this.submitCodeDisable(),
                this.cleanCoordinate(),
                this.dataRefrush(),
                this.getImage(),
                this.InitBtnValue()
        },
        this.refreshNochangevalue = function () {
            this.tipInfos(),
                this.submitCodeDisable(),
                this.cleanCoordinate(),
                this.dataRefrush(),
                this.getImage()
        },
        this.error = function () {
            this.tipError(),
                this.submitCodeDisable(),
                this.cleanCoordinate(),
                this.datacaptchaError(),
                this.getImage()
        },
        this.submitCode = function (callBack) {
            var pData, data, i, len;
            if (!validate) return false;
            _this.submitCodeDisable();

            for (pData = [], data = collectCaptchaData.valuableClickData, i = 0, len = data.length; len > i; i++) {
                pData.push((parseInt(data[i].x) - 10) + "," + (parseInt(data[i].y) - 60));
            }
            $.ajax({
                url: "/chk/verify",
                type: "post",
                dataType: 'jsonp',
                jsonp: "callback",
                jsonpCallback: "jsonpCallback",
                cache: false,
                headers: {
                    "X-Requested-With": "XMLHttpRequest"
                },
                data: {
                    p: pData.join(";"),
                    time: collectCaptchaData.startTime
                },
                success: function (res) {
                    if (typeof callBack == "function") {
                        callBack(res);
                    } else {
                        alert("没有回调函数：" + res);
                    }
                }
            })
        },
        this.InitBtnValue = function () {
            $("#checkCodeCapt").attr("value", "正在验证").css("color", "black");
        }
};