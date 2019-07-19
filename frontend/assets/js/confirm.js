let base_url = window.location.href;
let params = base_url.split("#");

if (params.length < 5) {
    window.location.href='login.html';
}

var user_id = params[params.length - 4];
var business_id = params[params.length - 3];
var cart_id = params[params.length - 2];
var business_name = params[params.length - 1];

var data = null;

var s_coupon = null;
var s_address = null;


get("/post/order", [cart_id], function(_data) {

    console.log(_data);

    data = _data;

    $('#business_head').html(
        $('#business_content').render({bn: decodeURI(business_name)})
    );


    $('#items').html(
        $('#item-template').render(data.data)   
    );

    
    $('#sum_price').html(
        $('#price').render(data.data)   
    );


    get("/info/coupon", [business_id, user_id], function(_data) {
        data.coupon = _data;

        $('#coupons').html(
            $('#coupon-template').render(_data)   
        );

        $('#coupons').selectpicker('refresh'); 
    
    }, function() {});

    get("/info/address", [user_id], function(_data) {
        data.address = _data;

        $('#addresses').html(
            $('#address-template').render(_data)   
        );

        $('#addresses').selectpicker('refresh'); 
    
    }, function() {});


}, function(data) {})


function clickCoupon(obj) {
    console.log("ok");
    let id = $(obj).attr('id');

    let down_price = fromIdGetPrice(id);

    let now_price = $("#inner-sum-price").text() - down_price;

    if (now_price < 0) {
        now_price = 0;
    }

    $("#inner-sum-price").val(now_price);
}


function fromIdGetPrice(id) {
    for (item of data.coupon) {
        if (item.id == id) {
            return item.price;
        }
    }

    return 0;
}

function submit() {
    let coupon = $("#coupons option:selected").val();
    let address = $("#addresses option:selected").val();

    if (address == null) {
        alert("请输入地址");
        return;
    }

    get("/trans", [data.data.orderId], function() {
        
    }, function() {});
}