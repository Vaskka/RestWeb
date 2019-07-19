var showTag = true;

$(function() {

   $(".input input").focus(function() {

      $(this).parent(".input").each(function() {
         $("label", this).css({
            "line-height": "18px",
            "font-size": "18px",
            "font-weight": "100",
            "top": "0px"
         })
         $(".spin", this).css({
            "width": "100%"
         })
      });
   }).blur(function() {
      $(".spin").css({
         "width": "0px"
      })
      if ($(this).val() == "") {
         $(this).parent(".input").each(function() {
            $("label", this).css({
               "line-height": "60px",
               "font-size": "24px",
               "font-weight": "300",
               "top": "10px"
            })
         });

      }
   });

   $(".button").click(function(e) {
      var pX = e.pageX,
         pY = e.pageY,
         oX = parseInt($(this).offset().left),
         oY = parseInt($(this).offset().top);

      $(this).append('<span class="click-efect x-' + oX + ' y-' + oY + '" style="margin-left:' + (pX - oX) + 'px;margin-top:' + (pY - oY) + 'px;"></span>')
      $('.x-' + oX + '.y-' + oY + '').animate({
         "width": "500px",
         "height": "500px",
         "top": "-250px",
         "left": "-250px",

      }, 600);
      $("button", this).addClass('active');
   })

   $(".shape").click(function() {
         if (showTag) {
            $(".box").css("opacity", 0);
            $(".overbox").css("opacity", 1);
            $(".overbox").css("background-color", "#AAAAAA");


         }
         else {
            $(".box").css("opacity", 1);
            $(".overbox").css("opacity", 0);



         }
         showTag = !showTag;
   });

});

function login() {
   let phone = document.getElementById("phone").value;
   let password = document.getElementById("password").value;

   get("/user/login", [phone, password], function (data) {

      if (data.code == 0) {
         window.location.href = "index.html#" + data.user_id;
      }
      else {
         alert("手机号码或密码错误");
      }

   }, function(data) {
      console.log("error");
   });

}


function register() {
   let phone = document.getElementById("regphone").value;
   let password = document.getElementById("regpasswordpass").value;
   let name = document.getElementById("regname").value;
   let repassword = document.getElementById("reregpassword").value;

   get("/user/register", [phone, name, password, repassword, 0], function (data) {

      if (data.code == 0) {
         window.location.href = "index.html#" + data.user_id;
      }
      else {
         alert("确认密码有误");
      }

   }, function(data) {
      console.log("error");
   });

}