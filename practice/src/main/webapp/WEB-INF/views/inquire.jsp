<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 데이터 조회 </title>
</head>
<script>

	function validChk(){
		
		/* var boundsKor = /^[가-힣]*$/;
		
		var form = document.inquire;
		
		var mbr_nm = form.mbr_nm.value;
		var bzpp_order_no = form.bzpp_order_no.value;
		var bzpp_nm = form.bzpp_nm.value;
		var mbr_phone = form.mbr_phone1.value + "-" + form.mbr_phone2.value + "-" + form.mbr_phone3.value;
		var pdt_nm = form.pdt_nm.value;
		var pdt_no = form.pdt_no.value;
		var del_yn = form.del_yn.value;
		
		if(!boundsKor.test(mbr_nm)){
			alert("회원명에 한글만 입력해주세요!");
			form.mbr_nm.focus();
			return;
		}
		
		if(!boundsKor.test(bzpp_nm)){
			alert("사업자명에 한글만 입력해주세요!");
			form.bzpp_nm.focus();
			return;
		}
		
		if(!boundsKor.test(pdt_nm)){
			alert("제품명에 한글만 입력해주세요!");
			form.pdt_nm.focus();
			return;
		} */
		
	}
</script>
<body>
<form name="inquire" method="post" action="inquire_ok" enctype="multipart/form-data">
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
	<p><input type="button" value="조회" onclick="validChk()"></p>
</form>
</body>
</html>