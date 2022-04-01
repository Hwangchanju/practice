package com.spring.practice.dao;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class SelectTableDAOImpl implements SelectTableDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void getSelectList(HashMap<String, Object> inq_Data) {
		
		this.sqlSession.selectList("select_list", inq_Data);
		
	}
}