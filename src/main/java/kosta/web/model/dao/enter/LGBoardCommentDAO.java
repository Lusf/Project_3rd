package kosta.web.model.dao.enter;

import kosta.web.model.vo.enter.LGBoardCommentVo;

public interface LGBoardCommentDAO {
	
/*	 * lGBoardCommentInsert - 유저 추천 게시판 댓글 등록
	 * lGBoardCommentUpdate - 유저 추천 게시판 댓글 수정
	 * lGBoardCommentDelete - 유저 추천 게시판 댓글 삭제(댓글번호 이용)*/
	
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
}
