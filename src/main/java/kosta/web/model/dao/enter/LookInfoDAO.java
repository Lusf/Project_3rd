package kosta.web.model.dao.enter;

import java.util.List;

import kosta.web.model.vo.enter.LookInfoVo;

public interface LookInfoDAO {
	
/*	 * lookInfoInsert - 볼거리등록
	 * lookInfoUpdate - 볼거리수정 
	 * lookInfoDelete - 볼거리삭제 
	 * lookInfoSearch - 볼거리 검색(부분/전체)*/
	
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
	 * 볼거리 검색(전체)
	 * */
	List<LookInfoVo> lookInfoSearch(LookInfoVo lookInfoVo);
	
	/**
	 * 컨텐츠코드에 따른 볼거리 검색
	 * */
	LookInfoVo lookInfoSearchByCode(String contentCode);
	
	/**
	 * 카테고리에 따른 검색
	 * */
	List<LookInfoVo> lookInfoSearchByCate(String lookCate);

	/**
	 * 장르에 따른 검색
	 * */
	List<LookInfoVo> lookInfoSearchByGenre(String lookGenre);

	/**
	 * 최신순서대로 검색(5개이하)
	 * */
	List<LookInfoVo> lookInfoSearchByNewList();
	
	/** search */
	List<LookInfoVo> enterSearch(LookInfoVo lookInfoVo, String searchYear, String searchMonth, String sort);
}