 $(function () {
            $("#ctl00_content_pwd1").keypress(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                if (pwd1.length >= 5 && pwd1.length < 9) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").removeClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');
                }
                if (pwd1.length >= 9 && pwd1.length < 12) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").addClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');

                }
                if (pwd1.length >= 12 && pwd1.length < 20) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").addClass('mb_red-color');
                    $("#strong").addClass('mb_red-color');
                }
                
            });

            $("#ctl00_content_pwd1").blur(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                if (pwd1.length < 5 || pwd1.length > 20) {
                    $("#txtshow").text("密码长度不正确！");
                    $("#rou").removeClass('mb_red-color');
                    $("#zhong").removeClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');
                    $("#ctl00_content_pwd1").val("");
                    $("#showr").show();
                    $("#show_wrong").show();
                    return false;
                } else {
                    $("#showr").hide();
                    $("#show_wrong").hide();
                }
            });
            $("#ctl00_content_pwd2").blur(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                var pwd2 = $("#ctl00_content_pwd2").val();
                if (pwd1 != pwd2) {
                    $("#txtwrong").text("两次密码输入不一致！");
                    $("#ctl00_content_pwd2").val("");
                    $(".againpwd").show();
                    return false;
                } else {
                    $(".againpwd").hide();
                }
            });
        });

        function check() {
            var pwd = $("#ctl00_content_pwd").val();
            var pwd1 = $("#ctl00_content_pwd1").val();
            var pwd2 = $("#ctl00_content_pwd2").val();
            if (pwd=="") {
                alert("请输入原始密码！");
                return false;
            }
            if (pwd1 == "" || pwd2 == "") {
                $("#txtwrong").text("请输入密码！");
                $(".againpwd").show();
                return false;
            }
    
            if (pwd1 != pwd2) {

                $("#txtwrong").text("两次密码输入不一致！");
                $(".againpwd").show();
                return false;
            }
        }