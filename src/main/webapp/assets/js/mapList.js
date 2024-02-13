function getPackLocation(){



    $.ajax({
        url: "http://localhost:8080/travelboard/getSpotLocation",
        type: "GET",
        contentType:"application/json",
        dataType: "JSON",
        success: function(obj){
            console.log("spot location data:",obj);
            pack_location_list = obj
        },
        error: function(xhr, status, error){
            console.log("popularity error:",xhr);
            return
        }
    });

}