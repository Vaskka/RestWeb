let base_url = window.location.href;
let params = base_url.split("#");

if (params.length < 3) {
    window.location.href='login.html';
}

var business_id = params[params.length - 1].replace("business_id=", "")
var user_id = params[params.length - 2].replace("business_id=", "")

var data = null;

get("/main/item/all", [business_id], function(_data) {

    data = _data;

    $('#business_name').html(
        $('#get-business-template').render({shop_name: data.data.name})
    );

    // 为item添加business_name
    for (item of data.items) {
        item.business_name = data.data.name;
    }

    console.log(data);

    $('#items').html(
        $('#get-items-template').render(data)
    );

}, function() {})


