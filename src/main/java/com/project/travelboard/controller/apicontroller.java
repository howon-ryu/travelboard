package com.project.travelboard.controller;


// 서비스랑 dto 나중에 정의 해주기

//import com.project.travelboard.dto.BoardDTO;
//import com.project.travelboard.service.BoardService;


import com.project.travelboard.dto.HelloDTO;
import com.project.travelboard.dto.SpotDTO;
import com.project.travelboard.service.TravelBoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller // 이 클래스는 Spring의 컨트롤러로 지정
@RequiredArgsConstructor // Lombok을 사용하여 생성자 주입을 자동으로 생성
@RequestMapping("/travelboard") // 이 컨트롤러에서 처리할 요청 URL의 기본 경로 설정
public class apicontroller {
    private final TravelBoardService travelBoardService;

    @GetMapping("/home") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String home() {
        return "home"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }

    @GetMapping("/boardList") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String boardList() {
        return "boardList"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }


    @GetMapping("/hello")
    @ResponseBody
    public HelloDTO hello(){
        HelloDTO dto = new HelloDTO();

        dto.setId(1L);

        return dto;
    }
//    public String hello(){
//        //helloDTO AA = new helloDTO(1L, "hi");
//        return "hello";
//    }
    @GetMapping("/spotFindAll")
    @ResponseBody
    public List<SpotDTO> spotFindAll(){
        //SpotDTO spotList = new SpotDTO();
        List<SpotDTO> spotAllList =  travelBoardService.spotFindAll();

        return spotAllList;


    }



}
