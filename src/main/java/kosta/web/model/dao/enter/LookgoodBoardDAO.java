package kosta.web.model.dao.enter;

import java.util.List;

import kosta.web.model.vo.enter.LookgoodBoardVo;

public interface LookgoodBoardDAO {
/*	 * lookgoodBoardInsert - ���� ��õ �Խñ� ���
	 * lookgoodBoardUpdate - ���� ��õ �Խñ� ����
	 * lookgoodBoardDelete - ���� ��õ �Խñ� ����
	 * 
	 * lookgoodBoardSearchAll - ���� ��õ �Խñ� �˻�(��ü)
	 * lookgoodBoardSearchById  - ���� ��õ �Խñ� �˻�(�κ� : id)*/
	
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
	int lookgoodBoardDelete(int lgbNum);
	
	/**
	 * ���� ��õ �Խñ� �˻�(��ü)
	 * */
	List<LookgoodBoardVo> lookgoodBoardSearchAll();
	
	/**
	 * ���� ��õ �Խñ� �˻�(�κ� : id)
	 * */
	List<LookgoodBoardVo> lookgoodBoardSearchByNum(String id);
	
}
