package com.spring.practice.controller;

import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value="/inquire")
	public String inquire(HttpServletRequest request, HttpServletResponse response)
			throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		
		HashMap<String, String> voMap = new HashMap<String, String>(7);
		
		String mbr_phone1 = request.getParameter("mbr_phone1");
		String mbr_phone2 = request.getParameter("mbr_phone2");
		
		String mbr_phone;
		
		if(mbr_phone1 == null && mbr_phone2 == null) {
			mbr_phone = "";
		}else if(mbr_phone1 == null) {
			mbr_phone = "%" + mbr_phone2;
		}else {
			mbr_phone = mbr_phone1 + "%";
		}

		voMap.put("mbr_nm", request.getParameter("mbr_nm"));
		voMap.put("bzpp_order_no", request.getParameter("bzpp_order_no"));
		voMap.put("bzpp_nm", request.getParameter("bzpp_nm"));
		voMap.put("mbr_phone", mbr_phone);
		voMap.put("pdt_nm", request.getParameter("pdt_nm"));
		voMap.put("pdt_no", request.getParameter("pdt_no"));
		voMap.put("del_yn", request.getParameter("del_yn"));
		
		String[] keyList = new String[voMap.size()];
		
		Iterator<String> iter = voMap.keySet().iterator();
		
		while(iter.hasNext()) {
			int index = 0;
			
			keyList[index] = iter.next();
			index++;
		}
		
		for(int i=0; i<voMap.size(); i++) {
			if(voMap.containsKey(keyList[i])) {
				continue;
			}else {
				keyList[i] = null;
			}
		}
		
		this.stService.selectKeyList(keyList);
		
		return "inquire";
		
	}
}
	
//	@RequestMapping("/inquire_ok")
//	public List<SelectTableVO> inquire_ok(){
//		
//		
//		
//		return;
//	}
	
	
//}
