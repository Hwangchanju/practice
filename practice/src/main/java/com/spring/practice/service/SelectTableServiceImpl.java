package com.spring.practice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.practice.dao.SelectTableDAO;
import com.spring.practice.model.SelectTableVO;
@Service
public class SelectTableServiceImpl implements SelectTableService {

	@Autowired
	private SelectTableDAO stDAO;
}
