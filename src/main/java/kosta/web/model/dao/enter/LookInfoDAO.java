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
	 * ī�װ��� ���� ���Ÿ� �˻�
	 * */
	LookInfoVo lookInfoSearchByCode(String contentCode);
	
}