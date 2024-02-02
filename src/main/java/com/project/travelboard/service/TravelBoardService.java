package com.project.travelboard.service;

import com.project.travelboard.dto.JoinUserDTO;
import com.project.travelboard.dto.LoginUserDTO;
import com.project.travelboard.dto.SpotDTO;
import com.project.travelboard.repository.TravelBoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service // 이 클래스를 Spring Bean으로 등록
@RequiredArgsConstructor // 생성자 주입을 자동으로 생성
public class TravelBoardService {
    private final TravelBoardRepository travelBoardRepository; // BoardRepository 의존성 주입

//    public int save(TravelBoardDTO boardDTO) {
//        return travelBoardRepository.save(boardDTO); // 게시글 저장 요청을 BoardRepository에 위임
//    }
    public List<SpotDTO> spotFindAll() {
        return travelBoardRepository.spotFindAll();
    }

    public void joinUser(JoinUserDTO joinuserDTO) {

        travelBoardRepository.joinUser(joinuserDTO);



    }

    public int loginUser(LoginUserDTO loginuserDTO) {
        LoginUserDTO result = travelBoardRepository.loginUser(loginuserDTO);
        return (result != null) ? 1 : 0;
    }
}