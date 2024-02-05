
function photoList(packId){

    console.log(packId)
    let dataValue = {
        "packId" : packId,


    }
    console.log(dataValue)
    $.ajax({
        type : "POST",

        url : "http://localhost:8080/travelboard/getPhotoList",
        data : JSON.stringify(dataValue),
        contentType:"application/json",
        dataType: "json",
        success: function(data) {
            console.log("data",data)

            setPhotoList(data)



        },


        error: function(xhr, textStatus, errorThrown) {
            alert("여행지 불러오기에 실패하였습니다.")
            console.log("XHR status: " + xhr.status);
            console.log("Text status: " + textStatus);
            console.log("Error thrown: " + errorThrown);
            console.log("Response text: " + xhr.responseText);
        }
    });




}




function setPhotoList(data){

    


}