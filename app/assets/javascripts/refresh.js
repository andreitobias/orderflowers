$(document).ready(function() {

    setInterval(function() {
        $.ajax({
            type: "GET",
            url: "orders/data" 
        });
    }, 15000);
});