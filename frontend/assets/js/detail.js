let base_url = window.location.href;
let params = base_url.split("#");

if (params.length < 4) {
    window.location.href='login.html';
}

var user_id = params[params.length - 3];
var order_id = params[params.length - 1];
var business_name = params[params.length - 2];

var data = null;

get("/order/detail", [order_id], function(_data) {
    data = _data;
    console.log(data);

    // 头部

    $('#business_head').html(
        $('#business_content').render({bn: decodeURI(business_name)})
    );

    $('#info').html(
        $('#info_template').render(data.data)
    );

    $('#items').html(
        $('#item-template').render(data.data)   
    );

    get("/order/comment/get", [order_id], function(_data) {
        console.log(_data);
        $('#reviews').html(
            $('#review-template').render(_data)   
        );
    })


}, function(_data) {})

function goback() {
    window.location.href = "index.html" + "#" + user_id;
}

function submit() {
    console.log("ok")
    let content = $("#review_content").val();

    get("/order/comment/create", [order_id, user_id, content], function() {
        alert("发布成功");
    }, function() {
        alert("发布失败");
    })
}