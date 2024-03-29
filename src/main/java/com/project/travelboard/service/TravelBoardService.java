package com.project.travelboard.service;

import com.project.travelboard.dto.*;
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
    public List<SpotDTO> popularSpotFindAll() {
        return travelBoardRepository.popularSpotFindAll();
    }
    public List<SpotDTO> newSpotFindAll() {
        return travelBoardRepository.newSpotFindAll();
    }
    public List<MapDTO> getSpotLocation() {
        return travelBoardRepository.getSpotLocation();
    }

    public List<SpotDTO> searchSpot(String spotName) {
        return travelBoardRepository.searchSpot(spotName);
    }

    public List<SpotDTO> mySpotFindAll(Integer id) {
        return travelBoardRepository.mySpotFindAll(id);
    }
    public List<CommentDTO> getCommentList(CommentDTO commentDTO) {
        return travelBoardRepository.getCommentList(commentDTO);
    }
    public List<SpotDTO> myPickSpotFindAll(Integer id) {
        return travelBoardRepository.myPickSpotFindAll(id);
    }

    public List<SpotDTO> getOnePack(Integer packId) {
        return travelBoardRepository.getOnePack(packId);
    }

    public void joinUser(JoinUserDTO joinuserDTO) {

        travelBoardRepository.joinUser(joinuserDTO);



    }
    public void insertMap(MapDTO mapDTO) {
        travelBoardRepository.insertMap(mapDTO);
    }
    public SpotDTO createSpot(SpotDTO spotDTO) {

        travelBoardRepository.createSpot(spotDTO);

        return spotDTO;
    }
    public void createPhoto(PhotoDTO photoDTO) {
        travelBoardRepository.createPhoto(photoDTO);

    }
    public void sendComment(CommentDTO commentDTO) {
        travelBoardRepository.sendComment(commentDTO);
    }
    public void deleteComment(CommentDTO commentDTO) {
        travelBoardRepository.deleteComment(commentDTO);
    }
    public void sendUserPick(UserPickDTO pickDTO) {
        travelBoardRepository.sendUserPick(pickDTO);
    }
    public void deletePick(UserPickDTO pickDTO) {
        travelBoardRepository.deletePick(pickDTO);



    }
    public UserPickDTO checkPick(UserPickDTO pickDTO) {

        UserPickDTO result = travelBoardRepository.checkPick(pickDTO);

        return result;
    }

    public LoginUserDTO loginUser(LoginUserDTO loginuserDTO) {
        LoginUserDTO result = travelBoardRepository.loginUser(loginuserDTO);
        System.out.println(result.getId());

        return result;
    }

    public UserDTO getUserInfo(Integer id) {

        UserDTO result = travelBoardRepository.getUserInfo(id);
        return result;


    }
    public MapDTO getMapInfo(Integer mapId) {
        System.out.println("mapId"+mapId);
        MapDTO result = travelBoardRepository.getMapInfo(mapId);
        System.out.println("asdf"+result.toString());
        return result;
    }

    public PhotoDTO getPhotoInfo(Integer id) {
        PhotoDTO result = travelBoardRepository.getPhotoInfo(id);
        return result;
    }


    public void changePassword(ChangePasswordDTO changepasswordDTO) {

        travelBoardRepository.changePassword(changepasswordDTO);



    }


    public void changeNickname(UserDTO userDTO) {
        travelBoardRepository.changeNickname(userDTO);
    }

    public void updatePhoto(PhotoDTO photoDTO) {
        travelBoardRepository.updatePhoto(photoDTO);
    }
    public void updateSpot(SpotDTO spotDTO) {
        travelBoardRepository.updateSpot(spotDTO);
    }
    public void updateMap(MapDTO mapDTO) {
        travelBoardRepository.updateMap(mapDTO);
    }
    public SpotDTO getSpotInfo(Integer packId) {

        SpotDTO result = travelBoardRepository.getSpotInfo(packId);
        return result;

    }

    public List<PhotoDTO> getPhotoList(Integer spot_id) {

        return travelBoardRepository.getPhotoList(spot_id);
    }


    public SpotDTO lastInputSpot() {
        SpotDTO result = travelBoardRepository.lastInputSpot();
        return result;

    }

    public PhotoDTO lastInputPhoto() {
        PhotoDTO result = travelBoardRepository.lastInputPhoto();
        return result;
    }


    public MapDTO lastInputMap() {
        MapDTO result = travelBoardRepository.lastInputMap();
        return result;
    }



}