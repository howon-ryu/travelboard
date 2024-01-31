package com.project.travelboard.repository;

import com.project.travelboard.dto.TravelBoardDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository // 이 클래스를 Spring Bean으로 등록
@RequiredArgsConstructor // 생성자 주입을 자동으로 생성
public class TravelBoardRepository {
    private final SqlSessionTemplate sql; // SqlSessionTemplate 의존성 주입

    public int save(TravelBoardDTO boardDTO) {
        return sql.insert("Board.save", boardDTO); // 게시글 저장 쿼리 실행
    }
}