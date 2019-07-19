let base_url = window.location.href;
let params = base_url.split("#");

var user_id = null;

if (params.length > 1) {
    user_id = params[params.length - 1];
}
else {
    window.location.href = "login.html";
}


get("/get/main/business", [], function(_data) {

    for (item of _data.data) {
        item.user_id = user_id;
    }

    console.log(_data);


    $('#hot-items').html(
        $('#get-items-template').render(_data)
    );
}, function() {})

$('#hot-items').html("<h3>加载中...</h3>");

