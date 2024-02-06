
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

            setPhotoList(data,packId)



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




function setPhotoList(data, pack_id){

    for(key in data){
        let latitude = data[key]['latitude'];
        let photo_id = data[key]['id'];
        let longitude = data[key]['longitude'];
        let photo_comment = data[key]['photo_comment'];

        let photo_name = data[key]['photo_name'];
        let imgPath = "../assets/image/temp/"+data[key].img_name+".png";
        let photoSpotName = latitude + " " + longitude


        let photo =
            `

                    <li class="label_star">
                        <div class="spot_group">
                            <div class="cotn">
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_06.jpg" alt="">
                                    </figure>
                                    <span class="num">${data[key]['img_name']}</span>
                                </div>
                                <div class="txt_area">
                                    <p class="tit">${photo_name}</p>
                                    <p class="text">${photo_comment}</p>
                                    <p class="addr"><span class="txt">${photoSpotName}</span></p>
                                </div>
                                
                                <a id="detailLink" href="createPhotoDetail?pack_id=${pack_id}?photo_id=${photo_id}" class="go_view">
							        
							    </a>
                            </div>
                        </div>
                    </li>

            `;
        $(".spot_li").append(photo);
    }


}