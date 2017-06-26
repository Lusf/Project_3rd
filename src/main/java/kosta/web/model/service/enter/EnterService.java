package kosta.web.model.service.enter;

import java.security.Principal;
import java.util.List;

import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.enter.LGBoardCommentVo;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;

public interface EnterService {
	
	/**
	 * ���Ÿ� ���(������)
	 * */
	int lookInfoInsert(LookInfoVo lookInfoVo);
	
	/**
	 * ���Ÿ� ����(������)
	 * */
	int lookInfoUpdate(LookInfoVo lookInfoVo);
	
	/**
	 * ���Ÿ� ����(������)
	 * */
	int lookInfoDelete(String contentCode);
	
	/**
	 * ���� ��õ �Խñ� ���(ȸ�������)
	 * */
	int lookgoodBoardInsert(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * ���� ��õ �Խñ� ����(ȸ�������)
	 * */
	int lookgoodBoardUpdate(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * ���� ��õ �Խñ� ����(ȸ�������)
	 * */
	int lookgoodBoardDelete(LookgoodBoardVo lookgoodBoardVo);
	
	/**
	 * ���� ��õ �Խñ� �˻�(��ü)
	 * */
	List<LookgoodBoardVo> lookgoodBoardSearchAll();
	
	/**
	 * ���� ��õ �Խñ� �˻�(�κ� : lgnNum)
	 * */
	LookgoodBoardVo lookgoodBoardSearchByNum(int lgnNum);
	
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
	
	/**
	 * ���Ÿ� �� ��ȸ
	 * */
	List<AvgScoreVo> lookWishListSelect(AvgScoreVo avgScoreVo);
	
	/**
	 * ���Ÿ� �� ����
	 * */
	int lookWishListUpdate(String id, String contentCode);
	
	/**
	 * ���� ���
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * ���� ����
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
	
	/**
	 * ���Ÿ� �˻�(�κ�/��ü)
	 * */
	List<LookInfoVo> lookInfoSearch();
	
	/**
	 * ���Ÿ� �˻�(contentsCode������)
	 * */
	LookInfoVo lookInfoSearchByCode(String contentCode, String id);
	
	/**
	 * ���Ÿ� �˻�(lookcate������)
	 * */
	List<LookInfoVo> lookInfoSearchByCate(String lookCate);
	
	/**
	 * ���Ÿ� �˻�(lookGenre������)
	 * */
	List<LookInfoVo> lookInfoSearchByGenre(String lookGenre);
	
	/**
	 * ���Ÿ� �ֽż�.
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
	 * **������
	 * enterInfoInsert - ���Ÿ����
	 * enterInfoUpdate - ���Ÿ����� 
	 * enterInfoDelete - ���Ÿ����� 
	 *************************************************
	 * **ȸ�� �����
	 * lookgoodBoardInsert - ���� ��õ �Խñ� ���
	 * lookgoodBoardUpdate - ���� ��õ �Խñ� ����
	 * lookgoodBoardDelete - ���� ��õ �Խñ� ����
	 * 
	 * lookgoodBoardSearchAll - ���� ��õ �Խñ� �˻�(��ü)
	 * lookgoodBoardSearchById  - ���� ��õ �Խñ� �˻�(�κ� : id)
	 * 
	 * lGBoardCommentInsert - ���� ��õ �Խ��� ��� ���
	 * lGBoardCommentUpdate - ���� ��õ �Խ��� ��� ����
	 * lGBoardCommentDelete - ���� ��õ �Խ��� ��� ����(��۹�ȣ �̿�)
	 * 
	 * lookWishListAdd - ���Ÿ� �� ���
	 * lookWishListDelete - ���Ÿ� �� ����
	 * 
	 * lookScoreInsert - ���� ���
	 * lookScoreUpdate - ���� ����
	 *************************************************
	 * **��� �����
	 * lookInfoSearch - ���Ÿ� �˻�(�κ�/��ü)
	 **************************************************/
	
}