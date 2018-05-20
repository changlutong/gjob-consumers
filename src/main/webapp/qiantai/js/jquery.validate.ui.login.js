/**
 * Created by HASEE on 2018/5/20.
 */
$.validator.setDefaults({
    // 完成时候移出的类
    unhighlight: function (element) {
        var errordisplay = $(element).parent("div").next();
        if (errordisplay.length > 0 && errordisplay[0].className == "msg_error") {
            $(element).parent("div").next("div.msg_error").remove();

            if ($(element).get(0).id == "password") {
                $("#passwordtips").show();
            }
        }
    },

    errorPlacement: function (error, element) {
        var errordisplay = $(element).parent("div").next("div.msg_error");
        if (errordisplay.length > 0)
        {
            $(element).parent("div").next("div.msg_error").remove();
        }

        if (error.text()) {
            $(element).parent("div").after("<div style=\"zoom:normal;\" class=\"msg_error\">" + error.html() + "</div>");
            if ($(element).get(0).id == "password"){
                $("#passwordtips").hide();
            }
        }

    }
});