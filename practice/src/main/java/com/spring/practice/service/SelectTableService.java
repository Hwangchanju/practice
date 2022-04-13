package com.spring.practice.service;

import java.util.HashMap;
import java.util.List;

import com.spring.practice.model.SelectTableVO;

public interface SelectTableService {

	List<SelectTableVO> getSelectList(HashMap<String, Object> reqData);

}
