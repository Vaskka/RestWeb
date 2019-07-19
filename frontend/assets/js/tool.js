const TEST_HOST = "http://localhost:8080/main";

const MAIN_HOST = "/backend/main";


// get request
function get(_url, data, _success, _error) {

    _url = MAIN_HOST + _url;

    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += item;
    }

    _url += data_string;

    console.log(_url);

    $.ajax({
        url: _url,
        type: "GET",
        success: _success,
        error: _error
    });
}

// post request
function post(_url, data, body, _success, _error) {
    
    _url = MAIN_HOST + _url;

    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += item;
    }

    _url += data_string;

    $.ajax({
        url: _url,
        type: "POST",
        headers:{
            "Content-Type": "application/json; charset=utf-8",
        },
        data: body,
        success: _success,
        error: _error
    });
} 
