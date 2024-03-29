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
    public List<MapDTO> getSpotLocation() {
        return sql.selectList("TravelBoard.getSpotLocation");
    }
    public List<SpotDTO> mySpotFindAll(Integer id) {
        return sql.selectList("TravelBoard.mySpotFindAll",id);

    }
    public List<SpotDTO> myPickSpotFindAll(Integer id) {
        return sql.selectList("TravelBoard.myPickSpotFindAll",id);
    }

    public List<CommentDTO> getCommentList(CommentDTO commentDTO) {
        return sql.selectList("TravelBoard.getCommentList",commentDTO);
    }
    public List<SpotDTO> newSpotFindAll() {
        return sql.selectList("TravelBoard.newSpotFindAll");
    }
    public List<SpotDTO> searchSpot(String spot_name) {
        return sql.selectList("TravelBoard.searchSpot",spot_name);
    }
    public void joinUser(JoinUserDTO joinuserDTO) {
        sql.insert("TravelBoard.joinUser",joinuserDTO);

    }
    public void insertMap(MapDTO mapDTO) {
        sql.insert("TravelBoard.insertMap",mapDTO);
    }
    public void createSpot(SpotDTO spotDTO) {
        sql.insert("TravelBoard.createSpot",spotDTO);
    }
      public LoginUserDTO loginUser(LoginUserDTO loginuserDTO) {
          System.out.println("input id"+loginuserDTO.getLogin_id());
          LoginUserDTO dto =sql.selectOne("TravelBoard.loginUser", loginuserDTO);
          System.out.println("dto"+dto);

//        return sql.selectOne("TravelBoard.loginUser", loginuserDTO);
          return dto;
    }
    public void createPhoto(PhotoDTO photoDTO) {
        sql.insert("TravelBoard.createPhoto",photoDTO);
    }
    public void sendComment(CommentDTO commentDTO) {
        sql.insert("TravelBoard.sendComment",commentDTO);
    }
    public void sendUserPick(UserPickDTO pickDTO) {
        sql.insert("TravelBoard.sendUserPick",pickDTO);
    }
    public void deleteComment(CommentDTO commentDTO) {
        sql.delete("TravelBoard.deleteComment",commentDTO);
    }
    public void deletePick(UserPickDTO pickDTO) {
        sql.delete("TravelBoard.deletePick",pickDTO);
    }
    public UserPickDTO checkPick(UserPickDTO pickDTO) {


        return sql.selectOne("TravelBoard.checkPick",pickDTO);

    }
    public UserDTO getUserInfo(Integer id) {

        return sql.selectOne("TravelBoard.getUserInfo",id);


    }
    public MapDTO getMapInfo(Integer mapId) {
        System.out.println("mapIdre"+mapId);
        MapDTO result =sql.selectOne("TravelBoard.getMapInfo",mapId);
        System.out.println(result.toString());
        return result;
    }
    public List<SpotDTO> getOnePack(Integer packId) {
        return sql.selectList("TravelBoard.getOnePack",packId);
    }

    public PhotoDTO getPhotoInfo(Integer id) {
        return sql.selectOne("TravelBoard.getPhotoInfo",id);
    }


    public void changePassword(ChangePasswordDTO changepasswordDTO) {

        sql.update("TravelBoard.changePassword",changepasswordDTO);


    }

    public void changeNickname(UserDTO userDTO) {

        sql.update("TravelBoard.changeNickname",userDTO);

    }
    public void updatePhoto(PhotoDTO photoDTO) {
        sql.update("TravelBoard.updatePhoto",photoDTO);
    }
    public void updateSpot(SpotDTO spotDTO) {
        sql.update("TravelBoard.updateSpot",spotDTO);
    }
    public void updateMap(MapDTO mapDTO) {
        sql.update("TravelBoard.updateMap",mapDTO);
    }


    public SpotDTO getSpotInfo(Integer packId) {
        return sql.selectOne("TravelBoard.getSpotInfo",packId);
    }

    public List<PhotoDTO> getPhotoList(Integer spot_id) {

        return sql.selectList("TravelBoard.getPhotoList",spot_id);


    }


    public SpotDTO lastInputSpot() {
        return sql.selectOne("TravelBoard.lastInputSpot");

    }

    public PhotoDTO lastInputPhoto() {
        return sql.selectOne("TravelBoard.lastInputPhoto");
    }


    public MapDTO lastInputMap() {
        return sql.selectOne("TravelBoard.lastInputMap");
    }



}