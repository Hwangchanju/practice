package com.spring.practice.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.practice.model.SelectTableVO;
@Repository
public class SelectTableDAOImpl implements SelectTableDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void selectKeyList(String[] keyList) {
		this.sqlSession.selectList("db_select", keyList);
		
	}
}
