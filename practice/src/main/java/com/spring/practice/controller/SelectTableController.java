package com.spring.practice.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	@RequestMapping(value="select")
	public String select()
			throws Exception{
		
		return "select";
		
	}
	
	  @PostMapping(value="select_ok", produces="application/json; charset=UTF-8")
	  public @ResponseBody List<SelectTableVO> select_ok(@RequestBody HashMap<String, Object> reqData)throws Exception{
		  
			System.out.println(reqData.toString());
			
			
			
			/*
			 * System.out.println("ㅋ");
			 * 
			 * 
			 * int index = reqData.size();
			 * 
			 * for(int i=0; i<index; i++) { for(String key : reqData.keySet()) {
			 * if(reqData.get(key).equals("")) { reqData.remove(key); break; } } }
			 * 
			 * 
			 * System.out.println(reqData.toString());  > 받아온 맵에 밸류는 없고 키만 있는 경우 해당 키 값 삭제
			 */
			
			
			  List<SelectTableVO> resultList = new ArrayList<SelectTableVO>(); 
			
			  if(!(reqData.get("mbr_phone").equals(""))) { 
				  
				  String replacePhone = (String)(reqData.get("mbr_phone"));
				  System.out.println("1번 : " + replacePhone);
				  replacePhone = replacePhone.replaceAll("-", "");
				  System.out.println("2번 : " + replacePhone);
					/* System.out.println("3번" + reqData.get("mbr_phone")); */
				  
				  reqData.replace("mbr_phone", (Object)replacePhone);
				  System.out.println("4번 : " + reqData.get("mbr_phone"));
			  }
			  
			  resultList = stService.getSelectList(reqData);
			  
			  System.out.println("주문번호 ::::: " +resultList);
			  for(int i=0; i<resultList.size(); i++) {
				  System.out.print(resultList.get(i).getBzpp_order_no()+ " ");
				  System.out.println();
			  }
			  
			  System.out.println(resultList);
			  
			  return resultList;
			 
			
			
	  
	  }
	  	
}