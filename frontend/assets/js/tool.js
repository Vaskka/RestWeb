const TEST_HOST = "http://localhost:8080"

const MAIN_HOST = "https://www.vaskka.com/fun"

// get request
function get(_url, data, _success, _error) {

    _url = TEST_HOST + _url;

    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += item;
    }

    _url += data_string;

    $.ajax({
        url: _url,
        type: "GET",
        success: _success,
        error: _error
    });
}

// post request
function post(url, data, body) {
    
    _url = TEST_HOST + _url;

    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += item;
    }

    _url += data_string;

    $.ajax({
        url: _url,
        type: "POST",
        data: body,
        success: _success,
        error: _error
    });
} 
