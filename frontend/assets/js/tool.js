// get request
function get(_url, data, _success, _error) {

    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += "item";
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
    
    data_string = "";

    for (item of data) {
        data_string += "/";
        data_string += "item";
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
