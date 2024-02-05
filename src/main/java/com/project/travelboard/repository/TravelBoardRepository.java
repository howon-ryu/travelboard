package com.project.travelboard.repository;

import com.project.travelboard.dto.*;
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


    public List<SpotDTO> popularSpotFindAll() {
        return sql.selectList("TravelBoard.popularSpotFindAll");

    }
    public List<SpotDTO> mySpotFindAll(Integer id) {
        return sql.selectList("TravelBoard.mySpotFindAll",id);

    }
    public List<SpotDTO> newSpotFindAll() {
        return sql.selectList("TravelBoard.newSpotFindAll");
    }

    public void joinUser(JoinUserDTO joinuserDTO) {
        sql.insert("TravelBoard.joinUser",joinuserDTO);

    }
      public LoginUserDTO loginUser(LoginUserDTO loginuserDTO) {
          System.out.println("input id"+loginuserDTO.getLogin_id());
          LoginUserDTO dto =sql.selectOne("TravelBoard.loginUser", loginuserDTO);
          System.out.println("dto"+dto);

//        return sql.selectOne("TravelBoard.loginUser", loginuserDTO);
          return dto;
    }


    public UserDTO getUserInfo(Integer id) {

        return sql.selectOne("TravelBoard.getUserInfo",id);


    }

    public void changePassword(ChangePasswordDTO changepasswordDTO) {

        sql.update("TravelBoard.changePassword",changepasswordDTO);


    }

    public void changeNickname(UserDTO userDTO) {

        sql.update("TravelBoard.changeNickname",userDTO);

    }



}