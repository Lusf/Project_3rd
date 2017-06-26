package kosta.web.model.service.enter;

import java.security.Principal;
import java.util.List;

import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.enter.LGBoardCommentVo;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;

public interface EnterService {
	
	/**
	 * 볼거리 등록(관리자)
	 * */
	int lookInfoInsert(LookInfoVo lookInfoVo);
	
	/**
	 * 볼거리 수정(관리자)
	 * */
	int lookInfoUpdate(LookInfoVo lookInfoVo);
	
	/**
	 * 볼거리 삭제(관리자)
	 * */
	int lookInfoDelete(String contentCode);
	
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
	 * 유저 추천 게시글 검색(전체)
	 * */
	List<LookgoodBoardVo> lookgoodBoardSearchAll();
	
	/**
	 * 유저 추천 게시글 검색(부분 : lgnNum)
	 * */
	LookgoodBoardVo lookgoodBoardSearchByNum(int lgnNum);
	
	/**
	 * 유저 추천 게시판 댓글 등록
	 * */
	int lGBoardCommentInsert(LGBoardCommentVo lgBoardCommentVo);
	
	/**
	 * 유저 추천 게시판 댓글 수정
	 * */
	int lGBoardCommentUpdate(LGBoardCommentVo lgBoardCommentVo);
	
	/**
	 * 유저 추천 게시판 댓글 삭제
	 * */
	int lGBoardCommentDelete(int lgbcomNum);
	
	/**
	 * 볼거리 찜 조회
	 * */
	List<AvgScoreVo> lookWishListSelect(AvgScoreVo avgScoreVo);
	
	/**
	 * 볼거리 찜 수정
	 * */
	int lookWishListUpdate(String id, String contentCode);
	
	/**
	 * 별점 등록
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * 별점 수정
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
	
	/**
	 * 볼거리 검색(부분/전체)
	 * */
	List<LookInfoVo> lookInfoSearch();
	
	/**
	 * 볼거리 검색(contentsCode에따라서)
	 * */
	LookInfoVo lookInfoSearchByCode(String contentCode, String id);
	
	/**
	 * 볼거리 검색(lookcate에따라서)
	 * */
	List<LookInfoVo> lookInfoSearchByCate(String lookCate);
	
	/**
	 * 볼거리 검색(lookGenre에따라서)
	 * */
	List<LookInfoVo> lookInfoSearchByGenre(String lookGenre);
	
	/**
	 * 볼거리 최신순.
	 * */
	List<LookInfoVo> lookInfoSearchByNewList();
	
	/** search */
	List<LookInfoVo> enterSearch(LookInfoVo lookInfoVo, String searchYear, String searchMonth, String sort);
	
	
	
	
	/** enter admin search */
	List<LookInfoVo> enterInfoSearch(LookInfoVo lookInfoVo, int currentPage);
	
	/** enter admin delete */
	int enterInfoDelete(String contentCode);
	
	/** enter admin insert */
	int enterInfoInsert(LookInfoVo lookInfoVo);
	
	/** enter admin update */
	int enterInfoUpdate(LookInfoVo lookInfoVo);
	
	/*
	 * *************************************************
	 * **관리자
	 * enterInfoInsert - 볼거리등록
	 * enterInfoUpdate - 볼거리수정 
	 * enterInfoDelete - 볼거리삭제 
	 *************************************************
	 * **회원 사용자
	 * lookgoodBoardInsert - 유저 추천 게시글 등록
	 * lookgoodBoardUpdate - 유저 추천 게시글 수정
	 * lookgoodBoardDelete - 유저 추천 게시글 삭제
	 * 
	 * lookgoodBoardSearchAll - 유저 추천 게시글 검색(전체)
	 * lookgoodBoardSearchById  - 유저 추천 게시글 검색(부분 : id)
	 * 
	 * lGBoardCommentInsert - 유저 추천 게시판 댓글 등록
	 * lGBoardCommentUpdate - 유저 추천 게시판 댓글 수정
	 * lGBoardCommentDelete - 유저 추천 게시판 댓글 삭제(댓글번호 이용)
	 * 
	 * lookWishListAdd - 볼거리 찜 등록
	 * lookWishListDelete - 볼거리 찜 삭제
	 * 
	 * lookScoreInsert - 별점 등록
	 * lookScoreUpdate - 별점 수정
	 *************************************************
	 * **모든 사용자
	 * lookInfoSearch - 볼거리 검색(부분/전체)
	 **************************************************/
	
}