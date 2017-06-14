package kosta.web.model.dao.enter;

import java.util.List;

import kosta.web.model.vo.enter.LookgoodBoardVo;

public interface LookgoodBoardDAO {
/*	 * lookgoodBoardInsert - 유저 추천 게시글 등록
	 * lookgoodBoardUpdate - 유저 추천 게시글 수정
	 * lookgoodBoardDelete - 유저 추천 게시글 삭제
	 * 
	 * lookgoodBoardSearchAll - 유저 추천 게시글 검색(전체)
	 * lookgoodBoardSearchById  - 유저 추천 게시글 검색(부분 : int lgnNum)*/
	
	/**
	 * 유저 추천 게시글 등록(회원사용자)
	 * */
	int lookgoodBoardInsert(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * 유저 추천 게시글 수정(회원사용자)
	 * */
	int lookgoodBoardUpdate(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * 유저 추천 게시글 삭제(회원사용자)
	 * */
	int lookgoodBoardDelete(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * 유저 추천 게시글 검색(전체/부분)
	 * */
	List<LookgoodBoardVo> lookgoodBoardSearchAll();
	
	/**
	 * 유저 추천 게시글 검색(부분 : id)
	 * */
	LookgoodBoardVo lookgoodBoardSearchByNum(int lgnNum);
	
}
