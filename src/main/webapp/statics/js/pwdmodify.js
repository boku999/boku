var oldpassword = null;
var upwd = null;
var rupwd = null;
var saveBtn = null;

$(function () {
    oldpassword = $("#oldpassword");
    upwd = $("#upwd");
    rupwd = $("#rupwd");
    saveBtn = $("#save");


    oldpassword.next().html("*");
    upwd.next().html("*");
    rupwd.next().html("*");






    rupwd.on("focus", function () {
        validateTip(rupwd.next(), {"color": "#666666"}, "* 请输入与上面一致的密码", false);
    }).on("blur", function () {
        if (rupwd.val() != null && rupwd.val().length > 2
            && rupwd.val().length < 20 && upwd.val() == rupwd.val()) {
            validateTip(rupwd.next(), {"color": "green"}, imgYes, true);
        } else {
            validateTip(rupwd.next(), {"color": "red"}, imgNo + " 两次密码输入不一致，请重新输入", false);
        }
    });


    saveBtn.on("click", function () {
        oldpassword.blur();
        upwd.blur();
        rupwd.blur();
        if (oldpassword.attr("validateStatus") == "true"
            && upwd.attr("validateStatus") == "true"
            && rupwd.attr("validateStatus") == "true") {
            if (confirm("确定要修改密码？")) {
                $("#userForm").submit();
            }
        }

    });
});