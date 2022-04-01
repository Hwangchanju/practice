package com.spring.practice.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.practice.model.SelectTableVO;
import com.spring.practice.service.SelectTableService;

/*회원명	mbr_nm		varchar(20)	tbaxnm003
주문번호	bzpp_order_no	varchar(6)	tbaxbm001
사업자명	bzpp_nm		varchar(20)	tbaxbm001
폰번호	mbr_phone	varchar(11)	tbaxnm003
제품명	pdt_nm		varchar(100)	tbaxpm001
제품번호	pdt_no		varchar(10)	tbaxpm001
삭제유무	del_yn		varchar(1)	tbaxnm003*/

@Controller
public class SelectTableController {

	@Autowired
	private SelectTableService stService;
	
	@RequestMapping(value="/select")
	public String select()
			throws Exception{
		
		return "select";
		
	}
	
	  @GetMapping(value="/select_ok", produces="application/json; charset=UTF-8")
	  public List<SelectTableVO> select_ok(@RequestBody HashMap<String, Object> inq_Data){
		  
		  
		  inq_Data.forEach((key, value)->{ 
			  if(!inq_Data.containsKey(key)) {
				  inq_Data.remove(key); } 
	  });
	  
	  List<SelectTableVO> resultList = stService.getSelectList(inq_Data);
	  
	  System.out.println("resultList  ::::::" + resultList.toString());
	  
	  return resultList; }
	  
	 
	
}
	
		
 