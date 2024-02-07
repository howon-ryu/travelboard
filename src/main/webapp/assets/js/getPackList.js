
console.log("home_init js")
///////////////////// API /////////////////////


function getMyPack(){
	let userTableId = getCookieValue("id")
	console.log("mu pack userTableId",userTableId)
	$.ajax({
		url: "http://localhost:8080/travelboard/mySpotFindAll",
		type: "POST",
		data: JSON.stringify({ "id": userTableId }),
		contentType:"application/json",
		dataType: "JSON",
		success: function(obj){
			console.log("news pot data:",obj);
			myPackList(obj);
		},
		error: function(xhr, status, error){
			console.log("orderbyupdate error:",xhr);
			return
		}
	});
}

function getMyPickPack(){
	let userTableId = getCookieValue("id")
	console.log("mu pack userTableId",userTableId)
	$.ajax({
		url: "http://localhost:8080/travelboard/myPickSpotFindAll",
		type: "POST",
		data: JSON.stringify({ "id": userTableId }),
		contentType:"application/json",
		dataType: "JSON",
		success: function(obj){
			console.log("pick spot data:",obj);
			myPickPackList(obj);
		},
		error: function(xhr, status, error){
			console.log("orderbyupdate error:",xhr);
			return
		}
	});
}


function search_pack(){
	let search_packname = document.getElementById('search_packname').value;
	let get_packname_data ={
		"spot_name":search_packname
	}

	console.log("search_packname",search_packname)
	if(search_packname == ""){
		make_searchedlist("none")
	}else{

		$.ajax({

			url: "http://localhost:8080/travelboard/searchSpot",
			type: "post",
			contentType:"application/json",
			async:false,
			data:JSON.stringify(get_packname_data),
			datatype: "JSON",
			success: function(obj){
				console.log(obj);
				make_searchedlist(obj)
				// Datatable 의 reinitialize 를 없애기 위해 destroy
			},
			error: function(xhr, status, error){
				console.log(`error: ${error}`)
				console.log(`status: ${status}`)
				return
			}
		})
	}
}



function getNewPack(){
		$.ajax({
			url: "http://localhost:8080/travelboard/newSpotFindAll",
			type: "GET",
			contentType:"application/json",
			dataType: "JSON",
			success: function(obj){
				console.log("news pot data:",obj);
				newPackList(obj);
			},
			error: function(xhr, status, error){
				console.log("orderbyupdate error:",xhr);
				return
			}
		});
}
function getPopularPack(){

        $.ajax({
			url: "http://localhost:8080/travelboard/popularSpotFindAll",
			type: "GET",
			contentType:"application/json",
			dataType: "JSON",
			success: function(obj){
				console.log("popular spot data:",obj);
				popularPackList(obj);
			},
			error: function(xhr, status, error){
				console.log("popularity error:",xhr);
				return
			}
		});
}


function newPackList(data){



		for(key in data){

			let imgPath = `http://localhost:8080/assets/spot/`+data[key].id+'/'+data[key].img_name;
			let pack = `<div class="pack_slide swiper-slide">
				<div class="pack_item">
					<!-- 이미지영역 -->
					<div class="img_area">
						<figure class="img">
							<img src= "${imgPath}">
						</figure>
					</div>
					<!--// 이미지영역 -->

					<!-- 텍스트영역 -->
					<div class="txt_area">
						<p class="tit">${data[key].spot_name}</p>
					</div>
					<!--// 텍스트영역 -->
					<a href="pack.php?pack_id=${data[key].id}" class="go_view">
						<span class="blind">상세이동</span>
					</a>
				</div>
			</div>`
			$(".swiper-wrapper").append(pack);
		}
}
function myPackList(data){

	for(key in data){
		let pack_id = data[key]['id'];
		//let start_time = data[key]['startTime'].split('T')[0];
		let start_time = "2023.01.01"
		let title = data[key]['spot_name'];
		//let status = data[key]['status']>0?`<span class="studio_pack_tag"></span>`:``;
		let commentCount = data[key]['commentCount'];
		let imgPath = `http://localhost:8080/assets/spot/`+data[key].id+'/'+data[key].img_name;
		let road_name = data[key]['road_name']
		//let totalPocaSize = data[key]['totalPocaSize']
		let totalPocaSize = 100
		let pack = `<li>
						<div class="pack_group release">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${imgPath}" >
									</figure>
									<!--
									// ${status}
									-->
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="date">`+start_time+`</p>
									<p class="tit">`+title+`</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/ ${road_name}</p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">`+totalPocaSize+`</em>  <em class="tot" hidden>999</em> 
											</p>
										</div>
										<div class="chat">
											<span>${commentCount}</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<a id="detailLink" href="spotDetail?pack_id=${pack_id}" class="go_view">
							    <span class="blind">상세이동</span>
							</a>
						</div>
					</li>`;
		$(".pack_li").append(pack);
	}
}
function popularPackList(data) {
	for (key in data) {
		// if (pop_num-3 > key || key >= pop_num){
		// 	continue;
		// }
		// let img = makeImgPath(data[key].packId, data[key].img);
		let imgPath = `http://localhost:8080/assets/spot/`+data[key].id+'/'+data[key].img_name;
		let nickName = data[key].nickname == null ? "" : data[key].nickname

		let popularPackListTag = document.getElementsByClassName('pack_li');

		console.log("popularPackListTag", popularPackListTag)
		popularPackListTag.innerHTML = ``;
		let pack = `<li>
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${imgPath}" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">${nickName}</p>
									<p class="tit">${data[key].spot_name}</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/${data[key].road_name} </p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">28</em> / <em class="tot">999</em>
											</p>
										</div>
										<div class="chat">
											<span>${data[key].commentCount}</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<a href="pack.php?pack_id=${data[key].id}" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>`
		$(".pack_li").append(pack);
	}
}

