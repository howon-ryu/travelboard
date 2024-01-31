getPopularPack()
getNewPack()
console.log("home_init js")
///////////////////// API /////////////////////
	function getNewPack(){
		$.ajax({
			url: "https://chipsterplay.soundgram.co.kr/api/v1/arpoca/packs/OrderByUpdate",
			type: "GET",
			contentType:"application/json",
			datatype: "JSON",
			success: function(obj){
				console.log("data:",obj);
				newPackList(obj);
			},
			error: function(xhr, status, error){
				console.log("orderbyupdate error:",xhr);
				return
			}
		});
	}
	function getPopularPack(){
//		$.ajax({
//			url: "https://chipsterplay.soundgram.co.kr/api/v1/arpoca/packs/orderByPopularityCount?count=30",
//			type: "GET",
//			contentType:"application/json",
//			datatype: "JSON",
//			success: function(obj){
//				console.log("count:",obj);
//				popularPackList(obj);
//			},
//			error: function(xhr, status, error){
//				console.log("popularity error:",xhr);
//				return
//			}
//		});
        $.ajax({
			url: "http://localhost:8080/travelboard/spotFindAll",
			type: "GET",
			contentType:"application/json",
			datatype: "JSON",
			success: function(obj){
				console.log("count:",obj);
				//popularPackList(obj);
			},
			error: function(xhr, status, error){
				console.log("popularity error:",xhr);
				return
			}
		});
	}

	///////////////////// 함수 /////////////////////
	function newPackList(data){
		for(key in data){
			let img = makeImgPath(data[key].packId, data[key].img);

			let pack = `<div class="pack_slide swiper-slide">
				<div class="pack_item">
					<!-- 이미지영역 -->
					<div class="img_area">
						<figure class="img">
							<img src= "${img}">
						</figure>
					</div>
					<!--// 이미지영역 -->

					<!-- 텍스트영역 -->
					<div class="txt_area">
						<p class="tit">${data[key].name}</p>
					</div>
					<!--// 텍스트영역 -->
					<a href="pack.php?pack_id=${data[key].packId}" class="go_view">
						<span class="blind">상세이동</span>
					</a>
				</div>
			</div>`
			$(".swiper-wrapper").append(pack);
		}
	}

	function popularPackList(data){
		for (key in data){
			if (pop_num-3 > key || key >= pop_num){
				continue;
			}
			let img = makeImgPath(data[key].packId, data[key].img);
			let nickName = data[key].makerUserNickName == null ? "" : data[key].makerUserNickName

			let pack = `<li>
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${img}" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">${nickName}</p>
									<p class="tit">${data[key].name}</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/ 경기도 고양시 덕양구 항공대학로 76 외</p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">28</em> / <em class="tot">999</em>
											</p>
										</div>
										<div class="chat">
											<span>1,045</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<a href="pack.php?pack_id=${data[key].packId}" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>`
			$(".pack_li").append(pack);
		}
	}