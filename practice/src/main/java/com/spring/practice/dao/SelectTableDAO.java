package com.spring.practice.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.practice.model.SelectTableVO;

public interface SelectTableDAO {

	List<SelectTableVO> getSelectList(HashMap<String, Object> reqData);

}
