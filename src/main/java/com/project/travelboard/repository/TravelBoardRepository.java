package com.project.travelboard.repository;

import com.project.travelboard.dto.JoinUserDTO;
import com.project.travelboard.dto.LoginUserDTO;
import com.project.travelboard.dto.SpotDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository // 이 클래스를 Spring Bean으로 등록
@RequiredArgsConstructor // 생성자 주입을 자동으로 생성
public class TravelBoardRepository {
    private final SqlSessionTemplate sql; // SqlSessionTemplate 의존성 주입

//    public int save(TravelBoardDTO boardDTO) {
//        return sql.insert("TravelBoard.save", boardDTO); // 게시글 저장 쿼리 실행
//    }
//


    public List<SpotDTO> spotFindAll() {
        return sql.selectList("TravelBoard.spotFindAll");

    }

    public void joinUser(JoinUserDTO joinuserDTO) {
        sql.insert("TravelBoard.joinUser",joinuserDTO);

    }
    public LoginUserDTO loginUser(LoginUserDTO loginuserDTO) {
        return sql.selectOne("TravelBoard.loginUser", loginuserDTO);
    }



}