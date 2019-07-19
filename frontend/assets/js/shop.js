let base_url = window.location.href;
let params = base_url.split("#");

if (params.length < 3) {
    window.location.href='login.html';
}

var business_id = params[params.length - 2]
var user_id = params[params.length - 1]

var data = null;

get("/item/all", [business_id], function(_data) {

    data = _data;

    $('#business_name').html(
        $('#get-business-template').render(data.business)
    );

    // 为item添加business_name
    for (item of data.data) {
        item.business_name = data.business.name;
    }



    $('#items').html(
        $('#get-items-template').render(data)
    );

    data.cart = {}

    get("/item/all", [business_id, user_id], function(_data) {
        data.cart.cart_id = _data.cartId;
        data.cart.items = _data.data;

        // 渲染购物车模板
        $('#cart-items').html(
            $('#cart-item').render(data.cart)   
        );

    }, function() {})

}, function() {})


function addIntoCart(_obj) {

    let item_id = $(_obj).attr("item_id");

    let item = search(item_id);

    let base = $('#cart-items').html();

    let final = base +  $('#cart-item-for-add').render({
       id: item_id,
       name: item.name,
       img: item.img,
       price: item.price
    });

    $('#cart-items').html(final);

    get("/add/item", [item_id, data.cart.cart_id], function() {
        console.log("添加购物车成功" + item_id);
    }, function() {
        console.log("添加购物车失败" + item_id);
    });
}


function removeFromCart(_obj) {

    let item_id = $(_obj).attr("item_id");
    console.log(item_id);
    $("#" + "cart-" + item_id).remove();

    get("/cart/remove/item", [data.cart.cart_id, item_id], function() {
        console.log("删除物品成功" + item_id);
    }, function() {
        console.log("删除物品失败" + item_id);
    });
}

function search(item_id) {
    for (item of data.data) {
        if (item.id == item_id) {
            return item;
        }
    }

    return null;
}