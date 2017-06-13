package kosta.web.model.dao.enter;

import kosta.web.model.vo.enter.LGBoardCommentVo;

public interface LGBoardCommentDAO {
	
/*	 * lGBoardCommentInsert - ���� ��õ �Խ��� ��� ���
	 * lGBoardCommentUpdate - ���� ��õ �Խ��� ��� ����
	 * lGBoardCommentDelete - ���� ��õ �Խ��� ��� ����(��۹�ȣ �̿�)*/
	
	/**
	 * ���� ��õ �Խ��� ��� ���
	 * */
	int lGBoardCommentInsert(LGBoardCommentVo lgBoardCommentVo);
	
	/**
	 * ���� ��õ �Խ��� ��� ����
	 * */
	int lGBoardCommentUpdate(LGBoardCommentVo lgBoardCommentVo);
	
	/**
	 * ���� ��õ �Խ��� ��� ����
	 * */
	int lGBoardCommentDelete(int lgbcomNum);
}