function popularPackList(data) {
	for (key in data) {
		// if (pop_num-3 > key || key >= pop_num){
		// 	continue;
		// }
		// let img = makeImgPath(data[key].packId, data[key].img);
		let imgPath = `http://localhost:8080/assets/spot/`+data[key].id+'/'+data[key].img_name;
		let nickName = data[key].nickname == null ? "" : data[key].nickname

		let popularPackListTag = document.getElementsByClassName('pack_li');

		console.log("popularPackListTag", popularPackListTag)
		popularPackListTag.innerHTML = ``;
		let pack = `<li>
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${imgPath}" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">${nickName}</p>
									<p class="tit">${data[key].spot_name}</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/${data[key].road_name} </p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">28</em> / <em class="tot">999</em>
											</p>
										</div>
										<div class="chat">
											<span>${data[key].commentCount}</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<a href="pack.php?pack_id=${data[key].id}" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>`
		$(".pack_li").append(pack);
	}
}





function make_searchedlist(pack_list_data){
			console.log("pack_list_data",pack_list_data)
			let search_init = document.querySelector("#search_init").setAttribute("style","display:none");

			let search_territory = document.getElementById('search_territory');



			search_territory.innerHTML = ``;

			if(pack_list_data == "none"){
				let search_none = document.querySelector("#search_none").setAttribute("style","display:blank");

			}else{
				let search_none = document.querySelector("#search_none").setAttribute("style","display:none");
				pack_list_data.forEach((pack,index,array) => {
					let imgPath = `http://localhost:8080/assets/spot/`+pack.id+'/'+pack.img_name;

					console.log("for",pack.id)

					search_territory.innerHTML +=
						`
                        <li>
                            <div class="pack_group">
                                <div class="cotn">
                                    <!-- 이미지영역 -->
                                    <div class="img_area">
                                        <figure class="img">
                                        
                                            <img src="${imgPath}" >
                                            
                                        </figure>
                                    </div>
                                    <!--// 이미지영역 -->
                                    <!-- 텍스트영역 -->
                                    <div class="txt_area">
                                        <p class="nickname">${pack.nickname}</p>
                                        <p class="tit">${pack.spot_name}</p>
                                        <p class="tit" id = "pack_${pack.id}" hidden></p>
                                        <div class="addr">
                                            <span class="cnt">12</span>
                                            <p class="txt">/ ${pack.road_name}</p>
                                        </div>
                                        <div class="pack_info">
                                            <div class="count">
                                                <p>
                                                    <em class="current">${pack.totalPocaSize}</em>  <em class="tot" hidden>999</em>
                                                </p>
                                            </div>
                                            <div class="chat" >
                                                <span>${pack.commentCount}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// 텍스트영역 -->
                                </div>

                                <form id = "pack_form${pack.id}" action = "spotInfo?pack_id=${pack.id}" method = "get">
                                    <input name = "pack_id" value = "${pack.id}" hidden>
                                    <input name = "no_have" value = "true" hidden>
                                    <a  class="go_view" onclick = "gotopack(${pack.id})">
                                        <span class="blind">상세이동</span>
                                    </a>
                                </form>
                            </div>
                        </li>
				    `
				});
			}





}

function myPickPackList(pack_list_data){
	let pack_list = document.getElementById("pack_li");
	let allca = ""
	let allca_flag = "hidden"
	// pack_list.innerHTML =``
	pack_list_data.forEach((pack,index,array) => {
		console.log("pack",pack)
		let imgPath = `http://localhost:8080/assets/spot/`+pack.id+'/'+pack.img_name;
		if(pack.pocaGetSize == pack.totalPocaSize){
			allca = "allca";
			allca_flag = "";
			// num_allca ++;
		}else{
			allca = ""
			allca_flag = "hidden"
		}
		pack_list.innerHTML +=
			`
			
			<li ">
				<div class="pack_group">
					<div class="cotn">
						<!-- 이미지영역 -->
						<div class="img_area">
							<figure class="img">
								<img src="${imgPath}" >
							</figure>
							
						</div>
						<!--// 이미지영역 -->
						<!-- 텍스트영역 -->
						<div class="txt_area">
							<p class="nickname">${pack.nickname}</p>
							<p class="tit">${pack.spot_name}</p>
							<p class="tit" id = "pack_${pack.id}" hidden></p>
							<div class="addr">
								<span class="cnt">12</span>
								<p class="txt">/ ${pack.road_name}</p>
							</div>
							<div class="pack_info">
								<div class="count">
									<p>
										<em class="current">${pack.nickname}</em>  <em class="tot" hidden>999</em>
									</p>
								</div>
								<div class="chat" >
									<span>${pack.commentCount}</span>
								</div>
							</div>
						</div>
						<!--// 텍스트영역 -->
					</div>
					
					<form id = "pack_form${pack.id}" action = "spotInfo?pack_id=${pack.id}" method = "get">
						<input name = "pack_id" value = "${pack.id}" hidden>
						<input name = "allca" value = "${allca}" hidden>
						<a  class="go_view" onclick = "gotopack(${pack.id})">
							<span class="blind">상세이동</span>
						</a>
					</form>
				</div>
			</li>
		`
	});
}

