  //市数据加载事件
        var CityDataLoadEvent = function () { };
        var DistrictDataLoadEvent = function () { };
        $(function () {
            //省下拉框ID
            var province = "#province";
            var city = "#city";
            var district = "#district";
            //加载省信息
//            $.get("/nAPI/AddressInfo.ashx?action=province", function (data) {
//                $(data).each(function () {
//                    bindDdlData(province, this);
//                });
//                var str = "";
//                setAddress(str);
//            });
            //省下拉框onchange事件
            $(province).change(function () {
                var dataLoad = function (data) {
                    $(city + " option:not(:first)").remove();
                    $(data).each(function () {
                        bindDdlData(city, this);
                    });
                    CityDataLoadEvent();
                };

                $.get("/nAPI/AddressInfo.ashx?action=city&code=" + $(this).val(), function (data) {
                    dataLoad(data);

                });
            });
            //市下拉框onchange事件
            $(city).change(function () {
                var dataLoad = function (data) {
                    $(district + " option:not(:first)").remove();
                    $(data).each(function () {
                        bindDdlData(district, this);
                    });
                    DistrictDataLoadEvent();
                };

                $.get("/nAPI/AddressInfo.ashx?action=district&code=" + $(this).val(), function (data) {
                    dataLoad(data);

                });

            });

            $("#nicname").focus(function () {
                $("#shrid").hide();
                $("#shry").hide();
            });
            $("#telephone").focus(function () {
                $("#zjid").hide();
                $("#zjy").hide();
            });
            $("#mobile").focus(function () {
                $("#sjid").hide();
                $("#sjy").hide();
            });
            $("#postcode").focus(function () {
                $("#postid").hide();
                $("#posty").hide();
            });
            $("#realName").focus(function () {
                $("#realId").hide();
                $("#realy").hide();
            });
            $("#street").focus(function () {
                $("#streid").hide();
                $("#strey").hide();
            });

            var temail = $("#sp_email").html();
            if (temail == "") {
                $("#div_email").show();
            }
            else {
                $("#div_email").hide();
            }

            $("#txtEmail").blur(function () {
                var nickname = $("#txtEmail").val();
                if (nickname == "") {
                    $("#shrwrong1").show();
                    $("#shrwrong1").text("请输入邮箱！");
                    $("#shrid1").show();
                    $("#shry1").hide();
                    return false;
                } else {
                    $("#shrwrong1").hide();
                    $("#shrid1").hide();
                    $("#shry1").show();
                }
            });

            $("#nicname").blur(function () {
                var nickname = $("#nicname").val();
                if (nickname == "") {
                    $("#shrwrong").text("请输入昵称！");
                    $("#shrid").show();
                    return false;
                } else {
                    $("#shry").show();

                }
            });

            function isEmail(strEmail) {
                if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                    return true;
                else {
                    return false;
                }
            }

            $("#mobile").blur(function () {
                var tel = $("#mobile").val();
                if (tel == "") {
                    $("#sjwrong").text("请输入手机号！");
                    $("#sjid").show();
                    return false;
                } else {
                    if (!checkTel(tel)) {
                        $("#sjwrong").text("手机号格式不正确！");
                        $("#sjid").show();
                    } else {
                        $("#sjy").show();
                    }


                }
            });
            $("#postcode").blur(function () {
                var post = $("#postcode").val();
                if (!checkcode(post)) {
                    $("#postwrong").text("请输入正确的邮编！");
                    $("#postid").show();
                    return false;
                } else {
                    $("#posty").show();

                }
            });
            $("#street").blur(function () {
                var stree = $("#street").val();
                if (stree == "") {
                    $("#strewrong").text("请输入内容！");
                    $("#streid").show();
                    $("#strey").hide();
                    return false;
                }
                if (stree.length > 250) {
                    $("#strewrong").text("输入内容过长！");
                    $("#streid").show();
                    $("#strey").hide();
                } else {
                    $("#strey").show();
                }
            });
            $("#realName").blur(function () {
                var realName = $("#realName").val();
                if (realName == "") {
                    $("#realwrong").text("请输入姓名！");
                    $("#realId").show();
                    return false;
                } else {
                    $("#realy").show();

                }
            });
            $("#btnsave").click(function () {
                var email = $("#sp_email").html();
                var IsUpemail = "0";
                if (email == "") {
                    email = $("#txtEmail").val();
                    if (!isEmail($("#txtEmail").val())) {
                        alert("邮箱不正确!");
                        return false;
                    }
                    var IsUpemail = "1";
                }
                var realName = $("#realName").val();
                var gender = $("input:checked").val();
                var year = $("#selYear option:selected").text();
                var month = $("#selMonth option:selected").text();
                var day = $("#selDay option:selected").text();
                var pro = $("#province option:selected").text();
                var city = $("#city option:selected").text();
                var district = $("#district option:selected").text();
                var address = $("#street").val();
                var post = $("#postcode").val();
                var tel = $("#mobile").val();
                var photo = $("#telephone").val();
                var nickname = $("#nicname").val();

                if (email == "") {
                    $("#shrwrong1").text("请输入邮箱！");
                    $("#shrid1").show();
                    return false;
                }
                else {
                    $("#shry1").show();
                }

                if (nickname == "") {
                    $("#shrwrong").text("请输入昵称！");
                    $("#shrid").show();
                    return false;
                } else {
                    $("#shry").show();

                }
                if (realName == "") {
                    $("#realwrong").text("请输入姓名！");
                    $("#realId").show();
                    return false;
                } else {
                    $("#realy").show();

                }
                if (!checkcode(post)) {
                    $("#postwrong").text("请输入正确的邮编！");
                    $("#postid").show();
                    return false;
                } else {
                    $("#postid").hide();
                    $("#posty").show();

                }
                if (address == "") {
                    $("#strewrong").text("请输入内容！");
                    $("#streid").show();
                    return false;
                }
                if (district == "请选择区县") {
                    $("#strewrong").text("请选择区县！");
                    $("#strey").hide();
                    $("#streid").show();
                    return false;
                }
                if (address.length > 250) {
                    $("#strewrong").text("输入内容过长！");
                    $("#streid").show();
                    return false;
                } else {
                    $("#strey").show();
                }
                if (tel == "") {
                    $("#sjwrong").text("请输入手机号！");
                    $("#sjid").show();
                    return false;
                } else {
                    if (!checkTel(tel)) {
                        $("#sjwrong").text("手机号格式不正确！");
                        $("#sjid").show();
                    } else {
                        $("#sjy").show();
                    }
                }

                $.post("/API/MemberAPI.ashx", {
                    action: 'update',
                    email: email,
                    IsUpemail: IsUpemail,
                    nickname: nickname,
                    realName: realName,
                    gender: gender,
                    year: year,
                    month: month,
                    day: day,
                    pro: pro,
                    city: city,
                    dis: district,
                    address: address,
                    post: post,
                    tel: tel,
                    photo: photo
                }, function (data) {
                    if (data == "ok") {
                        alert("保存成功！");
                        window.location.reload();
                        return false;
                    }
                    if (data == "false") {
                        alert("保存失败！");
                        return false;
                    }
                    if (data == "repeat") {
                        alert("手机号已注册过!");
                        return false;
                    }
                    if (data == "erepeat") {
                        alert("邮箱已注册过!");
                        return false;
                    }
                });
            });


        });

        function bindDdlData(cid, data) {
            $(cid).append($("<option value=\"" + data.code + "\">" + data.name + "</option>"));
        }
        CityDataLoadEvent = function () {
            $("#city option").each(function () {
                if (data.city.indexOf($(this).text()) != -1) {
                    $("#city").val($(this).val());
                    $("#city").change();
                }
            });
        };
        DistrictDataLoadEvent = function () {
            $("#district option").each(function () {
                if (data.city.indexOf($(this).text()) != -1) {
                    $("#district").val($(this).val());
                }
            });
        };





        $(function () {
            var selYear = window.document.getElementById("selYear");
            var selMonth = window.document.getElementById("selMonth");
            var selDay = window.document.getElementById("selDay");
            // 新建一个DateSelector类的实例，将三个select对象传进去
            var date = '';
            var year = '';
            var mon = '';
            var day = '';
            if (date != '') {
                var d = date.split("-");
                year = d[0];
                mon = d[1];
                day = d[2];
            } else {
                year = 2014;
                mon = 12;
                day = 12;
            }

            new DateSelector(selYear, selMonth, selDay, year, mon, day);
        });
        function setAddress(data) {
          
            $("#province option").each(function () {
                if (data.indexOf($(this).text()) != -1) {
                    $("#province").val($(this).val());
                    $("#province").change();
                }
            });
            CityDataLoadEvent = function () {
                $("#city option").each(function () {
                    if (data.indexOf($(this).text()) != -1) {
                        $("#city").val($(this).val());
                        $("#city").change();
                    }
                });
            };
            DistrictDataLoadEvent = function () {
                $("#district option").each(function () {
                    if (data.indexOf($(this).text()) != -1) {
                        $("#district").val($(this).val());
                        var address = "";
                       $("#street").val(address.substr(address.lastIndexOf($(this).text())).replace($(this).text(),""));
                    }
                });
            };
        }
        //
        function checkTel(tel) {
            var mobile = /^1[3-8]+\d{9}$/;
            return mobile.test(tel);
        }
        //
        function checkcode(zipcode) {
            var MyNumber = /^[0-9]{1}[0-9]{5}$/;
            return MyNumber.test(zipcode);

        }
        function checkphone(tel) {
            var mobile = /^(\d{3,4}-?)?\d{7,9}$/;
            return mobile.test(tel);
        }