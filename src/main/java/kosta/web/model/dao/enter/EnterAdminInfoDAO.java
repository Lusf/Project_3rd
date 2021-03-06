package kosta.web.model.dao.enter;

import java.util.List;

import kosta.web.model.vo.enter.LookInfoVo;

public interface EnterAdminInfoDAO {
	List<LookInfoVo> enterInfoSearch(LookInfoVo lookInfoVo, int currentPage);
	
	int enterInfoDelete(String contentCode);
	
	int enterInfoInsert(LookInfoVo lookInfoVo);
	
	int enterInfoUpdate(LookInfoVo lookInfoVo);
}