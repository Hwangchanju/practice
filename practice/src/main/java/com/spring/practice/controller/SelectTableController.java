package com.spring.practice.controller;

import java.util.List;

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
	
	@RequestMapping("/inquire")
	public String inquire(Model listM, HttpServletRequest request, HttpServletResponse response, @ModelAttribute SelectTableVO stVO, HttpSession session)
			throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		
		String[] slist = {"mbr_nm", "bzpp_order_no", "bzpp_nm", "mbr_phone", "pdt_nm", "pdt_no", "del_yn"};
			
		stVO.setMbr_nm(request.getParameter("mbr_nm"));
		stVO.setBzpp_order_no(request.getParameter("bzpp_order_no"));
		stVO.setBzpp_nm(request.getParameter("bzpp_nm"));
		stVO.setMbr_phone(request.getParameter("mbr_phone1")+request.getParameter("mbr_phone2")+request.getParameter("mbr_phone3"));
		stVO.setPdt_nm(request.getParameter("pdt_nm"));
		stVO.setPdt_no(request.getParameter("pdt_no"));
		stVO.setDel_yn(request.getParameter("del_yn"));
		
		String[] stlist = new String[7];
		
		stlist[0] = stVO.getMbr_nm();
		stlist[1] = stVO.getBzpp_order_no();
		stlist[2] = stVO.getBzpp_nm();
		stlist[3] = stVO.getMbr_phone();
		stlist[4] = stVO.getPdt_nm();
		stlist[5] = stVO.getPdt_no();
		stlist[6] = stVO.getDel_yn();
		boolean[] clist = new boolean[7];
		
		for(int i=0; i<stlist.length; i++) {
			if(i==3) {
				if(stlist[i]=="010" || stlist[i] == "011" || stlist[i] == )
			}else if(i==6) {
				
			}else {
				
			}
		}
		
		
		
		
		

		
		
		
		
		return "inquire";
		
	}
	
//	@RequestMapping("/inquire_ok")
//	public List<SelectTableVO> inquire_ok(){
//		
//		
//		
//		return;
//	}
	
	
}
