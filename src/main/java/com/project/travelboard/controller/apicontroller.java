package com.project.travelboard.controller;


// 서비스랑 dto 나중에 정의 해주기

//import com.project.travelboard.dto.BoardDTO;
//import com.project.travelboard.service.BoardService;


import com.project.travelboard.dto.HelloDTO;
import com.project.travelboard.dto.JoinUserDTO;
import com.project.travelboard.dto.LoginUserDTO;
import com.project.travelboard.dto.SpotDTO;
import com.project.travelboard.service.TravelBoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
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
    @GetMapping("/init") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String init() {
        return "init"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }
    @GetMapping("/mypage") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String mypage() {
        return "mypage"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }
    @GetMapping("/login") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String login() {
        return "login"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }

    @GetMapping("/join") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String join() {
        return "join"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
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
    @PostMapping("/joinUser")
//    @RequestBody
    public ResponseEntity joinUser(@RequestBody()JoinUserDTO joinuserDTO){
        String tempInput = joinuserDTO.getNickname();
        System.out.println("nick"+ tempInput);
        travelBoardService.joinUser(joinuserDTO);

        return ResponseEntity.ok().body("{\"result\": \"" + tempInput + "\"}");
    }


    @PostMapping("/loginUser")
//    @RequestBody
    public ResponseEntity loginUser(@RequestBody() LoginUserDTO loginuserDTO){
        String tempId = loginuserDTO.getId();
        System.out.println("id"+ tempId);
        int loginResult = travelBoardService.loginUser(loginuserDTO);

        if (loginResult == 1) {
            return ResponseEntity.ok().body("{\"result\": \"success\"}");
        } else {
            return ResponseEntity.ok().body("{\"result\": \"failure\"}");
        }
    }




}
