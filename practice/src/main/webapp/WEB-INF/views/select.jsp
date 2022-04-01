<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 데이터 조회 </title>
<script src="./resources/jquery.js"></script>
</head>
<script>

	
	function validChk(){
		alert("start");
		
		var form = document.select;
		var mbr_nm = form.mbr_nm.value;
		var bzpp_order_no = form.bzpp_order_no.value;
		var bzpp_nm = form.bzpp_nm.value;
		var pdt_nm = form.pdt_nm.value;
		var pdt_no = form.pdt_no.value;
		var del_yn = form.del_yn.vlaue;
		
		var mbr_phone1 = form.mbr_phone1.value;
		var mbr_phone2 = form.mbr_phone2.value;
		var mbr_phone3 = form.mbr_phone3.value;
		
		if(mbr_phone2 !== null && mbr_phone3 !== null){
			mbr_phone1 += mbr_phone2 + mbr_phone3;
		}else if(mbr_phone2 === null && mbr_phone3){
			mbr_phone1 = null;
		}else if(mbr_phone2 === null){
			mbr_phone1 += "%%%%" + mbr_phone3;
		}else{
			mbr_phone1 += mbr_phone2 + "%";
		}
		
		
		
/* 		let body = new Map([
			["mbr_nm", $('input[name="mbr_nm"]').val()]
			, ["bzpp_order_no", $('input[name="bzpp_order"]').val()]
			, ["bzpp_nm", $('input[name="bzpp_nm"]').val()]
			, ["mbr_phone", mbr_phone1]
			, ["pdt_nm", $('input[name="pdt_nm"]').val()]
			, ["pdt_no", $('input[name="pdt_no"]').val()]
			, ["del_yn", $('input[name="del_yn"]').val()]
		]);
		
		for(let bodyKey of body.keys()){
			if(!body.get(bodyKey)){
				body.delete(bodyKey);
			}
		} */
		
		$.ajax({
			type:"get"
			, url:"select_ok"
			, dataType:"json"
			, data:{
				/* "mbr_nm":$('input[name="mbr_nm"]').val()
				"bzpp_order_no":$('input[name="bzpp_order"]').val()
				"bzpp_nm":$('input[name="bzpp_nm"]').val()
				"mbr_phone":mbr_phone1
				"pdt_nm":$('input[name="pdt_nm"]').val()
				"pdt_no":$('input[name="pdt_no"]').val()
				"del_yn":$('input[name="del_yn"]').val() */
				
				"mbr_nm":mbr_nm
				, "bzpp_order_no":bzpp_order_no
				, "bzpp_nm":bzpp_nm
				, "mbr_phone":mbr_phone
				, "pdt_nm":pdt_nm
				, "pdt_no":pdt_no
				, "del_yn":del_yn
			}
			, headers:{
				"Content-Type":"json/application"
			},
			success:function(obj){
				getSelectListCallback(obj);
			},
			error:function(){
				alert("실패");
				console.log(error);
			}
		});
		
		function getSelectListCallback(obj){
			
			var = listS = obj;
			var = listSLen = obj.length;
			
			console.log(listS);
			
			var strS = "";
			
			if(listSLen > 0){
				for(var a=0; a<listSLen; a++){
					var mbr_nm = listS[a]?.mbr_nm;
					var bzpp_order_no = listS[a]?.bzpp_order_no;
					var bzpp_nm = listS[a]?.bzpp_no;
					var mbr_phone = listS[a]?.mbr_phone;
					var pdt_nm = listS[a]?.pdt_nm;
					var pdt_no = listS[a]?.pdt_no;
					var del_yn = listS[a]?.del_yn;
					
					strS += "<p>회원명 : " + mbr_nm;
					strS += "주문번호 : " + bzpp_order_no;
					strS += "사업자명 : " + bzpp_nm;
					strS += "휴대폰번호 : " + mbr_phone;
					strS += "제품명 : " + pdt_nm;
					strS += "제품번호 : " + pdt_no;
					strS += "삭제유무 : " + del_yn;
					strS += "</p>";
				}
			}
			
			$(".result").html(strS);
		}
		
	}
	
	
	
</script>
<body>
	<form name="select" action="select_ok">
	<p>
	회원명 : <input type="text" name="mbr_nm" maxlength="20" onKeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/g,'');">
	주문번호 : <input type="text" name="bzpp_order_no" maxlength="6" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
	사업자명 : <input type="text" name="bzpp_nm" maxlength="20" onKeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/g,'');">
	회원휴대폰번호 : <select name="mbr_phone1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
	</select>
	- <input type="text" name="mbr_phone2" maxlength="4" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
	- <input type="text" name="mbr_phone3" maxlength="4" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
	</p>
	<p>
	제품명 : <input type="text" name="pdt_nm">
	제품번호 : <input type="text" name="pdt_no" maxlength="10" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
	삭제유무 : <select name="del_yn">
		<option value="Y">Y</option>
		<option value="N">N</option>
	</select>
	</p>
	<p><!-- <input type="button" value="조회" onclick="validChk().submit();"> -->
	<input type="submit" value="조회" onclick="validChk()"></p>
	</form>
	<div class="result"></div>
</body>
</html>