package com.spring.practice.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.practice.model.SelectTableVO;
@Repository
public class SelectTableDAOImpl implements SelectTableDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<SelectTableVO> getSelectList(HashMap<String, Object> reqData) {
		
		return this.sqlSession.selectList("selectList", reqData);
		
	}
}