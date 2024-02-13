function getPackLocation() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "http://localhost:8080/travelboard/getSpotLocation",
            type: "GET",
            contentType: "application/json",
            dataType: "JSON",
            success: function(obj) {
                console.log("spot location data:", obj);
                resolve(obj); // 성공 시 Promise를 해결
            },
            error: function(xhr, status, error) {
                console.log("popularity error:", xhr);
                reject(error); // 에러 시 Promise를 거부
            }
        });
    });
}