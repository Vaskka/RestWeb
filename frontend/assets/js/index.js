const TEST_HOST = "http://localhost:8080";

const MAIN_HOST = "https://www.vaskka.com/fun"



data = get(TEST_HOST + "/main/get/main/business", [], function() {
    var data = {
        'name': 'alice',
        'age': 18
    },
    //获取模板
    jsRenderTpl = $.templates('#get-items-template');
    finalTpl = jsRenderTpl(data);

    $('#hot-items').html(finalTpl);
}, function() {})

$('#hot-items').html("<h3>加载中...</h3>");

