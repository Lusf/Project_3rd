package kosta.web.model.dao.enter;

import java.util.List;

import kosta.web.model.vo.enter.LookInfoVo;

public interface LookInfoDAO {
	
/*	 * lookInfoInsert - ���Ÿ����
	 * lookInfoUpdate - ���Ÿ����� 
	 * lookInfoDelete - ���Ÿ����� 
	 * lookInfoSearch - ���Ÿ� �˻�(�κ�/��ü)*/
	
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
	 * ���Ÿ� �˻�(��ü)
	 * */
	List<LookInfoVo> lookInfoSearch(LookInfoVo lookInfoVo);
	
	/**
	 * �������ڵ忡 ���� ���Ÿ� �˻�
	 * */
	LookInfoVo lookInfoSearchByCode(String contentCode);
	
	/**
	 * ī�װ��� ���� �˻�
	 * */
	List<LookInfoVo> lookInfoSearchByCate(String lookCate);

	/**
	 * �帣�� ���� �˻�
	 * */
	List<LookInfoVo> lookInfoSearchByGenre(String lookGenre);

	/**
	 * �ֽż������ �˻�(5������)
	 * */
	List<LookInfoVo> lookInfoSearchByNewList();
	
	/** search */
	List<LookInfoVo> enterSearch(LookInfoVo lookInfoVo, String searchYear, String searchMonth, String sort);
}