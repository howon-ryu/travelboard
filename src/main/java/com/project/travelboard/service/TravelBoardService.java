package com.project.travelboard.service;

import com.project.travelboard.dto.TravelBoardDTO;
import com.project.travelboard.repository.TravelBoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service // 이 클래스를 Spring Bean으로 등록
@RequiredArgsConstructor // 생성자 주입을 자동으로 생성
public class TravelBoardService {
    private final TravelBoardRepository boardRepository; // BoardRepository 의존성 주입

    public int save(TravelBoardDTO boardDTO) {
        return boardRepository.save(boardDTO); // 게시글 저장 요청을 BoardRepository에 위임
    }
}