package com.project.travelboard.controller;


// 서비스랑 dto 나중에 정의 해주기

//import com.project.travelboard.dto.BoardDTO;
//import com.project.travelboard.service.BoardService;


import com.project.travelboard.dto.*;
import com.project.travelboard.service.TravelBoardService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
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
    @GetMapping("/changePassword") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String changePassword() {
        return "changePassword"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
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

    @GetMapping("/studio") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String studio() {
        return "studio"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }

    @GetMapping("/createNewSpot") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String createNewSpot() {
        return "createNewSpot"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }
    @GetMapping("/createPhotoDetail") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String createPhotoDetail() {
        return "createPhotoDetail"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }
    @GetMapping("/selectPosition") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String selectPosition() {
        return "selectPosition"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
    }

    @GetMapping("/spotDetail") // HTTP GET 요청에 대한 처리를 위한 매핑
    public String spotDetail() {
        return "spotDetail"; // "save" 뷰 이름을 반환하여 해당 JSP 파일을 표시
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
    @GetMapping("/popularSpotFindAll")
    @ResponseBody
    public List<SpotDTO> popularSpotFindAll(){
        //SpotDTO spotList = new SpotDTO();
        List<SpotDTO> popularSpotFindAll =  travelBoardService.popularSpotFindAll();

        return popularSpotFindAll;


    }
    @GetMapping("/newSpotFindAll")
    @ResponseBody
    public List<SpotDTO> newSpotFindAll(){
        //SpotDTO spotList = new SpotDTO();
        List<SpotDTO> newSpotFindAll =  travelBoardService.newSpotFindAll();

        return newSpotFindAll;


    }
    @PostMapping("/mySpotFindAll")
    @ResponseBody
    public List<SpotDTO> mySpotFindAll(@RequestBody() Map<String, String> data){
        //SpotDTO spotList = new SpotDTO();

        String id = data.get("id");
        System.out.println("id"+id);

        List<SpotDTO> mySpotFindAll =  travelBoardService.mySpotFindAll(Integer.valueOf(id));

        return mySpotFindAll;


    }
    @PostMapping("/getPhotoList")
    @ResponseBody
    public List<PhotoDTO> getPhotoList(@RequestBody() Map<String, String> data){
        //SpotDTO spotList = new SpotDTO();

        String packId = data.get("packId");
        System.out.println("packId"+packId);

        List<PhotoDTO> photoList =  travelBoardService.getPhotoList(Integer.valueOf(packId));

        return photoList;


    }


    @PostMapping("/joinUser")
//    @RequestBody
    public ResponseEntity joinUser(@RequestBody()JoinUserDTO joinuserDTO){
        String tempInput = joinuserDTO.getNickname();
        System.out.println("nick"+ tempInput);
        travelBoardService.joinUser(joinuserDTO);

        return ResponseEntity.ok().body("{\"result\": \"" + tempInput + "\"}");
    }
    @PostMapping("/createSpot")
//    @RequestBody
    public ResponseEntity createSpot(@RequestBody()SpotDTO spotDTO){
        String tempInput = spotDTO.getSpotComment();
        //System.out.println("nick"+ tempInput);
        travelBoardService.createSpot(spotDTO);

        return ResponseEntity.ok().body("{\"result\": \"" + tempInput + "\"}");
    }


    @PostMapping("/loginUser")
//    @RequestBody
    public ResponseEntity loginUser(@RequestBody() LoginUserDTO loginuserDTO){
        String tempId = loginuserDTO.getId();
        System.out.println("id"+ tempId);
        LoginUserDTO loginResult = travelBoardService.loginUser(loginuserDTO);


        return ResponseEntity.ok().body(loginResult);

    }

    @PostMapping("/getUserInfo")
    @ResponseBody
    public UserDTO getUserInfo(@RequestBody() Map<String, String> data){

        String id = data.get("id");
        System.out.println("id"+id);
        UserDTO userDTO =  travelBoardService.getUserInfo(Integer.valueOf(id));

        return userDTO;


    }

    @PostMapping("/getSpotInfo")
    @ResponseBody
    public SpotDTO getSpotInfo(@RequestBody() Map<String, String> data){

        String packId = data.get("packId");
        System.out.println("pack_id"+packId);
        SpotDTO spotDTO =  travelBoardService.getSpotInfo(Integer.valueOf(packId));

        return spotDTO;


    }


    @PostMapping("/changePassword")
    public ResponseEntity changePassword(@RequestBody ChangePasswordDTO changePasswordDTO){
        String temppw = changePasswordDTO.getChangingPassword();
        System.out.println("temppw"+ temppw);
        travelBoardService.changePassword(changePasswordDTO);
        return ResponseEntity.ok().body(changePasswordDTO);
    }
    @PostMapping("/changeNickname")

    public ResponseEntity changeNickname(@RequestBody() UserDTO userDTO){

        String nick = userDTO.getNickname();
        System.out.println("nick"+nick);
        travelBoardService.changeNickname(userDTO);

        return ResponseEntity.ok().body(userDTO);


    }




    @PostMapping("/uploadImage")
    public ResponseEntity<String> uploadImage(@RequestParam("user_id") String userId,
                                              @RequestParam("file") MultipartFile file,
                                              HttpServletRequest request) {
        try {
            // 사용자 ID를 기반으로 폴더 생성
            String basePath = request.getServletContext().getRealPath("/");
            String folderPath = basePath + "assets" + File.separator + "image" + File.separator + "userUploads" + File.separator + userId;

            File folder = new File(folderPath);

            // 폴더가 없다면 생성
            if (!folder.exists()) {
                if (!folder.mkdirs()) {
                    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                            .body("Failed to create user folder");
                }
            }

            // 이미지를 폴더에 저장
            String filePath = folderPath + File.separator + file.getOriginalFilename();
            file.transferTo(new File(filePath));

            return ResponseEntity.ok().body(file.getOriginalFilename());
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Failed to upload image: " + e.getMessage());
        }
    }






}
