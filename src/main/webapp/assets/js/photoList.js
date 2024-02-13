
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

function getSpotPhotolist(pack_id){
    console.log("pack_id = "+"pack_id");
    console.log("poca_id = "+"photo_id");
    let dataValue = {
        "packId" : pack_id,


    }

    // console.log(tt)
    $.ajax({

        url: "http://localhost:8080/travelboard/getPhotoList",
        type: "post",
        contentType:"application/json",
        async:false,
        data : JSON.stringify(dataValue),
        datatype: "JSON",
        success: function(obj){


            console.log("photoList",obj);

            document.getElementById("pack_title_h2").innerText = obj[0].spot_name

            document.getElementById("total_num").innerText = obj.length
            document.getElementById("end_num").innerText = obj.length
            setPhotoGal(obj)



        },
        error: function(xhr, status, error){
            console.log(`error: ${error}`)
            console.log(`status: ${status}`)
            return
        }
    })
}






function setPhotoList(data, pack_id){

    for(key in data){
        let latitude = data[key]['latitude'];
        let photo_id = data[key]['id'];
        let longitude = data[key]['longitude'];
        let photo_comment = data[key]['photo_comment'];

        let photo_name = data[key]['photo_name'];
        let imgPath = "http://localhost:8080/assets/spot/"+data[key].spot_id+'/Photo/'+data[key].id+'/'+data[key].img_name;
        let photoSpotName = latitude + " " + longitude


        let photo =
            `

                    <li class="label_star">
                        <div class="spot_group">
                            <div class="cotn">
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="${imgPath}" alt="">
                                    </figure>
                                    <span class="num">${data[key]['img_name']}</span>
                                </div>
                                <div class="txt_area">
                                    <p class="tit">${photo_name}</p>
                                    <p class="text">${photo_comment}</p>
                                    <p class="addr"><span class="txt">${photoSpotName}</span></p>
                                </div>
                                
                                <a id="detailLink" href="createPhotoDetail?pack_id=${pack_id}&photo_id=${photo_id}" class="go_view">
							        
							    </a>
                            </div>
                        </div>
                    </li>

            `;
        $(".spot_li").append(photo);
    }


}
function setPhotoGal(poca_list_data){
    let poca_list = document.getElementById("poca_gallary");

    poca_list.innerHTML =``
    poca_list_data.forEach((photo,index,array) => {
        console.log("photo",photo)

        poca_list.innerHTML +=
            `
		<li>
			<div class="pack_item" >
				<!-- 이미지영역 -->
				<div class="img_area" id = "poca_chat_start">
					<figure class="img">

						<img src="http://localhost:8080/assets/spot/${photo.spot_id}/Photo/${photo.id}/${photo.img_name}" >
					</figure>
				</div>

				<a href="#" class="go_view btn_full_pop"  open-pop="spot_pop" onclick="poca_pop(${photo.id})">
					<span class="blind">상세이동</span>
				</a>
			</div>
		</li>


		`
    });



}