package com.spring.practice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.practice.dao.SelectTableDAO;
import com.spring.practice.model.SelectTableVO;
@Service
public class SelectTableServiceImpl implements SelectTableService {

	@Autowired
	private SelectTableDAO stDAO;

	@Override
	public List<SelectTableVO> getSelectList(HashMap<String, Object> inq_Data) {

		return this.getSelectList(inq_Data);
	}
}
