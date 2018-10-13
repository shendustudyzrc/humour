window.onload = function() {
    var m1 = document.getElementById("password1");
    var m2 = document.getElementById("password2");

    m2.onblur = function() {
        if (m1.value != m2.value) {
            alert("两次密码不同，请重新输入");
        }
    }


    var m3 = document.getElementById("password3");
    var m4 = document.getElementById("password4");

    m4.onblur = function() {
        if (m3.value != m4.value) {
            alert("两次密码不同，请重新输入");
        }
    }
}