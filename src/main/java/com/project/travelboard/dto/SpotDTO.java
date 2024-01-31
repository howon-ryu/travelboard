package com.project.travelboard.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter // 모든 필드의 Getter 메서드를 자동으로 생성
@Setter // 모든 필드의 Setter 메서드를 자동으로 생성
@ToString // toString 메서드를 자동으로 생성

public class SpotDTO {

    private Integer id;
    private String spot_name;
    private Integer map_id;
    private Integer like_cnt;
    private Integer dislike_cnt;
    private Integer user_id;
    private String img_name;


}
